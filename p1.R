xx = seq(0,4,.4)
yy = 2-xx^2 #xx^4 + 10

n = length(xx)
x = xx #sample(xx, n, replace=T)
y1 = yy #sample(yy, n, replace=T)

plot(x,y1)

linea = lm(y1 ~  x)

print(summary(linea))

abline(linea)

print(cor.test(x,y1, method='spearman'))

yy = 2 + x^2 #xx^4 - 10
x = xx #sample(xx, n, replace=T)
y2 = yy #sample(yy, n, replace=T)

plot(x,y2)
linea2 = lm(y2 ~ x)
print(summary(linea2))
abline(linea2)

print(cor.test(x,y2, method='spearman'))

