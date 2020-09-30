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
function mindustry
    cd $fish_function_path[1]
    ./min.sh
end
