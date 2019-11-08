#!/usr/bin/python3
"""
def count(fichier):
	with open (fichier, 'r') as f:        #withopen#
    		linecount = len(f.readlines())
	return linecount
"""
def nblignes(nf, fdl='\n', tbuf=16384):
    c = 0
    f = open(nf, 'rb')
    while True:
        buf = None
        buf = f.read(tbuf)
        if len(buf)==0:
            break
        c += buf.count(fdl)
    f.seek(-1, 2)
    car = f.read(1)
    if car != fdl:
        c += 1
    fi
    f.close()
    return c    
