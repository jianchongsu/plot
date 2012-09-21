R��ͼ�����ʺ�ͼ
========================================================



### ����
��ȻR��Ϊ���ô��ʹ����ɫ���㣬�ṩ��rainbow()�ĺ����������ô�Ҳ�̫Ϊ��ɫ������ܲ��ܶԵ���������������֣�������һ���ʺ�ͼ�أ�
������Ӧ�úܼ򵥣�������Բ���£���Բ���Ŀ��ȵ�����һ����ɫ��Ȼ���߸�Բ�����е�����һ�𲻾͵��ˡ��⵱Ȼ��һ��˼·��
�������õķ�������plot()�л�Բ����ɢ��ͼ�ķ�������ɢ��ͼ�еĲ���type���Ըģ�����������ʾ�㣬�����ߣ��ߵĿ����ֿ��Ա仯������������Ӧ�þ��㹻�ˡ���������ɢ��ͼ��صķ���һ������
### ����
�����ߵĺ���curve��plot�Լ������ı�text()���ӡ�

### R ʵ��

#### ��һ������������

```r
x.value = seq(-4, 4, length = 1000)
y.value = sqrt(16 - x.value^2) - 2
```

����û��ȡ������Բ������Ϊ���������п����Ĳʺ�����ܿ�����Բ�ģ�����һ���ӻ���ɵġ�

#### �ڶ��� ������ǰ��ɫ����ͼ����

```r
plot(x.value, y.value, xlab = NA, ylab = NA, ylim = c(-6, 8), xlim = c(-10, 
    10), type = "l", lwd = 10, col = rainbow(8)[7], xaxt = "n", yaxt = "n")
text(0, 6, "Rainbow in R", col = "honeydew")
```

<img src="http://i.imgur.com/S98mT.png"   style="display:block; margin: auto" alt="plot of chunk par" title="plot of chunk par" /> 

����������ͼ��չ�ֵ�type�ǡ�l���������ߡ��������˲ʺ�����ڲ���ɫ����ɫ���ڿ�ʼ��ʱ������������ɫ�ı���ɫ��
���ﲹ��һ�䣬�ҿ�ʼ��ʱ��ֱ��plOt(x)����ͼ��x�ķ�Χ��1-1000��������-4-4���������������ȱʧ��x�����ݣ�plot�л���1��n������x��ֵ��
> ʵ������֪��

#### ��������������ɲʺ�ͼ
����Ĺ������е���򻯣���������Ϊ��һЩͬ��Բ��������һ�𣬻��Ŀ��Ⱦ�������ͬ��Բ�뾶�Ĳ�������֪�����ߵĿ���Ϊ10��ʱ�����ڵ�����Բ���İ뾶֮��Ϊ0.4��ʱ�� �����á�����ֻ��Ҫ�����ߺ�����һ��ÿ������0.4�İ뾶�����Ǹı�Բ������ɫ����rainbow(7)�ṩ��,�������������������ɡ��Ƚ����򻯵����Ա�̺������£�

```r
rain.bow = function(r, n) {
    curve(sqrt((r)^2 - x^2) - 2, from = -r, to = r, type = "l", lwd = 10, col = rainbow(8)[n], 
        add = TRUE)
}
```

��ô���µĹ����Ϳ�����������ˣ���ʵ���Ҳ���Գ��򻯣���


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

<img src="http://i.imgur.com/MUGjV.png"   style="display:block; margin: auto" alt="plot of chunk rain.bow.output" title="plot of chunk rain.bow.output" /> 

���Ǿ������һ��������С�ʺ磬���Ǻ���������м����Ĳ�̫һ������������ɫ���ԣ���Google֪���ʺ����⵽�ڵ���ɫ�Ǻ�Ȼ��������ϡ�
�����ǿɰ���rainbow(7)�ṩ����������ɫ�������ǰ�������˳�����У�����˵����û����ɲʺ����ɫ֮һ�ء�������rainbow(7)����������ɫ��
<img src="http://i.imgur.com/vhevV.png"   style="display:block; margin: auto" alt="plot of chunk rainbow(7).bar" title="plot of chunk rainbow(7).bar" /> 

��������ɫ��ȱ�ٳ�ɫ��ȴ���˷ۺ�ɫ��
������Ҫ��֮ǰ��������ɫ�������ļ��ɣ�
<img src="http://i.imgur.com/wKQTm.png"   style="display:block; margin: auto" alt="plot of chunk finish" title="plot of chunk finish" /> 

