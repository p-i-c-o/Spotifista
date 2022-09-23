#!usr/bin/env bash
clear
echo Please enter the filename of the exported CSV file from Exportify
read sprfile

awk -F "," '{print $2" "$3}' $sprfile >> templist.txt                                               #Gets song names and artist names
sed '1d' templist.txt > list.txt                                                                    #Puts them into list.txt


declare -i SongNum
SongNum=0

file="list.txt"
PWD=$(pwd)
{mkdir Music} &> /dev/null

TotSongNum=$(wc -l < $file)

while read -r line; do
    SongNum+=1
    echo -n '[ '$SongNum '/'$TotSongNum' ]' $line
    ID=$(youtube-dl "ytsearch:$line" --get-id)                                                      #Finds URL from song title
    URL=youtube.com/watch?v=$ID                                                                     #Formats URL into usable link
    {
    youtube-dl --output "$PWD/Music/%(title)s.%(ext)s" --extract-audio --audio-format mp3 $URL      #Downloads song from URL
    } &> /dev/null
    echo -n "    ✔"
    echo ''
done <$file                                                                                         #End
