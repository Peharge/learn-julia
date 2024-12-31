# Define a function to greet a user
function greet(name::String)
    println("Hello, $name!")
end

# Variables
name = "Alice"
age = 25

# Print a simple message
println("Welcome to Julia programming!")

# Call the greet function
greet(name)

# Simple loop to print numbers from 1 to 5
for i in 1:5
    println("This is number $i")
end

# A simple if-else condition
if age >= 18
    println("You are an adult.")
else
    println("You are a minor.")
end
