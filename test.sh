export version=1.2.3

# echo "minor: $(echo $version | cut -d. -f2)"

echo "$(if [[ $(echo $version | cut -d. -f2) ]]; then echo $(echo $version | cut -d. -f2); else echo 0; fi)"