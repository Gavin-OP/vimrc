# vimrc configuration

This is how to install VIM and configure vimrc files.

## Table of Contents



## Install[^1]

[^1]: Download curl in [curl download page](https://curl.se/windows/) and put it in the computer path. (only for plug-in instant-markdown-preview)

- Install the latest version of VIM
    - For Windows, find VIM in [vim release page](https://github.com/vim/vim-win32-installer/releases). 
    - For Linux, run the following command to update VIM.  
        ```Shell
        sudo add-apt-repository ppa:jonathonf/vim
        sudo apt update
        sudo apt install vim
        vim --version
        ```

- Install NodeJS in [NodeJS download page](https://nodejs.org/en/download).  

- Install plugin manager `vim-plug`.   
    - For Windows, open command line in directory `the_folder_vim_is_installed\vim90\autoload`, run the command below.  
        ```Shell
        curl -fLo plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        ```
    - For Linux, run the command below to download the `plug.vim` into the directory `~/.vim/autoload`.  
        ```Shell
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  
        ```


- Clone the repo.  
    - For Windows, install git in [git download page](https://git-scm.com/downloads), open command line in directory `C:\User\[username]\`. Run the command below.  
        ```Shell
        git clone https://github.com/Gavin-OP/vimrc.git
        ```
    - For Linux, don't clone the repo, just create a `.vimrc` file in `~`, and copy the `_vimrc_linux` into the Linux `.vimrc` file.  

## Configuration
- Change the default path of `_vimrc` file.  
    - For Windows, open command line in directory `the_folder_vim_is_installed\`, open `_vimrc` file using `vim _vimrc`, and add the following code.    
        ```shell
        source $HOME/vimrc/_vimrc
        ```
    - For Linux, TBC  

- Change the path for backup, swap, undo files.  
    - For Windows  
        - run the following command to create the folders.   
            ```Shell
            mkdir .vim
            cd .vim
            mkdir .swp
            mkdir .undo
            mkdir .backup
            ```
        - Make sure the path for `directory`, `undodir`, `backupdir` match the folder created above.   
    - For Linux, 
        - run the following command to create the folders.
            ```Shell
            mkdir .vim
            cd .vim
            mkdir .swp
            mkdir .undo
            mkdir .backup
            ```

- Change the path for Python ddl file. 
    - For Windows, TBC
    

- Install plug-in.[^2]
    - Randomly open a file using vim, install all the plug-in using `:PlugInstall`.
    - Randomly open a file using vim, set up `vim-copilot` using `:Copilot setup`, check the status of `vim-copilot` using `:Copilot status`.  


[^2]: Install `instant-markdown-d` using `[sudo] npm -g install instant-markdown-d`. (If using instant-markdown plugin)    

## Other Useful Command
- `git status`  
- `git pull`  
- `git add [filename]`
- `git commit -m "comment inside"`
- `git push`

## To Do
- [x] auto pair configuration error for > and etc. 
- [ ] enable vim python support  
- [ ] auto format python configuration  
- [ ] plug-in `ctrl-p`  


