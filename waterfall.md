学画图：一、瀑布图
========================================================





### 什么是瀑布图？
瀑布图大致上可以看做是条形图的改进，不同的是，条形图都是从同一个基准线堆积起来的，通过比较高矮来反映数据的变化。
而瀑布图除了第一个矩阵条之外，后面的矩阵条都不再以零点为基准线来画，而是以前一个矩阵条的高度为起点画矩阵到该矩阵条位置上取值，由此可以反映一个变量取值的上下变化。同时可以对跟前面数据相比，上升或者下降的情况赋以不同颜色，以来来清晰直爽的表现同前一个数据相比，上升或者下降的趋势。
### 瀑布图的画法
#### 数据——Monthly numbers of sunspots
选择R中自带的数据集——Monthly numbers of sunspots，即从1749年到1997年的每个月的太阳黑子数。数据原来的形式是时间序列形式的，我们将其矩阵化，选取1997年每月的数据来展示瀑布图。
#### 展示下原始数据以及整体的图像

```r

head(sunspot.month, 12)
```

```
##  [1]  58.0  62.6  70.0  55.7  85.0  83.5  94.8  66.3  75.9  75.5 158.6
## [12]  85.2
```

```r
plot(sunspot.month)
```

<img src="http://i.imgur.com/6lfs4.png"   style="display:block; margin: auto" alt="plot of chunk data_plot" title="plot of chunk data_plot" /> 

#### 将其矩阵化以及整理

```r
sun.m = matrix(sunspot.month, ncol = 12)
colnames(sun.m) = month.abb
rownames(sun.m) = 1749:1997
head(sun.m)
```

```
##       Jan   Feb  Mar Apr  May  Jun  Jul   Aug  Sep  Oct   Nov  Dec
## 1749 58.0 158.2 69.3 0.0 30.9 67.3 66.9  81.6 23.0 53.2 129.1 12.9
## 1750 62.6 148.1 87.0 0.0 55.6 54.3 68.2 101.2 42.3 64.2 169.6 18.6
## 1751 70.0 112.0 77.3 0.0 55.1 45.4 47.1  98.9 38.8 61.5 173.2 38.5
## 1752 55.7 104.0 84.3 6.6 26.9 41.1 47.1 106.0 41.3 62.8 155.3 21.4
## 1753 85.0 142.5 82.0 0.0 41.3 42.9 55.4  70.3 33.0 74.3 201.3 30.1
## 1754 83.5  80.1 74.0 2.4 26.7 37.7 49.2  65.9 68.8 77.1 192.1 44.0
```

#### 画条形图

```r
library(RColorBrewer)
sun.m.1997 = sun.m[249, ]
barplot(sun.m.1997, main = "the number of sunspot in 1997", col = brewer.pal(12, 
    "PuRd"))
```

<img src="http://i.imgur.com/DkCRI.png"   style="display:block; margin: auto" alt="plot of chunk barplot and waterfallplot" title="plot of chunk barplot and waterfallplot" /> 

#### 画瀑布图

```r
diff(sun.m.1997)
```

```
##    Feb    Mar    Apr    May    Jun    Jul    Aug    Sep    Oct    Nov 
##  -57.8  -91.0   28.9    8.6    7.3    7.5  -30.0   19.8   74.5 -107.9 
##    Dec 
##   32.5
```

```r

plot(sun.m.1997, xlab = "1997年", ylab = "太阳黑子数", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1997)), xaxt = "n", panel.first = grid(), main = "1997年太阳黑子数攼<U+3E37><U+383C><U+3E30>ANY
axis(1, 1:12, sprintf(c("一%s", "二%s", "三%s", "四%s", "五%s", "六%s", "七%s", 
    "八%s", "九%s", "十%s", "十一%s", "十二%s"),rect(1:12 - 0.3, c(0, sun.m.1997[1:11]), 1:12 + 0.3, sun.m.1997, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
```

<img src="http://i.imgur.com/zs3Zw.png"   style="display:block; margin: auto" alt="plot of chunk waterfall" title="plot of chunk waterfall" /> 

由上图可以看出二月三月相对于上一个月的太阳黑子数都有了下降的趋势，甚至第三个月降到了0，之后的四月、五月、六月、七月都是每个月比上个月出现的太阳黑子数多，整体的增长幅度在降低，直到第八个月又下降，九月、十月上升，十一月又降下来，然后十二月上升。大体说明了，每个月的太阳黑子数相对于前一个月的数量升降变化。


#### 对比1995,1996年和1997年的瀑布图

```r
par(mfrow = c(3, 1))
sun.m.1997 = sun.m[249, ]
plot(sun.m.1997, xlab = "1997年", ylab = "太阳黑子数", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1997)), xaxt = "n", panel.first = grid(), main = "1997年太阳黑子数攼<U+3E37><U+383C><U+3E30>ANY
axis(1, 1:12, sprintf(c("一%s", "二%s", "三%s", "四%s", "五%s", "六%s", "七%s", 
    "八%s", "九%s", "十%s", "十一%s", "十二%s"),rect(1:12 - 0.3, c(0, sun.m.1997[1:11]), 1:12 + 0.3, sun.m.1997, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
sun.m.1996 = sun.m[248, ]
plot(sun.m.1996, xlab = "1996年", ylab = "太阳黑子数", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1996)), xaxt = "n", panel.first = grid(), main = "1996年太阳黑子数攼<U+3E37><U+383C><U+3E30>
axis(1, 1:12, sprintf(c("一%s", "二%s", "三%s", "四%s", "五%s", "六%s", "七%s", 
    "八%s", "九%s", "十%s", "十一%s", "十二%s"),rect(1:12 - 0.3, c(0, sun.m.1996[1:11]), 1:12 + 0.3, sun.m.1996, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
sun.m.1995 = sun.m[247, ]
plot(sun.m.1996, xlab = "1995年", ylab = "太阳黑子数", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1995)), xaxt = "n", panel.first = grid(), main = "1995年太阳黑子数攼<U+3E37><U+383C><U+3E30>
axis(1, 1:12, sprintf(c("一%s", "二%s", "三%s", "四%s", "五%s", "六%s", "七%s", 
    "八%s", "九%s", "十%s", "十一%s", "十二%s"),rect(1:12 - 0.3, c(0, sun.m.1995[1:11]), 1:12 + 0.3, sun.m.1995, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
```

<img src="http://i.imgur.com/qU0W2.png"   style="display:block; margin: auto" alt="plot of chunk waterfall 96vs97" title="plot of chunk waterfall 96vs97" /> 

可以清晰的看出，太阳黑子的数量的变化每个月的大致变化都是相似的。二月、三月的数量都会相对前一个月出现太阳黑子的数量少不少，而且第三个月总是降低到0，。而后,四月、五月、六月、七月开始逐月增多，到了八月又比七月出现的次数少很多，然后九月、十月逐月增加，十一月下降，然后十二月再增多。说明了太阳黑子数量随着月份的周期性变化。


### 编写一个简单的瀑布图函数

```r
waterfall = function(data) {
    # ylab=as.character(ylab)
    plot(data, type = "n", xlim = c(0, length(data) + 0.5), ylim = c(0, max(data)), 
        xaxt = "n", panel.first = grid(), main = c("The Waterfall-plot"))
    axis(1, 1:length(data), names(data))
    rect(1:length(data) - 0.3, c(0, data[1:length(data) - 1]), 1:length(data) + 
        0.3, data, col = c("cyan", ifelse(diff(data) < 0, "red", "blue")))
}
```


```r
waterfall(sun.m.1997)
```

<img src="http://i.imgur.com/ueFrs.png"   style="display:block; margin: auto" alt="plot of chunk action" title="plot of chunk action" /> 


```r
waterfall(trees[, 2])
```

<img src="http://i.imgur.com/livfX.png"   style="display:block; margin: auto" alt="plot of chunk actuon2" title="plot of chunk actuon2" /> 

该函数还有不少问题，比如y标签的处理，以及题目的处理，都有待完善，有时间会优化一下。


