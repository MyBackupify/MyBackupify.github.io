# MyBackupify

Backup and Restore your Spotify Playlists and "My Music".

This javascript based app allows you to backup all your playlists and import them in any other Spotify Account. It uses the OAuth-Functionality of Spotify to be able to handle your personal playlists. 

In consequence, no credentials or data is stored or processed on the Webserver itself.

You can use it at <https://mybackupify.github.io> or on your own webserver (see Q&A).

The following Q&A is copied directly from <https://github.com/secuvera/MyBackupify/wiki>.

## Q&A

_Q: Are there any limitations?_

A: Yes. The Web-API let's you backup the "starred" playlist. But it does not support starred playlists to be filled with tracks in the current state (see https://developer.spotify.com/web-api/get-list-users-playlists/#comment-1701224747). Therefore your starred playlist will be named "importedStarred". In Spotify you can mark all tracks and add them to the Spotify starred playlist. Et voilà.

_Q: I closed my browser during importing the backup. Can I restart?_

A: Just do as you did before. MyBackupify will only import missing items. Be sure to always start in a clean browser session.

_Q: Is any information stored on the webserver?_

A: No. The whole app is Javascript-Code running in your browser. 

_Q: So why can't I just start the HTML in my Browser?_

A: Obviously you need a Spotify-Login using the Spotify OAuth-API. This API needs a "redirect to" URI. And "file:///" doesn't work.

_Q: I don't trust you guys. What can I do?_

A: Just download the project at GitHub and copy the files to your webserver. We already implemented the API to work with the URL http://localhost:8888. So if you want to, download XAMPP for example, install and run it on port 8888 locally. Copy all files to your webserver root and point your browser to http://localhost:8888/index.html. You can set it up completely on your own by creating your own app in the spotify developer's program. Be sure to use the appropriate 'client_id' and 'redirect_uri' in both HTML-Files.

_Q: Is this code available?_

A: Yep. Right here at GitHub.

_Q: I got lots of tracks in my playlists and it takes really long to upload. Is this normal?_

A: Yes. Every track is one HTTP-Request to the API. All requests are sent one after another, so we don't overload the API which might lead to errors. 

_Q: Who would need this?_

A: There are several reasons why you want to move your Spotify Data from one account to another. For example we have Premium Accounts via our Mobile Serviceprovider. If you want to move to another provider having the same Spotify Account, it's getting really time consuming. Thanks to MyBackupify we just use a new Account.

_Q: I'm missing something!_

A: We don't. But maybe just we don't know, there's something missing. So feel free to send us a ticket via GitHub.

_Q: Are you sure this thing is safe?_

A: Oh C3PO. Nope. It works like a charm in our tests, but hey: No warranty. 

_Q: Hey, are those just JSON-Objects in the Backup?_

A: Yep.

_Q: Who wrote the code?_

A: Micha Frick.

_Q: Who had the idea._

A: Somebody else. He really likes what Micha did. Thanks mate. Even though it took more than this one day you proclaimed ;)

_Q: I know the source from a different project!_

A: Yes. We used code by spotify-playlist-export (https://github.com/jal278/spotify-playlist-export) and extended it with lot's of stuff. Thanks a lot!
