function explorer
    nemo (pwd) &
end

function push
    git add -A
    read nfo
    git config --global credential.helper store
    git commit -m "$nfo"
    git push
    echo "done"
end

function revert 
    ./$fish_function_dir[1]/downgrade.sh $argv
end

function termbin
    cat $1 | nc termbin.com 9999
end

