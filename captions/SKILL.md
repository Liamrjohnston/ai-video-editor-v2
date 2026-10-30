---
name: captions
description: Add captions to a video in the same style every time. Use when someone wants captions on a talking-head video.
---

# Captions

1. Ask for the video file if you don't have it.
2. Look for `caption-style.txt` in the same folder as the video. If it's there, use it. If not, ask the user for a font, size, colour and position, then save their answers to `caption-style.txt` so every video looks the same.
3. Transcribe the video on this computer with Whisper and get word timings.
4. Split the words into short captions of a few words each, on one line. Break at natural pauses.
5. Write the captions to an `.srt` file next to the video.
6. If ffmpeg can burn in subtitles (it has the `subtitles` filter), make a copy of the video with the captions burned in using the saved style. If it can't, give the user the `.srt` file to drop into CapCut, Premiere or Instagram's editor.
7. Check the captions match what was said and that nothing runs off the edge of the screen.
