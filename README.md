# AI Video Editor V2

Three Claude skills for editing short talking-head videos with Claude Code.

| Skill | What it does |
|---|---|
| `cut` | Cuts the dead air and the retakes out of your raw recording |
| `captions` | Adds captions in the same style every time |
| `sound-effects` | Puts sound effects on the moments that move |

## Install

Paste this repo's link into Claude Code and say: **Clone this and add the skills.**

Or in a terminal:

```
git clone https://github.com/Liamrjohnston/ai-video-editor-v2 ai-video-editor-v2 && bash ai-video-editor-v2/install.sh
```

You also need ffmpeg (`brew install ffmpeg` on a Mac) and a local Whisper for transcribing (`pip install faster-whisper`).

## Use it

Start a new Claude Code session and type `/cut`, `/captions` or `/sound-effects`, then give it your video.

A good order is cut, then captions, then sound effects.

Your video stays on your computer. Bring your own sound effects: only use ones you own or have a licence for.

## Licence

MIT. See [LICENSE](LICENSE).
