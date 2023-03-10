#!/bin/bash

cat > /app/Settings.cfg <<EOF
[PlexConnect]
enable_plexgdm = True
ip_pms = $PMS_HOST
port_pms = $PMS_PORT
enable_dnsserver = True
port_dnsserver = 53
ip_dnsmaster = $DNS_MASTER
prevent_atv_update = True
intercept_atv_icon = True
enable_plexconnect_autodetect = True
ip_plexconnect = 0.0.0.0
use_custom_dns_bind_ip = False
custom_dns_bind_ip = 0.0.0.0
hosttointercept = trailers.apple.com
icon = movie-trailers
certfile = ./assets/certificates/trailers.pem
port_webserver = 80
enable_webserver_ssl = True
port_ssl = 443
allow_gzip_atv = False
allow_gzip_pmslocal = False
allow_gzip_pmsremote = True
fanart_quality = High
loglevel = Normal
logpath = .
EOF

cat > /app/ATVSettings.cfg <<EOF
[DEFAULT]
sharedlibrariesview = List
showsynopsis = Hide
movies_navbar_decades = checked
showplayerclock = True
tv_navbar_unwatched = checked
movies_navbar_directors = checked
movies_navbar_ondeck = checked
subtitlesize = 100
transcoderaction = Auto
homevideos_navbar_byfolder = checked
tv_navbar_genres = checked
durationformat = Hours/Minutes
homevideoview = Grid
music_navbar_more = checked
homevideos_navbar_genres = checked
phototranscoderaction = Auto
libraryview = List
fanart = Hide
movies_navbar_more = checked
tv_navbar_more = checked
subtitlerenderer = Auto
music_navbar_decade = checked
overscanadjust = 0
showview = List
movieview = Grid
movies_navbar_unwatched = checked
playlistsview = List
movies_navbar_byfolder = checked
allowdeletion = No
movies_navbar_actors = checked
showendtime = True
channelview = Hide
flattenseason = False
tv_navbar_ondeck = checked
moviepreplay_bottomshelf = Extras
homevideos_navbar_ondeck = checked
plexhome_user =
dolbydigital = Off
movies_navbar_collections = checked
transcodequality = 1080p 12.0Mbps
plexhome_auth =
seasonview = List
myplex_auth =
plexhome_enable = False
showunwatched = True
sharedchannelsview = Hide
music_navbar_year = checked
clockposition = Center
myplex_user =
music_navbar_recentlyadded = checked
remotebitrate = 720p 3.0Mbps
homevideos_navbar_collections = checked
music_navbar_genre = checked
globalsearch = Show
fanart_blur = 0
audioboost = 100
timeformat = 24 Hour
homevideos_navbar_unwatched = checked
actorview = Movies
postertitles = Highlighted Only
movies_navbar_genres = checked
EOF

/usr/local/bin/python2.7 /app/PlexConnect.py
