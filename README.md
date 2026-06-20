# DEVPAPER

<p><img src=".assets/preview-01.avif" align="center" width="100%"></p>

Wallpapers dedicated to software development enthusiasts featuring images scraped from the AppSignal blog and then carefully upscaled to a much higher resolution using the upscayl-bin executable program.

## Node Wallpapers

<!-- START_NODE -->
<p><a href="wallpapers/node-01.avif"><img src=".assets/thumbnail-node-01.avif" align="center" width="25%"></a><a href="wallpapers/node-02.avif"><img src=".assets/thumbnail-node-02.avif" align="center" width="25%"></a><a href="wallpapers/node-03.avif"><img src=".assets/thumbnail-node-03.avif" align="center" width="25%"></a><a href="wallpapers/node-04.avif"><img src=".assets/thumbnail-node-04.avif" align="center" width="25%"></a><a href="wallpapers/node-05.avif"><img src=".assets/thumbnail-node-05.avif" align="center" width="25%"></a><a href="wallpapers/node-06.avif"><img src=".assets/thumbnail-node-06.avif" align="center" width="25%"></a><a href="wallpapers/node-07.avif"><img src=".assets/thumbnail-node-07.avif" align="center" width="25%"></a><a href="wallpapers/node-08.avif"><img src=".assets/thumbnail-node-08.avif" align="center" width="25%"></a><a href="wallpapers/node-09.avif"><img src=".assets/thumbnail-node-09.avif" align="center" width="25%"></a><a href="wallpapers/node-10.avif"><img src=".assets/thumbnail-node-10.avif" align="center" width="25%"></a><a href="wallpapers/node-11.avif"><img src=".assets/thumbnail-node-11.avif" align="center" width="25%"></a><a href="wallpapers/node-12.avif"><img src=".assets/thumbnail-node-12.avif" align="center" width="25%"></a><a href="wallpapers/node-13.avif"><img src=".assets/thumbnail-node-13.avif" align="center" width="25%"></a><a href="wallpapers/node-14.avif"><img src=".assets/thumbnail-node-14.avif" align="center" width="25%"></a><a href="wallpapers/node-15.avif"><img src=".assets/thumbnail-node-15.avif" align="center" width="25%"></a><a href="wallpapers/node-16.avif"><img src=".assets/thumbnail-node-16.avif" align="center" width="25%"></a><a href="wallpapers/node-17.avif"><img src=".assets/thumbnail-node-17.avif" align="center" width="25%"></a><a href="wallpapers/node-18.avif"><img src=".assets/thumbnail-node-18.avif" align="center" width="25%"></a><a href="wallpapers/node-19.avif"><img src=".assets/thumbnail-node-19.avif" align="center" width="25%"></a><a href="wallpapers/node-20.avif"><img src=".assets/thumbnail-node-20.avif" align="center" width="25%"></a><a href="wallpapers/node-21.avif"><img src=".assets/thumbnail-node-21.avif" width="25%"></a><a href="wallpapers/node-22.avif"><img src=".assets/thumbnail-node-22.avif" width="25%"></a><a href="wallpapers/node-23.avif"><img src=".assets/thumbnail-node-23.avif" width="25%"></a><a href="wallpapers/node-24.avif"><img src=".assets/thumbnail-node-24.avif" width="25%"></a></p>
<!-- CEASE_NODE -->

## Python Wallpapers

<!-- START_PYTHON -->
<p><a href="wallpapers/python-01.avif"><img src=".assets/thumbnail-python-01.avif" align="center" width="25%"></a><a href="wallpapers/python-02.avif"><img src=".assets/thumbnail-python-02.avif" align="center" width="25%"></a><a href="wallpapers/python-03.avif"><img src=".assets/thumbnail-python-03.avif" align="center" width="25%"></a><a href="wallpapers/python-04.avif"><img src=".assets/thumbnail-python-04.avif" align="center" width="25%"></a><a href="wallpapers/python-05.avif"><img src=".assets/thumbnail-python-05.avif" width="25%"></a><a href="wallpapers/python-06.avif"><img src=".assets/thumbnail-python-06.avif" width="25%"></a><a href="wallpapers/python-07.avif"><img src=".assets/thumbnail-python-07.avif" width="25%"></a><a href="wallpapers/python-08.avif"><img src=".assets/thumbnail-python-08.avif" width="25%"></a></p>
<!-- CEASE_PYTHON -->

## Change macOS Wallpaper

```sh
address="https://github.com/olankens/devpaper/raw/HEAD/wallpapers/node-01.avif"
picture="$HOME/Pictures/Wallpapers/$(basename "$address")"
rm -v "$HOME/Library/Application Support/com.apple.wallpaper/Store/Index.plist"
killall WallpaperAgent
mkdir -p "$(dirname "$picture")"
curl -LA "mozilla/5.0" "$address" -o "$picture"
osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"$picture\""
```
