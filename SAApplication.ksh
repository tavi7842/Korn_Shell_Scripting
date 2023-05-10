#! /usr/bin/ksh 

print "Welcome to Secret Agent Application"

print "###################################"

print "Enter your name"

read name

first_char=$(echo $name | cut -c 1)

#print "$first_char"

if [[ "$first_char" != [dD] ]];then

print "Hello $name,Thank You For ur Information"

exit 0

fi

print "Enter your Favorite Actor name  "

read actor

length=$(echo -n  $actor | wc -c)

last_char=$(echo $actor | cut -c $length)

if [[ "$last_char" != [Rr] ]];then

#print "$last_char"

print "Hello $name,Thank You For ur Information"

exit 0

fi

print  "Enter your lucky number"

read  number

if [ $number -ne 7 ];then

print "Hello $name,Thank You For ur Information"

exit 0

fi

print "Enter your Favourite Dish"

read dish

length1=$(echo -n  $dish | wc -c)

if [ $length1 -lt 6 ];then

print "Hello $name,Thank You For ur Information"

exit 0

fi

print 

print "Welcome Agent $name"

print "Our Next Operation will be Getting know about missing person Arya"

#print "$dish"
