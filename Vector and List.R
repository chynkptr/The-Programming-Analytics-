#Vector 
c(3,5) #Priniting both elements 

#List 
list(3,5) #Print only one element, jusr counting the length of one element 
#Creating List 
list(3, c("five", "six"), matrix(1:6, nrow = 2)) #Creating number, characters, and a mtrix in the same list 
#Addinng element into a list and define the name of the elements in the list 
l<-list(c(1,2),c("A","B","C"),matrix(5:10, nrow = 2) )
l
#1 
list(c(3,5),"Me", "You", matrix(1:6, nrow = 2),T) #Creating number, characters, and a mtrix in the same list 
#2
l<-list(c(22,2003),matrix(5:10, nrow = 2),list("Me","You"))
names(l)<-c("vector","matrix","list")
l
#Recursive Structure 
(person <- list(name = c(given = "Tom", family = "Cruse"), date_of_birth = list(year = 1962, month = "July", day = 3)))
#Structure 
str(person)
#Subsetting 
person[1]#First element of the list, give the detail value
person[[1]]#First element of the list, give the output of the element
class(person[1])#The class of the first element 
names(person[1])#The detail's name of the element 
str(person[2:1])#Printing the structure of the list in the reverse order 
person[-1] #Deleted the first element of the list 
str(person[1])# Just print first element 

person$name #Printing the detail's name 
class(person$name)#Printing type of the name and person 
person$date_of_birth$month #Give month only of the list 
person[[c(1,2)]] #Printing the seconcd value of the first element in the list 
person[[1]][[2]]#Printing the seconcd value of the first element in the list 
person[[1]][[3]] ="John" #Adding the third name in the first element 
person
#Replacing and deleting elements 
person$name <- c(given_name = "Max", middle_name = "Maximilian", family_name = "Mustermann")
str(person)
person$date_of_birth$month<- 7L #Replace the month
str(person)
person$job<-"Actor"#Replacing person job as an actor 
str(person)
#Deleting the element 
(x <- list(a = "first", b = "second", c = NULL)) #Deleting the value of C
(x <- list(a = "first", b = NULL , c = NULL)) #Deleting the value of b and c 
x$a <- NULL #Totaly deletiong value of a 
x
x <- x[!(names(x) %in% c("a", "b"))] #Deleting both
print(x)
#Combining two lists 
list1 <- list(3, 4)
list2 <- list(100, 200)
c("length of list 1" = length(list1), "length of list 2" = length(list2)) #Counting each length of the element of the lists 
#Combining the length of the two lists 
res1 <- c(list1, list2)
length(res1)
str(res1)

#Combing three lists 
list1 <- list(3, 4)
list2 <- list(100, 200)
list <- list("Me","You")
c("length of list 1" = length(list1), "length of list 2" = length(list2)) #Counting each length of the element of the lists 

#Step
(person <- list(name = c(given = "Andrew"), age = list(number = 42), city= c(name_city = "New York") )) 
#i 
person[[1]][[3]] ="John" #Adding the new value in the first element of the list
person
person$occupation = "Doctor" #Give another element in a list 
person
#ii
another_list<-list(email=c("andrew42@gmail.com"), salary =list(sal=80000)) #Adding two new elements in a list 
person1<-c(person,another_list) #Using combining technique 
person1
#iii
person1$city<- NULL #Deleting an element in the list 
person1
#iv #Replacing the element with the new three values
person1$name <- c(given_name = "Bradley", middle_name = "Justin", family_name = "Brown")
person1
#Add list
thislist<- list("A","B"<"C") #Adding the "D" to the list 
append(thislist,"D")
l1<- list("A", "B", "C") #Adding the "D" to the list 
append(l1, "D")
l2 <- list("A", "B", "C") #Adding the "D" after the second element of the list
append(l2, "D", after = 2)
list
#Converting list to the vector 
list1<- list(1:5)
list1
list2<- list(10:14)
list2 
v1 <- unlist(list1)
v2 <- unlist(list2)
res<- v1+v2
res
#1 
# Three attributes employee'S ID, employee's name, and employee's number
# Define the list of employees with four employees
employees <- list(
  employee1 = list(
    employeeid = 2202,
    employeename = c(name = "Cahyani"),
    employeenumber = 22
  ),
  employee2 = list(
    employeeid = 2203,
    employeename = c(name = "Marat"),
    employeenumber = 23
  ),
  employee3 = list(
    employeeid = 2204,
    employeename = c(name = "Makhabat"),
    employeenumber = 24
  ),
  employee4 = list(  # Added the 4th employee
    employeeid = 2205,
    employeename = c(name = "Patrick"),
    employeenumber = 25
  ), 
  totalstaffs = list(total = 4)  # Updated total staff count
)

employees

#2
#Print second name of employee name 
employees$employee2$employeename["name"]
#3 
#Print 4th employee's id 
employees$employee4["employeeid"]
#4
#Print all employees' names (implementing the missing part)
employee_names <- sapply(employees, function(emp) emp$employeename["name"])
employee_names
#5 
#Adding the age of employees
employees$employee1$age <- 25
employees$employee2$age <- 30
employees$employee3$age <- 28
employees$employee4$age <- 35
employees
#6
#Deleting the totalstaffs 
employees$totalstaffs<- NULL
employees
