#!/bin/bash
clear
banner()
{
  echo "+------------------------------------------+"
  printf "\e[0;34m╭╮╱╱╱╱╱╱╱╱╱╱╱╱╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮
┃┃╱╱╱╱╱╱╱╱╱╱╱╱╱╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃
┃┃╱╱╭┳━╮╭╮╭┳╮╭╮╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮
┃┃╱╭╋┫╭╮┫┃┃┣╋╋╯╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯
┃╰━╯┃┃┃┃┃╰╯┣╋╋╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃
╰━━━┻┻╯╰┻━━┻╯╰╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯v-1.0
\u001b[32mmake by bhonepyae"
echo -e "mmmmmmmmmmmmmmmmmmmmmm"
}

banner "Starting the Job"
sleep 3
PS3='Choose your linux: '
linux=("Ubuntu" "kali" "Backbox" "Quit" "about")
select fav in "${linux[@]}"; do
    case $fav in
        "Ubuntu")
            echo "start runing"
            pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh
            exit
            ;;
        "kali")
            echo "pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh && bash kali.sh"
            exit
            ;;
        "Backbox")
            echo "pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/BackBox/backbox.sh && bash backbox.sh"
            exit
            ;;
        "Quit")
            echo "Thank for using my tool"
            exit
            ;;
        "about")
            echo "you can contact me"
            echo "gmail: bptz393zgmail.com"
            echo "____Bye_____"
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
