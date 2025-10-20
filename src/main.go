package main

import "net/http"

func main() {
	//http.ListenAndServe(":8080", http.FileServer(http.Dir("./demo/html"))) - local
	http.ListenAndServe(":8080", http.FileServer(http.Dir("/html"))) //docker
}
