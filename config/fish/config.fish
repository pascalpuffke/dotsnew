pfetch

set comp "gcc -std=gnu17 -Wall -O3 -march=native -fdata-sections -ffunction-sections"

alias search "yay -Ss"
alias install "yay -S"
alias remove "yay -Rns"
alias pkginfo "yay -Qi"
alias searchlocal "pacman -Q | grep"
alias pls "sudo"
alias jrun "/usr/lib/jvm/java-14-openjdk/bin/java --enable-preview -jar"
alias wall "sh ~/.local/src/scripts/wallpaper.sh"
alias exa "exa --all --long"
alias cat "bat"
alias weather "curl wttr.in"
alias ccomp "echo $comp & $comp"

fish_vi_key_bindings
set -U fish_mode_prompt

set -U grc_plugin_execs cat cvs df diff dig gcc g++ ls ifconfig \
       make mount mtr netstat ping ps tail traceroute \
       wdiff blkid du dnf docker docker-machine env id ip iostat \
       last lsattr lsblk lspci lsmod lsof getfacl getsebool ulimit uptime nmap \
       fdisk findmnt free semanage sar ss sysctl systemctl stat showmount \
       tcpdump tune2fs vmstat w who

for executable in $grc_plugin_execs
    if type -q $executable
        function $executable --inherit-variable executable --wraps=$executable
            if isatty 1
                grc $executable $argv
            else
                eval command $executable $argv
            end
        end
    end
end
