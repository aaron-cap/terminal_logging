# Author: Aaron van Diepen
# Append a line in /etc/bash.bashrc to:
# Automatically log all terminal/SSH sessions

echo "# Automatically log all terminal/SSH sessions" >> /etc/bash.bashrc
echo "test \"\$(ps -ocommand= -p $PPID | awk '{print \$1}')\" == 'script' || (script -f $HOME/logs/\$(date +\"%d-%b-%y_%H-%M-%S\").\${HOSTNAME:-\$(hostname)}.\$\$.\${RANDOM}_shell.log)" >> /etc/bash.bashrc
