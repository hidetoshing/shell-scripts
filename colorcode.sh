for i in {0..255} ; do
printf "\x1b[38;5;%dm#%03d " ${i} ${i}
done
