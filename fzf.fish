set -l color00 '#1c2d28'
set -l color01 '#bf616a'
set -l color02 '#6B8C78'
set -l color03 '#A5B396'
set -l color04 '#5C8373'
set -l color05 '#b48ead'
set -l color06 '#768A74'
set -l color07 '#D4DABA'
set -l color08 '#5C8373'
set -l color09 '#bf616a'
set -l color0A '#94A88E'
set -l color0B '#B2C6A9'
set -l color0C '#80957B'
set -l color0D '#b48ead'
set -l color0E '#AFBD9B'
set -l color0F '#D4F0DD'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
