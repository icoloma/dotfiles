#!/bin/bash
# Install all symlinks from the dotfiles folder

source ./_utils

# finds all .dotfiles in this folder
declare -a FILES_TO_SYMLINK=$(find dotfiles -maxdepth 1 -type f -name ".*" -not -name .DS_Store -not -name .git -not -name .osx)
FILES_TO_SYMLINK="$FILES_TO_SYMLINK bin" # add in extra contents
echo $FILES_TO_SYMLINK

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    local i=""
    local sourceFile=""
    local targetFile=""

    for i in ${FILES_TO_SYMLINK[@]}; do

        sourceFile="$(pwd)/$i"
        targetFile="$HOME/$(echo $i | sed 's/dotfiles\///')"

        if [ -e "$targetFile" ]; then
            if [ "$(readlink "$targetFile")" != "$sourceFile" ]; then

                ask_for_confirmation "'$targetFile' already exists, do you want to overwrite it?"
                if answer_is_yes; then
                    rm -rf "$targetFile"
                    execute "ln -fs $sourceFile $targetFile" "$targetFile → $sourceFile"
                else
                    print_error "$targetFile → $sourceFile"
                fi

            else
                print_success "$targetFile → $sourceFile"
            fi
        else
            execute "ln -fs $sourceFile $targetFile" "$targetFile → $sourceFile"
        fi

    done

}

main
