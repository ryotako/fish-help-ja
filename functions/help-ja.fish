function help-ja -d 'Show Japanese help for the fish shell'

    set -l b # builtins
    set b $b and begin bg bind block break breakpoint builtin case cd command
    set b $b commandline complete contains continue count echo else emit end
    set b $b exec exit false fg for function functions history if jobs math not
    set b $b or printf pwd random read realpath return set set_color source
    set b $b status string switch test true ulimit while

    set -l topics $b tutorial document-ja faq-ja design-document-ja

    function __show_help
        open "http://fish.rubikitch.com/$argv[1]"
    end

    switch "$argv[1]"
        case -h --help
            echo 'Usage: help-ja [TOPIC]'
        case '['
            __show_help test
        case $topics
            __show_help "$argv[1]"
        case '*'
            __show_help
    end
end
