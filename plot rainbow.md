R画图：画彩虹图
========================================================
### 引子
既然R中为了让大家使用颜色方便，提供了rainbow()的函数，可以让大家不太为颜色发愁，那能不能对得起这个函数的名字，画出来一个彩虹图呢？
想起来应该很简单，就是用圆弧呗，把圆弧的宽度当做是一个颜色，然后七个圆弧相切的贴在一起不就得了。这当然是一种思路。
我这里用的方法就是plot()中画圆方程散点图的方法，画散点图中的参数type可以改，可以让它显示点，或者线，线的宽度又可以变化，于是这样，应该就足够了。就是七条散线图规矩的放在一起啦。
### 工具
画曲线的函数curve和plot以及添加文本text()足矣。

### R 实现

#### 第一步：生成数据

```r
x.value = seq(-4, 4, length = 1000)
y.value = sqrt(16 - x.value^2) - 2
```

这里没有取整个半圆，是因为好像生活中看到的彩虹很少能看到半圆的，大都是一个劣弧组成的。

#### 第二步 ：设置前景色和作图区域

```r
plot(x.value, y.value, xlab = NA, ylab = NA, ylim = c(-6, 8), xlim = c(-10, 
    10), type = "l", lwd = 10, col = rainbow(8)[7], xaxt = "n", yaxt = "n")
text(0, 6, "Rainbow in R", col = "honeydew")
```

![plot of chunk par](figure/par.png) 

这里设置了图形展现的type是“l”，即连线。并画出了彩虹的最内侧颜色，紫色，在开始的时候设置了天蓝色的背景色。
这里补充一句，我开始的时候直接plOt(x)发现图中x的范围是1-1000，而不是-4-4，才想起来，如果缺失了x的数据，plot中会以1：n来补充x的值。
> 实践出真知！

#### 第三步：程序化完成彩虹图
下面的工作就有点程序化，不过是因为是一些同心圆弧相切在一起，弧的宽度就是两个同心圆半径的差，经试验可知，在线的宽度为10的时候，相邻的两个圆弧的半径之差为0.4的时候 就正好。于是只需要用曲线函数，一来每次增加0.4的半径，而是改变圆弧的颜色（由rainbow(7)提供）,于是设置两个参数即可。先将程序化的语言编程函数如下：

```r
rain.bow = function(r, n) {
    curve(sqrt((r)^2 - x^2) - 2, from = -r, to = r, type = "l", lwd = 10, col = rainbow(8)[n], 
        add = TRUE)
}
```

那么余下的工作就可以如下完成了（其实这个也可以程序化）：


```r
plot(x.value, y.value, xlab = NA, ylab = NA, ylim = c(-6, 8), xlim = c(-10, 
    10), type = "l", lwd = 10, col = rainbow(8)[7], xaxt = "n", yaxt = "n")
rain.bow(4.4, 6)
rain.bow(4.8, 5)
rain.bow(5.2, 4)
rain.bow(5.6, 3)
rain.bow(6, 2)
rain.bow(6.4, 1)
```

![plot of chunk rain.bow.output](figure/rain_bow_output.png) 

于是就完成了一个初步的小彩虹，但是好像更生活中见到的不太一样。可能是颜色不对，经Google知，彩虹由外到内的颜色是红橙黄绿青蓝紫。
而我们可爱的rainbow(7)提供的这七种颜色，并不是按照这种顺序排列，或者说其中没有组成彩虹的七色之一呢。来看下rainbow(7)是哪七种颜色：
![plot of chunk rainbow(7).bar](figure/rainbow_7__bar.png) 

这七种颜色中缺少橙色，却多了粉红色。
于是需要将之前的少许颜色略作更改即可：
![plot of chunk finish](figure/finish.png) 


