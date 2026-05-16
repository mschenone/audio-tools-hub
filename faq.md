---
layout: default
title: FAQ & Help
---

# Frequently Asked Questions

## How to Install Plugins

### Windows
1. Unzip the downloaded file.
2. For VST3: Copy the `.vst3` file to `C:\Program Files\Common Files\VST3`.
3. For VST2: Copy the `.dll` file to your custom VST folder (e.g., `C:\Program Files\VSTPlugins`).

### Mac (macOS)
1. Open the downloaded `.zip` or `.dmg`.
2. VST/VST3: Copy files to `Macintosh HD/Library/Audio/Plug-Ins/VST/` or `VST3/`.
3. Audio Units (AU): Copy `.component` files to `Macintosh HD/Library/Audio/Plug-Ins/Components/`.

### Linux
1. Extract the downloaded archive.
2. Copy `.so` files to `~/.vst`, `~/.vst3`, or `/usr/lib/vst`.
3. Ensure your DAW is set to scan these hidden directories.

### iOS (iPad / iPhone)
1. Standard VSTs do not work on iOS. You need **AUv3** plugins.
2. Download AUv3 plugins directly from the Apple App Store.
3. Open a host app (like GarageBand or AUM) and load them as Audio Unit extensions.

### Android
1. Standard VSTs do not work on Android.
2. Plugin support depends entirely on the mobile DAW (e.g., FL Studio Mobile, Cubasis). You must buy or download formats specific to those apps via the Google Play Store.

---

## How to Use Plugins in Your DAW

### Ableton Live
1. Go to **Options > Preferences** (Windows) or **Live > Settings** (Mac).
2. Go to the **Plug-ins** tab.
3. Turn on "Use VST2 / VST3 Plug-In Custom Folder" and set your folder.
4. Click **Rescan**.
5. Open the Ableton Browser (left panel), click **Plug-ins**, and drag the effect/synth onto a MIDI or Audio track.

### GarageBand (Mac)
1. Go to **GarageBand > Settings > Audio/MIDI**.
2. Ensure **Enable Audio Units** is checked.
3. Select a track, then open **Smart Controls** (press `B`).
4. In the Plug-ins section, click the up/down arrows next to an empty slot, navigate to **Audio Units**, and select your plugin.

### Reaper
1. Go to **Options > Preferences** (press `Ctrl+P` or `Cmd+P`).
2. Scroll down to **Plug-ins > VST**.
3. Click **Edit path list...** and add your plugin folders.
4. Click **Re-scan**.
5. Click the **FX** button on any track and search for your new plugin in the list.
