
from os import fork, getpid

child_pid = fork()

if child_pid:
    # parent
    print ("I'm the parent")
    print ("child pid", child_pid)
    print ("my pid", getpid())
else:
    # child
    print ("I'm the child process")
    print ("child pid", child_pid)
    print ("my pid", getpid())
