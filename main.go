package main

import (
	"net/http"
)

func IndexHandler(w http.ResponseWriter, r *http.Request) {
	_, _ = w.Write([]byte("Hello zeus"))
}

func main() {
	http.HandleFunc("/", IndexHandler)
	_ = http.ListenAndServe(":8080", nil)
}
