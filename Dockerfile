FROM testbed/vim:latest

RUN install_vim -tag master -build \
                -tag neovim:master -build

RUN mkdir -p /home/vimtest/plugins && \
    wget -O- https://github.com/junegunn/vader.vim/archive/master.zip | unzip -
