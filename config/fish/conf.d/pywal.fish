set -l foreground (xrdb -query | grep '*.color7' | awk '{print $NF}' | sed 's/#//g')
set -l selection  (xrdb -query | grep '*.color1' | awk '{print $NF}' | sed 's/#//g')
set -l comment    (xrdb -query | grep '*.color2' | awk '{print $NF}' | sed 's/#//g')

set -l red    (xrdb -query | grep '*.color1' | awk '{print $NF}' | sed 's/#//g')
set -l orange (xrdb -query | grep '*.color2' | awk '{print $NF}' | sed 's/#//g')
set -l yellow (xrdb -query | grep '*.color3' | awk '{print $NF}' | sed 's/#//g')
set -l green  (xrdb -query | grep '*.color4' | awk '{print $NF}' | sed 's/#//g')
set -l cyan   (xrdb -query | grep '*.color5' | awk '{print $NF}' | sed 's/#//g')
set -l pink   (xrdb -query | grep '*.color6' | awk '{print $NF}' | sed 's/#//g')
set -l purple (xrdb -query | grep '*.color8' | awk '{print $NF}' | sed 's/#//g')

set -g fish_color_autosuggestion $comment
set -g fish_color_command        $cyan
set -g fish_color_comment        $comment
set -g fish_color_end            $orange
set -g fish_color_error          $red
set -g fish_color_escape         $pink
set -g fish_color_normal         $foreground
set -g fish_color_operator       $green
set -g fish_color_param          $purple
set -g fish_color_quote          $yellow
set -g fish_color_redirection    $foreground
set -g fish_color_search_match   --background=$selection
set -g fish_color_selection      --background=$selection
