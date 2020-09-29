function nema
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
