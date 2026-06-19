# <code>NODPAPER</code>

<p><img src=".assets/asset-01.png" align="center" width="100%"></p>

Description goes here.

## Wallpaper Collection

<!-- START_BLOCK -->
<p><img src="wallpapers/node-01.avif" align="center" width="33.333333%"><img src="wallpapers/node-02.avif" align="center" width="33.333333%"><img src="wallpapers/node-03.avif" align="center" width="33.333333%"><img src="wallpapers/node-04.avif" align="center" width="33.333333%"><img src="wallpapers/node-05.avif" align="center" width="33.333333%"><img src="wallpapers/node-06.avif" align="center" width="33.333333%"><img src="wallpapers/node-07.avif" align="center" width="33.333333%"><img src="wallpapers/node-08.avif" align="center" width="33.333333%"><img src="wallpapers/node-09.avif" align="center" width="33.333333%"><img src="wallpapers/node-10.avif" width="33.333333%"><img src="wallpapers/node-11.avif" width="33.333333%"><img src="wallpapers/node-12.avif" width="33.333333%"></p>
<!-- CEASE_BLOCK -->

## Change macOS Wallpaper

```sh
address="https://github.com/olankens/nodpaper/raw/HEAD/src/node-01.avif"
picture="$HOME/Pictures/Wallpapers/$(basename "$address")"
rm -v "$HOME/Library/Application Support/com.apple.wallpaper/Store/Index.plist"
killall WallpaperAgent
mkdir -p "$(dirname "$picture")"
curl -LA "mozilla/5.0" "$address" -o "$picture"
osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"$picture\""
```