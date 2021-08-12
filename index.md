---
title: MyBackupify
header-includes: |
    <script data-external="1" type="text/javascript" src="config.json"></script>
    <script data-external="1" type="text/javascript" src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script data-external="1" type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.2/underscore-min.js"></script>
    <link data-external="1" href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
include-after: |
    <script type="text/javascript" src="smb.js"></script>
---

```{=html}
<div class="container">
    <div class="heading">
        <span class="title-bold">Spot</span><span class="title-light">My</span><span class="title-bold">Backup</span>
        <br/>
        <br/>
        <div id="pnlLoggedOut">
            <span><b>Export</b> your playlists and tracks setup into a file by a single click. <b>Import</b> the file to restore your setup at any time.</span>
            <br/>
            <br/>
            <button id="login" class="button-main button-big">Login with Spotify</button>
        </div>
    </div>
    <div id="pnlLoadingAccount" style="font-size: 16px; display: none;" class="heading">
        <div class="title-medium">Account: <span id="userName"></span></div>
        <br/>
        <div id="loadingPlaylists"></div>
        <div id="loadingTracks"></div>
        <br/>
        <div id="loadingTitle"></div>
    </div>
    <div id="pnlAction" style="overflow: hidden; display: none;">
        <br/>
        <div style="width: 50%; float: left;">
            <button id="btnExport" class="button-main button-medium">Export</button>
        </div>
        <div style="width: 50%; float: left;">
            <button id="btnImport" class="button-main button-medium">Import</button>
        </div>
    </div>
    <div id="pnlImport" style="font-size: 16px; overflow: hidden; display: none;" class="heading">
        <div id="pnlFile" style="">
            <div style="float: left;">Select a previously exported file</div>
            <input style="float: left; margin-left: 10px;" type="file" id="fileImport" />
        </div>
        <div id="pnlFileInfo" style="display: none;">
            <div class="title-medium">File: <span id="fileName"></span></div>
            <br/>
            <div id="filePlaylists"></div>
            <div id="fileTracks"></div>
        </div>
    </div>
    <div id="pnlUpload" style="font-size: 16px; overflow: hidden; display: none;" class="heading">
        <div class="title-medium">Importing new playlists and tracks</div>
        <br/>
        <div><span>Processed playlists: </span><span id="playlistStep"></span>/<span id="playlistTotal"></span></div>
        <div><span>Processed tracks: </span><span id="trackStep"></span>/<span id="trackTotal"></span></div>
        <br/>
        <div id="globalStep"></div>
        <div class="progress">
            <div id="progressBar" class="progress-bar" style="display: none;"></div>
        </div>
    </div>
</div>
```
