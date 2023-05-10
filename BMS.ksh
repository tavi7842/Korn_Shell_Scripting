#! /usr/bin/ksh

function menu {
  print "Book Management Application"
  print 
  print "###########################"
  print
  print " add | list | delete | search | exit "
  print
  print "Enter your Choice"
  read reply
  case $reply in
    add) add;;
    list) list;;
    delete) delete;;
    search) search;;
    exit) exit_function;;
    *) Invalid;;
  esac
}

function add {
  print "No of Books Do you want to add [Count]?"
  read reply
  i=0
  while [ $i -lt $reply ];
  do
    print "Enter the Book Name u want to add"
    read name
    echo $name >> books.txt
    (( i++ ))
    print "$name Book Added Successful"
  done
  menu
}

function exit_function {
  print "Thank you"
}

function list {

  print

  awk '{print $0}' books.txt
  menu
}

function Invalid {
  print "Invalid Input"
  menu
}

function search {
  print "Enter the Book name you want"
  read reply
  if cat books.txt | grep -iw $reply;
  then
    print "$reply Book Found"
  else
    print "$reply Book not Found"
  fi
  menu
}

function delete {
  print "Enter the Book name you want"
  read reply
  if cat books.txt | grep -iw $reply;
  then
    sed -i "/$reply/d" books.txt
    print "$reply Book Deleted Success"
  else
    print "$reply Book not Found and Unsuccessful"
  fi
  menu
}

menu
