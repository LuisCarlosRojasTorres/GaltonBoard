import matplotlib.pyplot as plt
import random

def gauss_bell_normalized(x, mu, sigma):
    print("mu: ", mu)
    print("sigma: ", sigma)
    output = list()
    for i in range(len(x)):
        output.append((1/(sigma * (2 * 3.1415)**0.5)) * (2.71828**(-0.5 * ((x[i] - mu) / sigma)**2)))     

    return output

def standard_deviation(data):
    mean = sum(data) / len(data)
    variance = sum((x - mean) ** 2 for x in data) / len(data)
    return variance ** 0.5

def mean(data):
    return sum(data) / len(data)


numOfAttemps = 10000
numOfLevels = 9

lista_x = list(range(0, numOfLevels+1)) 
lista_y = [0]*(numOfLevels+1)



# Data for plotting
for i in range(numOfAttemps):
    level = 0
    for j in range(numOfLevels):
        if (random.randint(0, 1) == 1):
            level += 1                

    lista_y[level] += 1
    
lista_y_gauss = gauss_bell_normalized(lista_y, mean(lista_y), standard_deviation(lista_y))

print(lista_x)
print(lista_y)
print(lista_y_gauss)

# Create bar plot
plt.bar(lista_x, lista_y, color='blue')
#plt.plot(lista_x, lista_y_gauss, color='red')


# Add labels and title
plt.xlabel('Level')
plt.ylabel('Values')
plt.title('Galton Test Results')

# Show plot
plt.show()

