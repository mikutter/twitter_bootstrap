#!/bin/sh

branch=$1
if [ "$branch" = "mikutter4" ]; then
 opt="--branch mikutter4"
else
 opt=""
fi

plugindir=~/.mikutter/plugin
mkdir -p $plugindir

# GTK and diva independent plugins
for plugin in \
 api_request_file_cache \
 direct_message \
 home_timeline \
 list \
 mentions \
 message_favorite \
 ratelimit \
 rest \
 saved_search \
 streaming \
 twitter_activity \
 twitter_datasource \
 twitter_settings \
; do
 git clone https://github.com/mikutter/$plugin.git $plugindir/$plugin
done

# GTK and diva dependent plugins
for plugin_gtk in \
 followingcontrol \
 list_for_profile \
 list_settings \
 message_detail_view \
 message_retweet \
 user_detail_view \
 twitter \
; do
 git clone https://github.com/mikutter/$plugin_gtk.git $opt $plugindir/$plugin_gtk
done
