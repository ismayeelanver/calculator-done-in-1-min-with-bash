#!/bin/bash

function menu {
  echo "__________________"
  echo "1. Add"
  echo 
  echo "2. Sub"
  echo 
  echo "3. Mul"
  echo 
  echo "4. Div"
  echo "__________________"
}

function opt {
  read -p "[1-4]: " opts
}

function add {
  read -p "First: " First
  read -p "Second: " Second
  expr $First + $Second
}

function sub {
    read -p "First: " First
    read -p "Second: " Second
    expr $First - $Second
}

function mul {
  read -p "First: " First
  read -r "Second: " Second
  expr $First * $Second
}

function div() {
 read -p "First: " First
 read -p "Second: " Second
 expr $First / $Second
}


function check {
  case "$opts" in
    1) add ;;
    2) sub ;;
    3) mul ;;
    4) div ;;
  esac
}

function run () {
  menu
  opt
  check
}

run
