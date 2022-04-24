#!/usr/bin/python3
from random import randrange as rand
for i in range(65535):
    a = rand(1 << 16)
    b = rand(1 << 16)
    cin = rand(2)
    print(str(bin(a))[2:].zfill(16), str(bin(b))[2:].zfill(16), cin, str(
        bin((a + b + cin) % (1 << 16)))[2:].zfill(16), (a + b + cin) // (1 << 16))
