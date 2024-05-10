#!/bin/sh
    
case "$(echo -e "Shutdown\nRestart\nLogout\nSuspend\nLock" | wofi --show dmenu \
    -b -i -p \
    "Power:" -l 5)" in
        Shutdown) exec systemctl hibernate;;
        Restart) exec reboot;;
        Logout) hyprctl dispatch exit;;
        Suspend) exec systemctl suspend;;
        Lock) exec systemctl --user start lock.target;;
esac
