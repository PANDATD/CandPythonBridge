echo "Running"
cd c 
gcc -o calc.so --shared -fPIC calc.c
cd .. 
cd go 
go build -buildmode=c-shared -o hello.so
cd ..
#cd cpp
#g++ -0  cpp.so --shared -fPIC cpp.cpp
#cd ..
echo "shared file connection established..."
cd python
python3 config.py 
echo "config.py is working."
echo "Running run.py"
python3 run.py
