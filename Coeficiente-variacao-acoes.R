
ITausa <- c(8.7,7.5,7.8,8.3,9.0,9.7,8.7,8.4,8.5,8.2,8.1,8.6,8.9)
Petr4 <- c(29.9,28.0,34.0,33.3,31.9,30.5,26.6,23.5,26.0,25.3,24.0,23.7,25.5)

# Range
range(ITausa)
range(Petr4)

#Quartil
quantile(ITausa)
quantile(Petr4)

#Media
mean(ITausa) 
mean(Petr4)

#Mediana
median(ITausa)
median(Petr4)

# Maximo e Minimos
max(ITausa)
max(Petr4)
min(ITausa)
min(Petr4)

# Moda
moda = function(dados) {
  vetor = table(as.vector(dados))
  names(vetor)[vetor == max(vetor)]
}

moda(ITausa)

# Desvio Padrao
sd(ITausa)
sd(Petr4)

# Variancia
var(ITausa)
var(Petr4)

# Coeficiente de variação(CV) = (DESVIO/MEDIA) * 100
# ITausa -> valor medio da ação R$ 8.492 / desvio padrao = R$ 0.557
# Petra -> valor medio da ação R$ 27.861 / desvio padrao = R$ 3.310

cv_ITausa <- (0.557/8.492) * 100
cv_Petr4 <- (3.310/27.861) * 100

print(cv_ITausa)
print(cv_Petr4)

# Conclusão o investidor se sentiria mais seguro em adquirir ações da Itausa pois o preço das ações teriam
# uma variação menor.

