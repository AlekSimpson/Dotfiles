#!/usr/bin/env bash

herbstclient --idle "tag_*" 2>/dev/null | {

    while true; do
        # Read tags into $tags as array
        IFS=$'\t' read -ra tags <<< "$(herbstclient tag_status)"
        {
            for i in "${tags[@]}" ; do
                # Read the prefix from each tag and render them according to that prefix
                case ${i:0:1} in
                    '#')
                        # the tag is viewed on the focused monitor
                        #echo "%{F#161320}%{B#B5E8E0}%{U#F28FAD}"
						echo "%{F#161320}%{B#89DCEB}"
                        ;;
                    ':')
                        # : the tag is not empty
                        echo "%{F#161320}%{B#6E6C7E}" 
                        ;;
                    '!')
                        # ! the tag contains an urgent window
                        ;;
                    '-')
                        # - the tag is viewed on a monitor that is not focused
                        #echo "%{F#1A1826}%{B#89DCEB}"
                        ;;
                    *)
                        # . the tag is empty
                        #echo "%{F#161320}%{B#89DCEB}"
                        ;;
                esac

                echo "%{A1:herbstclient use ${i:1}:}  ${i:1}  %{A -u -o F- B-}"
            done

            echo "%{F-}%{B-}"
        } | tr -d "\n"

    echo

    # wait for next event from herbstclient --idle
    read -r || break
done
} 2>/dev/null
