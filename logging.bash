msg() {
	echo >&2 -e "$@"
}

die() {
	local msg=$1
	local code=${2-1} # default exit status 1

	msg "$msg"
	exit "$code"
}
