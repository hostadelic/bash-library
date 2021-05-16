setup_colors() {
	if [[ -t 2 ]] && (( ! "$nocolors" )) && [[ "${TERM-}" != "dumb" ]]
	then
		NOFORMAT='\033[0m'
		RED='\033[0;31m' GREEN='\033[0;32m' BLUE='\033[0;34m'
		ORANGE='\033[0;33m' PURPLE='\033[0;35m' CYAN='\033[0;36m'
		YELLOW='\033[1;33m' BOLD='\033[1m'
	else
		NOFORMAT='' RED='' GREEN='' BLUE='' ORANGE='' PURPLE='' CYAN=''
		YELLOW='' BOLD=''
	fi
}
