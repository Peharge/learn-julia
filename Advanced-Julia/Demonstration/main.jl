# Define a mutable struct to represent a Rectangle
mutable struct Rectangle
    width::Float64
    height::Float64
end

# Define a function to calculate the area of a shape (using multiple dispatch)
function area(shape::Rectangle)
    return shape.width * shape.height
end

# Function to calculate the perimeter of a rectangle
function perimeter(shape::Rectangle)
    return 2 * (shape.width + shape.height)
end

# Define a function that demonstrates Julia's multiple dispatch with different shapes
function area(shape::Any)
    if typeof(shape) <: Rectangle
        return shape.width * shape.height
    elseif typeof(shape) <: Circle
        return π * shape.radius^2
    else
        throw(MethodError(area, typeof(shape)))
    end
end

# Define another mutable struct for a Circle
mutable struct Circle
    radius::Float64
end

# Function to display the properties of a shape
function display_properties(shape::Any)
    if typeof(shape) <: Rectangle
        println("Rectangle - Width: $(shape.width), Height: $(shape.height)")
    elseif typeof(shape) <: Circle
        println("Circle - Radius: $(shape.radius)")
    else
        println("Unknown shape")
    end
end

# Create instances of Rectangle and Circle
rect = Rectangle(4.0, 5.0)
circle = Circle(3.0)

# Display properties and calculate area and perimeter
display_properties(rect)
println("Area of rectangle: ", area(rect))
println("Perimeter of rectangle: ", perimeter(rect))

display_properties(circle)
println("Area of circle: ", area(circle))

# Using arrays and broadcasting to calculate areas of multiple shapes
shapes = [rect, circle, Rectangle(3.0, 2.0), Circle(5.0)]
areas = map(area, shapes)
println("Areas of all shapes: ", areas)
