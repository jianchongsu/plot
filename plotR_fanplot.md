��ͼ����Fan Plot
========================================================





�����˵��Ӿ�Ч����������жϻ᲻̫׼ȷ��������ͳ���������Ա�ܲ�ϲ����ͼ�����ǻ����ʹ������ͼ�Լ���ͼ��Ҳ�����ԭ�򣬱�ͼ��R�е�ѡ��Ҳ���ٵĿ��������˻���������һ���򵥵�����֮�⣬Ҳ�Ϳ���*plotrix*�������˻�3D��ͼ�ķ�ʽ����������ͳ��ѧ�ҵĳ�Ц

����������һ������ı�ͼ���������Ϊ*��ͼ*�����ڱ�ͼ��̫�ñȽϴ�С���٣���ͼ��������ʾÿ�����͵Ĵ�С�������С����������ߣ��ڶ�С��ֻ��ʾ������С�Ķ���Ĳ��֣�֮��Ҳ�ǵݽ�����ʾ����Ĳ��֣��Դ˴ﵽһĿ��Ȼ�Ƚϴ�С��Ŀ�ģ�



{% highlight r %}
library(plotrix)
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Aus", "Ger", "Fra")
fan.plot(slices, labels = lbls, main = "Fan Plot")
{% endhighlight %}

<img src="http://i.imgur.com/b8KQe.png" title="plot of chunk exa" alt="plot of chunk exa" style="display:block; margin: auto" />

���￴����������С��Aus��������ߣ������Ҷ�Ӧ�Ŵ�С�����˳���൱�������������Դ������ɴ�����ʾ��С��
���Ҳ��һ�����⣬һ�������������ֵ��ͬ���ͻ������鷳.���ｫUK��ֵ�ĳ�10.

{% highlight r %}
slices <- c(10, 10, 4, 16, 8)

fan.plot(slices, labels = lbls, main = "Fan Plot")
{% endhighlight %}

<img src="http://i.imgur.com/eYNOn.png" title="plot of chunk ea" alt="plot of chunk ea" style="display:block; margin: auto" />

��ʱUK��US�������һ����ֻ��ͨ���뾶�Ĵ�С��΢��֪������������һ������ֵ����Ч���Ͽ���Ҳ�����ˡ�
����Ҳ������һ����ʽ�ˡ�

