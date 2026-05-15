function gclone -d "Clone a git repository into a structured directory"
    if test -z "$argv[1]"
        echo "Usage: gclone <git-url>"
        return 1
    end

    set -l url $argv[1]
    set -l path (string replace -r '^(https?://|ssh://|git@)' '' $url)
    set -l path (string replace -a ':' '/' $path)
    set -l path (string replace -r '\.git$' '' $path)

    set -l target "$HOME/git/$path"

    echo "Preparing to clone into $target..."
    
    mkdir -p (dirname $target)
    git clone $url $target
end
