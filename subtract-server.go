package main

import (
	"fmt"
	"net/http"
	"strconv"
	"strings"
)

func handler(w http.ResponseWriter, r *http.Request) {
	arg := strings.Split(r.URL.Path, "/")
	argLength := len(arg)
	if argLength < 3 {
		fmt.Fprintf(w, "invalid")
		return
	}
	n1, _ := strconv.Atoi(arg[argLength-2])
	n2, _ := strconv.Atoi(arg[argLength-1])
	fmt.Fprintf(w, "%d", n1-n2)
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Server running...")
	http.ListenAndServe(":8081", nil)
}
