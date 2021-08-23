#!/bin/bash
set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")/.."

{
	cat <<- 'EOH'
		# This file lists all the individuals having contributed to the repository
	# Do not code your details here!!
	EOH
	echo
	git log --format='%aN <%aE' | LC_ALL=C.UTF-8 sort -uf 
} > AUTHORS
