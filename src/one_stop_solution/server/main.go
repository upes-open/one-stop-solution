package main

import (
	"context"
	"log"
	"net/http"
	"os"
	"os/signal"
	"time"

	"github.com/joho/godotenv"
	"github.com/nicholasjackson/env"
)

var bindAddress = env.String("BIND_ADDRESS", false, ":8081", "Bind Address for the server")

func main(){
	godotenv.Load("../.env")

	portString := os.Getenv("PORT")

	env.Parse()

	l := log.New(os.Stdout, "api", log.LstdFlags)

	sm := http.NewServeMux()

	s := &http.Server{
		Addr: *bindAddress,
		Handler: sm,
		IdleTimeout: 120 * time.Second,
		ReadTimeout: 1 * time.Second,
		WriteTimeout: 1 * time.Second,
	}

	go func() {
		l.Printf("Starting server on port %v", portString)

		err := s.ListenAndServe()
		if err != nil {
			l.Fatal(err)
		}
	}()

	sigChan := make(chan os.Signal)
	signal.Notify(sigChan, os.Interrupt)
	signal.Notify(sigChan, os.Kill)

	// Block until a signal is received.
	sig := <-sigChan
	l.Println("Received terminate, graceful shutdown", sig) // graceful termination

	// gracefully shutdown the server, waiting max 30 seconds for current operations to complete
	tcx, _ := context.WithTimeout(context.Background(), 30*time.Second)

	s.Shutdown(tcx)
}
