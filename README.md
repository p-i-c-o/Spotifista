# Spotifista

Spotifista is a Spotify Download tool.\
It lets you mass download songs from Spotify.

## How it works 🔎
Spotifista *technically* doesn't work via Spotify, but works with YouTube. It takes song titles and song artists from a csv file with your Spotify
playlist. It then searches them up on YouTube and downloads them as MP3s!




## Installation ⚙️

1. Fork/Clone/Download this repo
    
    `git clone https://github.com/p-i-c-o/Spotifista`
    
2. Navigate to the directory
    
    `cd Spotifista`
    
3. Download youtube-dl    (it is required to run the main script)
    
    Go to https://ytdl-org.github.io/youtube-dl/download.html to read up
   
   
## Usage 🛠️
1. Get your Spotify playlist CSV

    Go to https://watsonbox.github.io/exportify/
    
    Log in to your spotify account
    
    Export your playlist of choice
    
    
2. Prepare CSV

    Move your CSV to the Spotifista folder
    
    Rename it to something shorter
    
    
3. Run main script

    `bash main.sh`
