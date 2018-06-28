# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions



#############################################
# VCS
##############################################
export PATH="/home/eda/vcs-M-2017.03-SP2/bin":$PATH
export VCS_HOME="/home/eda/vcs-M-2017.03-SP2"
export VIRSIMHOME="$VCS_HOME"/gui/virsim
export VCS_ARCH_OVERRRIDE="linux"


##############################################
# Verdi
##############################################
export PATH="/home/eda/Verdi3_L-2016.06-1/bin":$PATH





##############################################
# My Software
##############################################
export Pm=/home/usr/machonghe/Program
export PATH="$Pm/bin":$PATH


# python
export Pmdir=python 
export PATH="$Pm/$Pmdir/bin":$PATH
#export LD_LIBRARY_PATH="$Pm/$Pmdir/lib":$LD_LIBRARY_PATH
#export LIBRARY_PATH="$Pm/$Pmdir/lib":$LIBRARY_PATH
#export C_INCLUDE_PATH="$Pm/$Pmdir/include":$C_INCLUDE_PATH
#export CPLUS_INCLUDE_PATH="$Pm/$Pmdir/include":$CPLUS_INCLUDE_PATH


# tmux
export PATH="$Pm/libevent/bin:$Pm/ncurses/bin:$Pm/tmux/bin":$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"$Pm/libevent/lib:$Pm/ncurses/lib"
#export LIBRARY_PATH=$LIBRARY_PATH:"$Pm/libevent/lib:$Pm/ncurses/lib"





##############################################
# RISC-V
##############################################

# PULP
export Pmdir=riscv-pulp
export PATH="$Pm/$Pmdir/bin":$PATH
#export LD_LIBRARY_PATH="$Pm/$Pmdir/lib:$Pm/$Pmdir/lib64":$LD_LIBRARY_PATH
#export LIBRARY_PATH="$Pm/$Pmdir/lib:$Pm/$Pmdir/lib64":$LIBRARY_PATH
#export Pmdir=riscv-pulp/riscv32-unknown-elf
#export PATH="$Pm/$Pmdir/bin":$PATH
#export LD_LIBRARY_PATH="$Pm/$Pmdir/lib":$LD_LIBRARY_PATH
#export LIBRARY_PATH="$Pm/$Pmdir/lib":$LIBRARY_PATH
#export C_INCLUDE_PATH="$Pm/$Pmdir/include:$Pm/$Pmdir/sys-include":$C_INCLUDE_PATH
#export CPLUS_INCLUDE_PATH="$Pm/$Pmdir/include:$Pm/$Pmdir/sys-include":$CPLUS_INCLUDE_PATH


# PULP Newlib
#export Pmdir=riscv-pulp-newlib
#export PATH="$Pm/$Pmdir/bin":$PATH
#export LD_LIBRARY_PATH="$Pm/$Pmdir/lib":$LD_LIBRARY_PATH
#export LIBRARY_PATH="$Pm/$Pmdir/lib":$LIBRARY_PATH
#export C_INCLUDE_PATH="$Pm/$Pmdir/include":$C_INCLUDE_PATH
#export Pmdir=riscv-pulp-newlib/risv64-unknown-elf
#export PATH="$Pm/$Pmdir/bin":$PATH
#export LD_LIBRARY_PATH="$Pm/$Pmdir/lib":$LD_LIBRARY_PATH
#export LIBRARY_PATH="$Pm/$Pmdir/lib":$LIBRARY_PATH
#export C_INCLUDE_PATH="$Pm/$Pmdir/include":$C_INCLUDE_PATH
#export CPLUS_INCLUDE_PATH="$Pm/$Pmdir/include":$CPLUS_INCLUDE_PATH



# GNU Newlib
export Pmdir=riscv-gnu-newlib
export PATH="$Pm/$Pmdir/bin":$PATH




# PULP
#export theDir="$HOME/Proj/pulpino/sw/ref"
#export LD_LIBRARY_PATH="$theDir":$LD_LIBRARY_PATH
#export LIBRARY_PATH="$theDir":$LIBRARY_PATH






##############################################
# mch
##############################################
cdls() {
    cd "${1}";
    ll -G -h;
    pwd;
}
alias cd='cdls'
alias cd.='cd .'
alias cd..='cd ..'

PS1="\
\[\e[33;1m\][\
\[\e[33;1m\]\u:\
\[\e[33;1m\]\W\
\[\e[33;1m\]]\
\[\e[31;1m\]\$\
\[\e[37;0m\] "


if [ "$TERM" == "xterm" ];then
    export TERM=xterm-256color
fi



alias sba='source ~/.bashrc'
alias gba='gvim ~/.bashrc'

