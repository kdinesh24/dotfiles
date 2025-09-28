case $- in
    *i*)
        export NVM_DIR="$HOME/.nvm";
        export BUN_INSTALL="$HOME/.bun";
        export PATH="$HOME/.local/bin:$BUN_INSTALL/bin:$PATH";
        export M2_HOME="/c/apache-maven-3.9.11"
        export PATH="$M2_HOME/bin:$PATH"
        export JAVA_HOME="/c/Program Files/Eclipse Adoptium/jdk-17.0.16.8-hotspot"
        export PATH="$JAVA_HOME/bin:$PATH"
        

        function _load_nvm {
            unset -f node;
            unset -f npm;
            unset -f npx;
            [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh";
            [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion";
        }

        function node { _load_nvm; command node "$@"; }
        function npm  { _load_nvm; command npm "$@"; }
        function npx  { _load_nvm; command npx "$@"; }

        alias bn="bun init";
        alias bi="bun install";
        alias ba="bun add";
        alias bu="bun uninstall";
        alias bd="bun dev";
        alias bs="bun start";
        alias bb="bun run build";``
        alias bunx="bun x";
        alias bxs="bun x shadcn@latest";
        alias oc="opencommit";
        
        alias nn="npm init";
        alias ni="npm install";
        alias na="npm install";
        alias nu="npm uninstall";
        alias ns="npm start";
        alias nd="npm run dev";
        alias nb="npm run build";
        alias nxs="npx shadcn@latest add";

        alias gs="git status --short";
        alias gd="git diff";
        alias ga="git add";
        alias gc="git commit -m";
        alias gp="git push";
        alias gu="git pull";
        alias gl="git log --oneline --graph --decorate --all";
        alias gb="git branch";
        alias gco="git checkout";
        alias gi="git init";
        alias gcl="git clone";

        alias cl="clear";
        alias .="cd ..";
        alias ..="cd ../..";
        alias pr="bunx prettier --write .";
        

        alias tx="tmux";
        alias ta="tmux attach";
        alias td="tmux detach";
        alias tk="tmux kill-session";
        alias tl="tmux ls";

        
        
        eval "$(zoxide init bash)";
        eval "$(starship init bash)"
        
        export PATH=$PATH:/c/tools/opencode
        export PATH=$PATH:/c/Go/bin
        ;;
    *) return;;
esac
# Pazman CLI - added by installer
alias pm="pazman"
alias psql="\"/c/Program Files/PostgreSQL/17/bin/psql.exe\""
