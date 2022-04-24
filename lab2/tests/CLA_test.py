#!/usr/bin/python3
from random import randrange as rand
for i in range(128):
    a = rand(16)
    b = rand(16)
    cin = rand(2)
    print(str(bin(a))[2:].zfill(4), str(bin(b))[2:].zfill(4), cin, str(
        bin((a + b + cin) % 16))[2:].zfill(4), (a + b + cin) // 16)
