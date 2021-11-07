# CandPythonBridge
----
### This Repo contain info about how to use C Funcation in Python .
___

- There are some steps to follow if we have to use C or Golang funcations in Python.
- First Create a ` .c` file in this case we Create calc.c you can name whatever you like,<br> 
  ones you create file write code without **main funcation** that is important.
  ```c 
  #include<stdio.h>
  #include "calc.h"
  void connect(){
      printf("Hello, from C to Dear Python  \n");

  } 
  ```

- Next step you have to create **.h** file, 
  where you have to call the created funcation.<br>
  In this case we named  **calc.h** .<r>
  let's see 
    ``` c 
    void connect(); 
    ```
- Now You have open `cmd` If You are using Windows , Otherwise Mac and Linux User open their Terminal or shell.<br>
  ones you opned Terminal type following commands.
  ``` bash 
      gcc -o welcome.so --shared -fPIC calc.calc 
  ```
- After executing this command this will create .so file.
- we are highly intrested in `.so` file in this case `welcome.so` file.
- Now You have to create python file .
- You can name whatever you like in this case we are using `config.py` name.
- Write following lines on python file.
    ``` py 
    #!/bin/usr/python3.10
    from ctypes import *

    c_file ='/home/runner/CandPythonBridge/c/calc.so'
    c_fun = CDLL(c_file)

    ``` 
- Now You have create another `.py` file name whatever you like in this case we call `run.py` .
- Write following code in run.py file. 

    ``` py 
    from config import c_fun
    c_fun.connect()

    ```
- Now open Terminal fire ``` python run.py ``` file.
- And see You Done ! 
----
> Thank You ! 
