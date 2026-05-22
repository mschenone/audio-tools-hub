---
permalink: /faq/
page_id: faq
lang: it
layout: default
title: FAQ e Aiuto
---

<div style="margin-bottom: 1rem;">
  <a href="{{ site.baseurl }}/it/" style="text-decoration: none; color: var(--text-color);">← Torna alla Home</a>
</div>

# Domande Frequenti

## Cos'è un Plugin VST/AU?

Un plugin è un software che viene eseguito all'interno di un'applicazione host (la tua DAW - Digital Audio Workstation, come Ableton, FL Studio o Logic). I plugin vengono utilizzati per generare suoni (Sintetizzatori, Campionatori) o elaborare l'audio (Effetti come Riverbero, Delay, EQ).

Esistono diversi formati di plugin, che dipendono principalmente dal sistema operativo e dalla DAW:

*   **VST (Virtual Studio Technology):** Creato da Steinberg. È il formato più comune a livello globale. Oggi si presenta in due versioni principali:
    *   **VST2 (`.dll` su Windows, `.vst` su Mac):** Lo standard più vecchio. Ancora ampiamente utilizzato, ma in fase di graduale abbandono.
    *   **VST3 (`.vst3`):** Lo standard moderno. È più efficiente in termini di CPU perché può spegnersi quando non passa alcun segnale audio.
*   **AU (Audio Units - `.component`):** Sviluppato da Apple. Questo formato è esclusivo per macOS e iOS. Logic Pro e GarageBand utilizzano *solo* plugin AU.
*   **AAX:** Sviluppato da Avid. Questo formato è esclusivo per Pro Tools.
*   **CLAP (Clever Audio Plug-in):** Uno standard open-source più recente, progettato per essere estremamente efficiente e flessibile. Il supporto sta crescendo in DAW come Bitwig e Studio One.

---

## Come Installare i Plugin

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
