#!/usr/bin/env sh

set -x

gcc calls_fork_syscall.c -o calls_fork_syscall
strace -e trace=process ./calls_fork_syscall

printf "\n\n\n"

gcc threads_created_with_clone3.c -o threads_created_with_clone3
strace -e trace=process ./threads_created_with_clone3
