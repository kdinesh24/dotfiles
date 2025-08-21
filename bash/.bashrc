case $- in
    *i*)
        export NVM_DIR="$HOME/.nvm";
        export BUN_INSTALL="$HOME/.bun";
        export PATH="$HOME/.local/bin:$BUN_INSTALL/bin:$PATH";

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
        ;;
    *) return;;
esac