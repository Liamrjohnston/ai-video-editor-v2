---
name: cut
description: Cut the dead air and retakes out of a talking-head video. Use when someone gives you a raw recording of themselves talking to camera and wants it tightened.
---

# Cut

1. Ask for the video file if you don't have it.
2. Make sure `ffmpeg` is installed. If it isn't, ask before installing it.
3. Transcribe the video on this computer with Whisper (whisper.cpp or faster-whisper) and get word timings. Don't upload the video anywhere.
4. Read the transcript. If a line was said more than once, keep the best complete take and remove the others. Remove false starts and anything not meant for the video, like "take two" or talking to someone off camera.
5. Find the pauses with ffmpeg's `silencedetect` filter, for example `-af silencedetect=n=-40dB:d=0.4`. Remove pauses longer than about 0.4 seconds.
6. Leave a little room before and after each phrase so the ends of words don't get cut off.
7. Show the user the final script before you render it. Put anything back they ask for.
8. Export the cut as an MP4 with ffmpeg next to the original video.
9. Tell the user the old length, the new length and what you removed. Ask them to watch it before posting.
