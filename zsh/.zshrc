# Path to your oh-my-zsh installation.
export ZSH=/home/jpwall/.oh-my-zsh
export PATH=$PATH:~/bin
# OLD CONFIGS THAT AREN'T NECESSARY.
#plugins=(git)
#source $ZSH/oh-my-zsh.sh

# BEGIN ANTIGEN CONFIG 
source /home/jpwall/Git/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle chrissicool/zsh-256color

#antigen theme steeef
antigen theme af-magic
#antigen theme suvash
antigen apply
# END ANTIGEN CONFIG
