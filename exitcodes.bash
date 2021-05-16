# Standard return codes and meanings from FreeBSD SYSEXITS(3)
# The choice of an appropriate exit value is often ambiguous
# 1, 2, 126 - ~140 and 255 (so -1) error codes are reserved:
#   https://tldp.org/LDP/abs/html/exitcodes.html
EX_OK=0			# It's all right (error undetected yet)
EX_USAGE=64		# Incorrect command usage (args / values)
EX_DATAERR=65		# Incorrect *user* provided input data (parse)
EX_NOINPUT=66		# Unreadable *user* provided input (perm / enoent)
EX_NOUSER=67		# Specified user did not exist (wherever)
EX_NOHOST=68		# Specified host did not exist (wherever)
EX_UNAVAILABLE=69	# Some service is unavailable
			# (remote, support program or file)
EX_SOFTWARE=70		# Internal software error (it's you)
EX_OSERR=71		# System error (cannot fork / pipe / allocate)
EX_OSFILE=72		# Failed to parse system file (perm / enoent / parse)
EX_CANTCREAT=73		# User specified output file can't be created
EX_IOERR=74		# Error occured while doing I/O
EX_TEMPFAIL=75		# Temporary failure (should retry later)
EX_PROTOCOL=76		# Protocol error (don't agree / understand)
EX_NOPERM=77		# Invoking user not permitted to execute operation
EX_CONFIG=78		# Something found inconfigured or misconfigured
