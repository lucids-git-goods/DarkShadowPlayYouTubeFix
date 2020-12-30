# Dark ShadowPlay YouTube Fix
Lets you fix ShadowPlay videos which appear too dark when uploaded to YouTube with a simple right-click menu option in Windows Explorer

If you find this useful, and wish to contribute, you can do so here:
<a href='https://ko-fi.com/lucidskofi' target='_blank'><img height='35' style='border:0px;height:46px;' src='https://az743702.vo.msecnd.net/cdn/kofi3.png?v=0' border='0' alt='Buy Me a Coffee at ko-fi.com' />


## Usage
1. Install the latest [FFmpeg](https://ffmpeg.org/)
2. [Download the fix](https://github.com/lucids-git-goods/DarkShadowPlayYouTubeFix/raw/main/release/DarkShadowPlayYoutubeFix.zip) and Unzip 
3. Copy **ffmpeg.exe** to the newly unzipped **DarkShadowPlayYoutubeFix** folder with the other files
4. Run **InstallDarkShadowPlayYouTubeFix.bat**
5. Now you can right click on any MP4 file in Windows Explorer, and choose **Fix ShadowPlayed MP4 for YouTube** (You can now also delete all of the downloaded and unzipped files)

## Credits
I just made this solution painless to use with the help of dozens of stackoverflow and superuser entries, but
credit for the ffmpeg fix goes to [Serena yu](https://support.google.com/youtube/thread/72273567?hl=en&msgid=79743480):


*"The key point is that Shadowplay generates a BT601 color matrix with a _full_ color range (0-255). This is a rare combination, since BT601 is regularly used with a _partial_ color range (16-235). Consequently, whenever YouTube sees BT601, it takes the video as a partial color range by default."*





before:

[![before](https://img.youtube.com/vi/KQZ4PNnO8Jg/0.jpg)](https://www.youtube.com/watch?v=KQZ4PNnO8Jg)


after:

[![after](https://img.youtube.com/vi/58Km9gj0xFo/0.jpg)](https://www.youtube.com/watch?v=58Km9gj0xFo)








