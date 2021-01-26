### BookS
### APPLIED SPATIAL DATA ANALYSIS WITH R (BIVAND ET AL., 2013); Hand-On Spatial Analysis with R and QGIS 3.2.2 (Shammunul Islam).

## Autor: Welifer Lebrón
## Fecha inicio: 21/01/21
## Fecha conclusión:


# R can be used as a calculator to carry out simple tasks.

pi * 10^2

# Nevertheless, The prior line might look like R is a "calculator", but appearances mislead, although it looks like the arithmetic is simply being "done", in fact is being translated into functions with arguments first, and then evaluated.

"*" (pi, "^" (10, 2))

# Vectors of values may be used as scalar values (which are vectors of length) - here the ':' operator is used to generate an integer sequence of values. (Pregunntar al Tali sobre cómo interpretar el resultado en la consola).

pi * (1:10)^2

# Is a misapprehension to think that what is printed in the console is the 'result', when it is actually the outcome of applying the  appropriate print for the class of the 'result', with default arguments. We an explicitly determine how many digits we want to be printed.

x = pi * 10^2
x
print(x, digits = 12)

# We can say that the variable x contains an object of a particular class. In this case "typeof" returns the storage mode of the object in variable x.

class(x)
typeof(x)

