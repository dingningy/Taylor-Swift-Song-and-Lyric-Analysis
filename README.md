<img src = "Image/Fig 11_Tay cat.avif width="30px"># Taylor Swift: Song and Lyric Analysis


## :musical_keyboard: Repository Purpose :guitar:
This repository contains the quarto markdown that renders an HTML output, datasets, images, and sources for the mini project titled "Taylor Swift Song and Lyric Analysis" in the course From Data to Manuscript in R. The project includes two parts: 1) Spotify data analysis - Taylor as a brand; 2) Lyric sentiment analysis - Taylor as a person. Specifically, the Spotify data analysis includes descriptive analysis of album average popularity scores and music features with vivid examples. Additionally, this project incorporated casual and correlational analysis to identify factors that contribute to popularity scores, such as track number (the "miserable" track 5 analysis) and music features. For music features' predictions on popularity scores, I employed both descriptive regression (based on history data) and predictive regression (based on training data). Regarding sentiment analysis, I performed t-tests and the Wilcoxon test to examine the differences in track 5's valence scores compared with other track numbers. Sentiment analysis by using the BING lexicon and word cloud visualizations was also applied for this section. 

### :musical_score:Repository Contents
1. **Quarto Markdown**:
- [Project.qmd](./Taylor%20Swift%20Song%20and%20Lyric%20Analysis.qmd): Quarto markdown that renders an HTML output.
  
2. **Source**:
- [Data Cleaning.R](./Source/Data%20Cleaning.R): Script for cleaning and transforming raw Spotify dataset.
- [Inserted PDF in sentiment analysis interpretation](./Source/Reputation%20is%20about%20Karlie%20Kloss.pdf): A PDF explaining Taylor's sixth studio album reputation is about Karlie Kloss. 

3. **Datasets**:
- [Data](./Data/): Directory containing two original datasets, one is the Spotify dataset for popularity score predictive analysis, and the other is lyrics sorted by album for sentiment analysis. There is also a cleaned and transformed 
  dataset for the Spotify data.

4. **Visualizations**:
- [Image](./Image): Directory containing all figures used in the project.

5. **Audio & Video Materials**:
- [Audio](./Audio): Directory containing all audio and video files used in the project.

6. **Documentation**:
- [README.md](./README.md): Overview of the project, repository structure, and dataset details.
  
7. **Version Control**:
- [.gitignore](./.gitignore): Specifies intentionally untracked files to ignore.
- [R Project](./Taylor-Swift-Song-and-Lyric-Analysis.Rproj): R Project synchronized with GitHub version control. 

For questions or further information, please contact [Dingning Yang] at :e-mail:(mailto:dingningy@uchicago.edu).


## :bar_chart:Data Information

### Dataset Names

**Raw dataset:**
ts.spotify.raw.csv:[View the Dataset](./Data/raw.ts.spotify.raw.csv);
ts.lyric.csv:[View the Dataset](./Data/ts.lyric.csv)

**Cleaned and transformed dataset:**
ts.spotify.csv:[View the Dataset](./Data/ts.spotify.csv)

### Data Source
The Spotify dataset is from Kaggle [View the link](https://www.kaggle.com/datasets/jarredpriester/taylor-swift-spotify-dataset)
The lyric dataset is from GitHub [View the link](https://github.com/sagesolar/Corpus-of-Taylor-Swift)

### Size
Approximately 757 KB.

### Licensing
This dataset is for internal use only and should not be shared without permission.





