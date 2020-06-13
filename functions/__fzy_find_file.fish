function __fzy_find_file -d "List files and folders"
    set -l commandline (__fzy_parse_commandline)
    set -l dir $commandline[1]
    set -l fzy_query $commandline[2]

    set -q FZY_FIND_FILE_COMMAND
    or set -l FZY_FIND_FILE_COMMAND "
    command find -L \$dir -mindepth 1 \\( -path \$dir'*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' \\) -prune \
    -o -type f -print \
    -o -type d -print \
    -o -type l -print 2> /dev/null | sed 's@^\./@@'"

    begin
        eval "$FZY_FIND_FILE_COMMAND | fzy --query \"$fzy_query\"" | while read -l s; set results $results $s; end
    end

    if test -z "$results"
        commandline -f repaint
        return
    else
        commandline -t ""
    end

    for result in $results
        commandline -it -- (string escape $result)
        commandline -it -- " "
    end
    commandline -f repaint
end
