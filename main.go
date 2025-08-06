package main

import (
	"encoding/json"
	"net/http"
)

func main() {
	http.HandleFunc("/", helloworldhandler)
	http.HandleFunc("/test", testhandler)
	http.ListenAndServe(":9000", nil)
}

func helloworldhandler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Hello World"))
}

func testhandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")

	response := map[string]string{"message":"Created by Dev-JezEL"}
	json.NewEncoder(w).Encode(response)
}