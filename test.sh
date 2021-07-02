export version=1.2.3

# echo "minor: $(echo $version | cut -d. -f2)"
# echo "$(if [[ $(echo $version | cut -d. -f2) ]]; then echo $(echo $version | cut -d. -f2); else echo 0; fi)"

export count=3
echo "$(if [[ $(expr $count - 1) -lt 0 ]]; then echo 0; else echo $(expr $count - 1); fi)"