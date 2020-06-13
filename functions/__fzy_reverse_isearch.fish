function __fzy_reverse_isearch
    history merge
    history -z | eval fzy --read-null -q '(commandline)' | perl -pe 'chomp if eof' | read -lz result
    and commandline -- $result
    commandline -f repaint
end
