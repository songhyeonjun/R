# packages install
install.packages('cowsay')

# package use!
# java default import
# import java.lang.*;
# System, String
# library(base)

library(cowsay);

say('안녕!! 나는 고양이야.', by='cat');
say('안녕!! 좋은 아침...', by='snowman');

########################################
library(ggplot2)

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) + geom_point()
