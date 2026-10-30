---
name: sound-effects
description: Add sound effects to a short video. Use when someone wants sounds on the cuts, text pop-ups or other moments in their video.
---

# Sound effects

1. Ask for the video file and a folder of sound effects. Only use sounds the user owns or has a licence for. Don't download sounds from other people's videos.
2. Watch for the moments that move: cuts, zooms, text appearing, clicks and typing on screen. Write a list with the time of each one.
3. Pick a sound that matches each moment. A whoosh for a transition, a click for a click, a pop for text appearing.
4. Don't use the same sound over and over. Mix it up.
5. Keep the sounds quieter than the voice so the talking is always clear.
6. Add them with ffmpeg: delay each sound to its time with `adelay`, lower its volume, then mix everything with `amix`.
7. Export a new MP4 next to the original and list the sounds you used with their times.
