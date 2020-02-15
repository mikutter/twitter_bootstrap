#!/bin/sh

mkdir -p ~/.mikutter/plugin/ && for i in api_request_file_cache direct_message followingcontrol home_timeline list list_for_profile list_settings mentions message_detail_view message_favorite message_retweet ratelimit rest saved_search streaming twitter twitter_activity twitter_datasource twitter_settings user_detail_view; do git clone https://github.com/mikutter/$i.git ~/.mikutter/plugin/$i; done
