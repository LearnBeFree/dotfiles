"""
The idea of this project was to make it easy to manage dotfiles across several devices.
SEE saber/other for detailed info!
"""
import os

DOTFILESDIR = os.path.expandvars("$HOME/.dotfiles")
HOMEDIR = os.path.expandvars("$HOME")
IGNOREINDOTFILES = ["my-stow.py", ".git", ".gitignore"]

def check_links(cur_dir: str = '',
                ls_filtered: dict = {'exists_broken_link': [],
                                     'exists_proper_link': [],
                                     'exists_not_link': [],
                                     'not_exist': []
                                     }) -> dict:
    ls_all = os.listdir(os.path.join(DOTFILESDIR, cur_dir))
    # TODO exclude ignored files here! And check if the list is empty. If it is, do something about it.. think!

    # print(ls_all)

    for file in ls_all:
        if file not in IGNOREINDOTFILES:
            target_link = os.path.join(HOMEDIR, cur_dir, file)
            target_file = os.path.join(DOTFILESDIR, cur_dir, file)
            print(file, target_link)

            if os.path.exists(target_link):
                if os.path.islink(target_link):
                    if os.readlink(target_link) == target_file:
                        ls_filtered['exists_proper_link'].append(target_file)

                    else:
                        ls_filtered['exists_broken_link'].append(target_file)

                elif os.path.isdir(target_file):
                    ls_filtered = check_links(os.path.join(cur_dir, file), ls_filtered)

                else:
                    ls_filtered['exists_not_link'].append(target_file)

            else:
                ls_filtered['not_exist'].append(target_file)

    return ls_filtered

print(check_links())

'''
def check_mode(): 
	print("-----\nmy-stow.py is a little script for managing your dotfiles in a manual fashion\n-----")

	needed_links_ar = list_needed_links()
    if len(needed_links_ar) != 0:
		echo "The following entries in your .dotfiles directory don't have corresponding symlinks in your home directory:"

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
'''
