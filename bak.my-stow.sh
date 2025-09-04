#! /bin/bash
readonly DOTFILESDIR="$HOME/.dotfiles"
readonly HOMEDIR=$HOME
readonly IGNOREINDOTFILES=($0 ".git" ".gitignore")

is_ignored() {
    local search 
    for search in $IGNOREINDOTFILES; do
        [[ "$search" == "$1" ]] && return 0
    done
    return 1
}

function list_needed_links {
	local ls_all=$(ls $DOTFILESDIR)
	local ls_filtered=()
	local file
	for file in $ls_all; do
		if ! is_ignored $file; then
			ls_filtered+=$file
		fi
	done
	echo ${ls_filtered[@]}
}

function check_mode {
	echo -e "-----\nmy-stow.sh is a little script for managing your dotfiles in a manual fashion\n-----"

	read -ra needed_links_ar <<< "$(list_needed_links)"
	echo "${needed_links_ar[*]}"
	if [ ${needed_links_ar[0]} = "atest" ]; then
		echo "The following entries in your .dotfiles directory don't have corresponding symlinks in your home directory:"
	fi
}

# function upload_mode {
# 
# }
# 
# function download_mode {
# 
# }

if [ $# = 0 ]; then
	echo "NOTE: First argument should be a mode name (-c[heck], -d[ownload], -u[pload])."
	echo "Defaulting to the check mode:"
	check_mode
	exit 1
fi

case $1 in 
	"-check"|"-c" )
		echo "Running in a check mode:"
		check_mode ;;
	"-upload"|"-u" )
		echo "Running in an upload mode:" ;;
	"-download"|"-d" )
		echo "Running in an download mode:" ;;
	* )
		echo "ERROR: First argument should be a mode name (-c[heck], -d[ownload], -u[pload])"
esac

