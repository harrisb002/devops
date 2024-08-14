folder_path="/usr/myapp/python/scripts"

if [ ! -d "$folder_path" ]; then
    mkdir -p folder_path
fi

#copy files from the remote server, restore from version control, or whatever - the folder is now present