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

## Come Installare i Plugin

### Windows
1. Estrai il file scaricato (.zip).
2. Per VST3: Copia il file `.vst3` in `C:\Program Files\Common Files\VST3`.
3. Per VST2: Copia il file `.dll` nella tua cartella VST personalizzata (es. `C:\Program Files\VSTPlugins`).

### Mac (macOS)
1. Apri il file `.zip` o `.dmg` scaricato.
2. VST/VST3: Copia i file in `Macintosh HD/Libreria/Audio/Plug-Ins/VST/` o `VST3/`.
3. Audio Units (AU): Copia i file `.component` in `Macintosh HD/Libreria/Audio/Plug-Ins/Components/`.

### Linux
1. Estrai l'archivio scaricato.
2. Copia i file `.so` in `~/.vst`, `~/.vst3` o `/usr/lib/vst`.
3. Assicurati che la tua DAW sia impostata per scansionare queste directory nascoste.

### iOS (iPad / iPhone)
1. I VST standard non funzionano su iOS. Hai bisogno di plugin **AUv3**.
2. Scarica i plugin AUv3 direttamente dall'App Store di Apple.
3. Apri un'app host (come GarageBand o AUM) e caricali come estensioni Audio Unit.

### Android
1. I VST standard non funzionano su Android.
2. Il supporto per i plugin dipende interamente dalla DAW mobile (es. FL Studio Mobile, Cubasis). Devi acquistare o scaricare formati specifici per quelle app tramite il Google Play Store.

---

## Come Usare i Plugin nella tua DAW

### Ableton Live
1. Vai su **Opzioni > Preferenze** (Windows) o **Live > Impostazioni** (Mac).
2. Vai alla scheda **Plug-ins**.
3. Attiva "Usa cartella personalizzata Plug-In VST2 / VST3" e imposta la tua cartella.
4. Clicca su **Riscansiona** (Rescan).
5. Apri il Browser di Ableton (pannello a sinistra), clicca su **Plug-ins** e trascina l'effetto/synth su una traccia MIDI o Audio.

### GarageBand (Mac)
1. Vai su **GarageBand > Impostazioni > Audio/MIDI**.
2. Assicurati che **Abilita Audio Units** sia selezionato.
3. Seleziona una traccia, quindi apri gli **Smart Controls** (premi `B`).
4. Nella sezione Plug-ins, clicca sulle frecce su/giù vicino a uno slot vuoto, vai su **Audio Units** e seleziona il tuo plugin.

### Reaper
1. Vai su **Opzioni > Preferenze** (premi `Ctrl+P` o `Cmd+P`).
2. Scorri verso il basso fino a **Plug-ins > VST**.
3. Clicca su **Modifica elenco percorsi...** (Edit path list) e aggiungi le cartelle dei tuoi plugin.
4. Clicca su **Riscansiona** (Re-scan).
5. Clicca sul pulsante **FX** su qualsiasi traccia e cerca il tuo nuovo plugin nell'elenco.
