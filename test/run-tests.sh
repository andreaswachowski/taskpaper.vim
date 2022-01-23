#!/usr/bin/env bash

# set -e

cd "$( dirname "${BASH_SOURCE[0]}" )"

# vim -Nu <(cat << EOF
# filetype off
# for dep in ['vader.vim', 'taskpaper.vim']
#   execute 'set rtp+=' . finddir(dep, expand('~/.vim').'/**')
# endfor
# filetype indent on
# syntax enable
# EOF) +Vader*

vim -esNu vimrc -c 'Vader! *' # > /dev/null
