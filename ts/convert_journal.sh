# !/bin/bash

journalctl -n1

journalctl -n1 | ts -r %B" "%d,%Y-%l":"%M%p

