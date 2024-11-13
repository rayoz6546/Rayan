# -*- coding: utf-8 -*-
"""
Created on Tue Oct 30 13:33:55 2018

@author: lb13
"""


class Stack(list):
    """ class Stack derived from list"""
    def push(self,value):
        self.append(value)
    def top(self):
        assert not self.isEmpty(), "Stack Empty!"
        return self[len(self)-1]
    def isEmpty(self):
        return (len(self)==0)

S = Stack()
S.push(10)
S.push(19)
S.push(12)
S.push(12)
print(S.top())
print(S)
print(S.pop())
print(S)
while not S.isEmpty():
    S.pop()
print(S)
print(S.isEmpty())


