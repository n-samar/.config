# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
export ZSH="/afs/csail.mit.edu/u/n/nsamar/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# nikola's edits

# Point to new bsc 2022.01
DISTRO=$(lsb_release -irs | sed "s/\.//g" | tr -d '\n' | tr '[:upper:]' '[:lower:]')

export PATH="/data/sanchez/tools/bluespec/$DISTRO/bsc-latest/bin:/usr/local/csail/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/afs/athena.mit.edu/course/6/6.004/yosys/bin:/snap/bin:/data/sanchez/tools/qmn/18.04/bsc-vagrant/bin:/data/sanchez/tools/nsamar/18.04/minispec/synth:/afs/athena.mit.edu/course/6/6.004/yosys/bin:/data/sanchez/tools/nsamar/18.04/minispec:/data/sanchez/tools/qmn/18.04/bsc-vagrant/bin:/data/sanchez/tools/nsamar/18.04:/data/sanchez/tools/qmn/18.04/bsc-vagrant/bin:/data/sanchez/tools/nsamar/18.04/minispec/synth:/afs/athena.mit.edu/course/6/6.004/yosys/bin:/data/sanchez/tools/nsamar/18.04/minispec:~/.local/bin/"

PROMPT='%m:%C> '

export PATH="$HOME/bin:/usr/local/bin:$PATH:/usr/go/bin"

# source /data/sanchez/tools/gcc-8.2/paths.sh
source /data/sanchez/tools/nsamar/18.04/paths-vagrant.sh

alias scons="/data/sanchez/users/nsamar/bin/scons"
alias cdj="cd /scratch/nsamar/janncy"
alias cdi="cd /data/sanchez/users/nsamar/isca22_fhe"
alias cdz="cd /data/sanchez/users/nsamar/"
alias cdf="cd /data/sanchez/users/nsamar/janncy/fhestina"
alias cdn="cd /data/sanchez/users/nsamar/nsf-crypto-accel"
alias cde="cd /gash/external-mem"
alias t="tmux new-session -A -s main"
alias python=python3

compinit -d /data/sanchez/users/nsamar/zsh/.zcompdump

export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH

export XDG_CONFIG_HOME=/data/sanchez/users/nsamar/.config
export XDG_DATA_HOME=/data/sanchez/users/nsamar/.local/share

export LIBCONFIGPATH=/data/sanchez/tools/axelf/libconfig-1.7.2/inst
export ASAN_OPTIONS=halt_on_error=0

source /afs/csail.mit.edu/system/common/etc/zsh/zprofile.csail

# Move GOPATH outside of AFS $HOME hell AND NFS filelock hell
export GOPATH=/scratch/nsamar/go

cdz
