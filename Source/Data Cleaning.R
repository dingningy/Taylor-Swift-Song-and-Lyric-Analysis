### Data Cleaning and Transformation

## Load the required libraries
install.packages("tidyverse")
library(tidyverse)

## Read in the raw data
raw.ts.spotify <- read_csv("data/ts.spotify.raw.csv")

## Delete unnecessary columns
raw.ts.spotify <- raw.ts.spotify %>% 
  select(-c("id", "uri","duration_ms", "instrumentalness")) # Delete instrumentalness because corresponding value for each song is too small

## Rename columns
raw.ts.spotify <- raw.ts.spotify %>% 
  select (`...1`,
          `name`,
  everything() # Remain all other columns
) %>%
  rename(id = `...1`,
         track_name = `name`)

## Reorder columns
raw.ts.spotify <- raw.ts.spotify %>% 
  relocate (track_number, .after = track_name)

## Replace ID with numbers from 1 to 582
raw.ts.spotify$id <- seq(1, nrow(raw.ts.spotify))


# Separate the release_date column into year and month
raw.ts.spotify <- raw.ts.spotify %>%
  separate(release_date, into = c("release_year", "release_month", "day"), sep = "/", remove = FALSE) %>%
  mutate(
    release_year = as.factor(release_year),
    release_month = as.factor(release_month)  
  ) %>%
  select(-day, -release_date)  

# Convert month numbers to names
raw.ts.spotify <- raw.ts.spotify %>%
  mutate(
    release_month = fct_recode(release_month,
                               "January" = "1",
                               "February" = "2",
                               "March" = "3",
                               "April" = "4",
                               "May" = "5",
                               "June" = "6",
                               "July" = "7",
                               "August" = "8",
                               "September" = "9",
                               "October" = "10",
                               "November" = "11",
                               "December" = "12"))


# Change the data type of the columns
raw.ts.spotify <- raw.ts.spotify %>%
  mutate(
    id = as.character(id),
    track_number = as.factor(track_number),
    release_month = as.factor(release_month))


# Round the numeric columns to 3 decimal places
raw.ts.spotify <- raw.ts.spotify %>%
  mutate(across(where(is.numeric), ~round(., 3)))
         
# Add a column to distinguish albums before and after Taylor signed off from Big Machine Records
raw.ts.spotify <- raw.ts.spotify %>%
  mutate(
    album_label = case_when(
      as.numeric(levels(release_year)[release_year]) < 2019 ~ "Big Machine",
      as.numeric(levels(release_year)[release_year]) >= 2019 ~ "Republic",
      TRUE ~ NA_character_ 
    ) %>% factor(levels = c("Big Machine", "Republic"))
  ) %>% 
  relocate(album_label, .after = album)

# Write out the cleaned and transformed data for data analysis
write_csv(raw.ts.spotify, "data/ts.spotify.csv")







