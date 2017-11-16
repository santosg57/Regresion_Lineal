xx <- seq(0,25, 1)
yy <- .1*((xx/10-1)^2 -1)

n = length(xx)
x = sample(xx,n, replace=T)
y = sample(yy,n, replace=T)

plot(x,y)

linea = lm(y ~ x)
print(summary(linea))
abline(linea)

print(cor.test(x,y, method='spearman'))

