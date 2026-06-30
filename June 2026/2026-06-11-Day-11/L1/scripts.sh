#!/bin/bash

greet(){
    echo "Welcome to Nephronix Healthcare Provider" 
}
greet


# Task — Add Arguments
greet(){
    echo "Welcome to Nephronix Healthcare Provider, $1" 
}
greet "Sid"