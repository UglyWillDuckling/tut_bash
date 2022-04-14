from os import fork, getpid, pipe, read, write, fdopen

read_end, write_end = pipe()
child_pid = fork()

if child_pid:
    # parent
    print ("parent is about to read")
    data = read(read_end,1000)
    print ("parent read")
    print (f"data:",data)
else:
    # child
    w = fdopen(write_end, 'w')
    print ("child is about to write")
    w.write("Hello!")
    print ("child wrote")
