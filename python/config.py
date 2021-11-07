#!/bin/usr/python3.10
from ctypes import *

c_file ='/home/runner/CandPythonBridge/c/calc.so'
c_fun = CDLL(c_file)

go_file = '/home/runner/CandPythonBridge/go/hello.so'
go_fun = CDLL(go_file)

#cpp_file = '/home/runner/CandPythonBridge/cpp/cpp.so'
#cpp_fun = CDLL(cpp_file)