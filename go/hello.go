package main 
import "C"
import "fmt"

//export hello
func hello(){
    fmt.Println("Hello, from GoLang to Dear Python ")
}

func main() {}