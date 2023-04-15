#!/bin/bash

api="https://rickandmortyapi.com/api"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_all_characters() {
	# 1 - page: (integer): <page number - default: 1>
	curl --request GET \
		--url "$api/character/?page=${1:-1}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_character_by_id() {
	# 1 - character_id: (integer): <character_id>
	curl --request GET \
		--url "$api/character/$1" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_all_locations() {
	# 1 - page: (integer): <page number - default: 1>
	curl --request GET \
    --url "$api/location/?page=${1:-1}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_location_by_id() {
	# 1 - location_id: (integer): <location_id>
	curl --request GET \
		--url "$api/location/$1" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_all_episodes() {
	# 1 - page: (integer): <page number - default: 1>
	curl --request GET \
		--url "$api/episode/?page=${1:-1}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_episode_by_id() {
	# 1 - episode_id: (integer): <episode_id>
	curl --request GET \
		--url "$api/episode/$1" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}
