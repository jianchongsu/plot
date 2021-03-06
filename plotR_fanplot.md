扇图——Fan Plot
========================================================





由于人的视觉效果对面积的判断会不太准确，所以在统计领域的人员很不喜欢饼图。他们会更常使用条形图以及点图。也是这个原因，饼图在R中的选项也是少的可怜，除了基础包中有一个简单的命令之外，也就看到*plotrix*包增加了话3D饼图的方式，但又找了统计学家的嘲笑

这里来介绍一个变异的饼图，这里称作为*扇图*。鉴于饼图不太好比较大小多少，扇图从左到右显示每个类型的大小，面积最小的排在最左边，第二小的只显示出比最小的多出的部分，之后也是递进的显示多出的部分，以此达到一目了然比较大小的目的：



{% highlight r %}
library(plotrix)
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Aus", "Ger", "Fra")
fan.plot(slices, labels = lbls, main = "Fan Plot")
{% endhighlight %}

<img src="http://i.imgur.com/b8KQe.png" title="plot of chunk exa" alt="plot of chunk exa" style="display:block; margin: auto" />

这里看到，数据最小的Aus排在最左边，由左到右对应着从小到大的顺序，相当于做数据做了以此排序。由此来显示大小。
这个也有一个问题，一旦其中有两项的值相同，就会遇到麻烦.这里将UK的值改成10.

{% highlight r %}
slices <- c(10, 10, 4, 16, 8)

fan.plot(slices, labels = lbls, main = "Fan Plot")
{% endhighlight %}

<img src="http://i.imgur.com/eYNOn.png" title="plot of chunk ea" alt="plot of chunk ea" style="display:block; margin: auto" />

这时UK与US的面积就一样，只能通过半径的大小稍微的知道那里有两个一样的数值，从效果上看，也是了了。
但这也算是另一个形式了。

