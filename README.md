# Dark ShadowPlay YouTube Fix with Trimming Support (Deprecated)
### Deprecated: This fix is no longer necessary as [Nvidia has fixed the issue themselves](https://www.nvidia.com/en-us/geforce/release-notes/GFE/3_21_0/Web/gfe-v3_21_0-web-release-highlights/).  Leaving this up for a bit so anyone who comes back looking for an update knows why it's gone.





## Original ReadMe:
Lets you fix ShadowPlay videos which appear too dark when uploaded to YouTube with a simple right-click menu option in Windows Explorer

The fix is free, but if you find this useful and wish to contribute, it is much appreciated:
 <a href='https://ko-fi.com/lucidskofi' target='_blank'> <img height='35' style='border:0px;height:46px;' src='https://az743702.vo.msecnd.net/cdn/kofi3.png?v=0' border='0' alt='Buy Me a Coffee at ko-fi.com' /> 






## Usage
1. Install the latest [FFmpeg](https://ffmpeg.org/)
2. [Download the fix](https://github.com/lucids-git-goods/DarkShadowPlayYouTubeFix/releases) (just the zip file) and Unzip 
3. Either simply copy ffmpeg.exe into the **DarkShadowPlayYouTubeFix** folder, or if you prefer, [you can add FFmpeg to Windows PATH](https://youtu.be/r1AtmY-RMyQ?t=248)
4. Run **InstallDarkShadowPlayYouTubeFix.bat**
5. Now you can right click on any MP4 file in Windows Explorer, and choose **Prepare ShadowPlayed MP4 for YouTube** 
6. You can also right click on any MP4 file in Windows Explorer, and choose **Prepare and trim ShadowPlayed MP4 for YouTube**, which allows you to enter the beginning and ending timestamps to trim the video as well.
7. You can now also delete all of the downloaded and unzipped files

## Credits
I just made this solution painless to use with the help of dozens of stackoverflow and superuser entries, but
credit for the ffmpeg fix goes to [Serena yu](https://support.google.com/youtube/thread/72273567?hl=en&msgid=79743480):


*"The key point is that Shadowplay generates a BT601 color matrix with a _full_ color range (0-255). This is a rare combination, since BT601 is regularly used with a _partial_ color range (16-235). Consequently, whenever YouTube sees BT601, it takes the video as a partial color range by default."*





before:

[![before](https://img.youtube.com/vi/KQZ4PNnO8Jg/0.jpg)](https://www.youtube.com/watch?v=KQZ4PNnO8Jg)


after:

[![after](https://img.youtube.com/vi/58Km9gj0xFo/0.jpg)](https://www.youtube.com/watch?v=58Km9gj0xFo)




The trim functionality was contributed by [Mkeefeus](https://github.com/Mkeefeus)
