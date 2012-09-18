ѧ��ͼ��һ���ٲ�ͼ
========================================================





### ʲô���ٲ�ͼ��
�ٲ�ͼ�����Ͽ��Կ���������ͼ�ĸĽ�����ͬ���ǣ�����ͼ���Ǵ�ͬһ����׼�߶ѻ������ģ�ͨ���Ƚϸ߰�����ӳ���ݵı仯��
���ٲ�ͼ���˵�һ��������֮�⣬����ľ����������������Ϊ��׼��������������ǰһ���������ĸ߶�Ϊ��㻭���󵽸þ�����λ����ȡֵ���ɴ˿��Է�ӳһ������ȡֵ�����±仯��ͬʱ���ԶԸ�ǰ��������ȣ����������½���������Բ�ͬ��ɫ������������ֱˬ�ı���ͬǰһ��������ȣ����������½������ơ�
### �ٲ�ͼ�Ļ���
#### ���ݡ���Monthly numbers of sunspots
ѡ��R���Դ������ݼ�����Monthly numbers of sunspots������1749�굽1997���ÿ���µ�̫��������������ԭ������ʽ��ʱ��������ʽ�ģ����ǽ�����󻯣�ѡȡ1997��ÿ�µ�������չʾ�ٲ�ͼ��
#### չʾ��ԭʼ�����Լ������ͼ��

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

#### ��������Լ�����

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

#### ������ͼ

```r
library(RColorBrewer)
sun.m.1997 = sun.m[249, ]
barplot(sun.m.1997, main = "the number of sunspot in 1997", col = brewer.pal(12, 
    "PuRd"))
```

<img src="http://i.imgur.com/DkCRI.png"   style="display:block; margin: auto" alt="plot of chunk barplot and waterfallplot" title="plot of chunk barplot and waterfallplot" /> 

#### ���ٲ�ͼ

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

plot(sun.m.1997, xlab = "1997��", ylab = "̫��������", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1997)), xaxt = "n", panel.first = grid(), main = "1997��̫����������<U+3E37><U+383C><U+3E30>ANY
axis(1, 1:12, sprintf(c("һ%s", "��%s", "��%s", "��%s", "��%s", "��%s", "��%s", 
    "��%s", "��%s", "ʮ%s", "ʮһ%s", "ʮ��%s"),rect(1:12 - 0.3, c(0, sun.m.1997[1:11]), 1:12 + 0.3, sun.m.1997, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
```

<img src="http://i.imgur.com/zs3Zw.png"   style="display:block; margin: auto" alt="plot of chunk waterfall" title="plot of chunk waterfall" /> 

����ͼ���Կ������������������һ���µ�̫���������������½������ƣ������������½�����0��֮������¡����¡����¡����¶���ÿ���±��ϸ��³��ֵ�̫���������࣬��������������ڽ��ͣ�ֱ���ڰ˸������½������¡�ʮ��������ʮһ���ֽ�������Ȼ��ʮ��������������˵���ˣ�ÿ���µ�̫�������������ǰһ���µ����������仯��


#### �Ա�1995,1996���1997����ٲ�ͼ

```r
par(mfrow = c(3, 1))
sun.m.1997 = sun.m[249, ]
plot(sun.m.1997, xlab = "1997��", ylab = "̫��������", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1997)), xaxt = "n", panel.first = grid(), main = "1997��̫����������<U+3E37><U+383C><U+3E30>ANY
axis(1, 1:12, sprintf(c("һ%s", "��%s", "��%s", "��%s", "��%s", "��%s", "��%s", 
    "��%s", "��%s", "ʮ%s", "ʮһ%s", "ʮ��%s"),rect(1:12 - 0.3, c(0, sun.m.1997[1:11]), 1:12 + 0.3, sun.m.1997, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
sun.m.1996 = sun.m[248, ]
plot(sun.m.1996, xlab = "1996��", ylab = "̫��������", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1996)), xaxt = "n", panel.first = grid(), main = "1996��̫����������<U+3E37><U+383C><U+3E30>
axis(1, 1:12, sprintf(c("һ%s", "��%s", "��%s", "��%s", "��%s", "��%s", "��%s", 
    "��%s", "��%s", "ʮ%s", "ʮһ%s", "ʮ��%s"),rect(1:12 - 0.3, c(0, sun.m.1996[1:11]), 1:12 + 0.3, sun.m.1996, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
sun.m.1995 = sun.m[247, ]
plot(sun.m.1996, xlab = "1995��", ylab = "̫��������", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1995)), xaxt = "n", panel.first = grid(), main = "1995��̫����������<U+3E37><U+383C><U+3E30>
axis(1, 1:12, sprintf(c("һ%s", "��%s", "��%s", "��%s", "��%s", "��%s", "��%s", 
    "��%s", "��%s", "ʮ%s", "ʮһ%s", "ʮ��%s"),rect(1:12 - 0.3, c(0, sun.m.1995[1:11]), 1:12 + 0.3, sun.m.1995, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
```

<img src="http://i.imgur.com/qU0W2.png"   style="display:block; margin: auto" alt="plot of chunk waterfall 96vs97" title="plot of chunk waterfall 96vs97" /> 

���������Ŀ�����̫�����ӵ������ı仯ÿ���µĴ��±仯�������Ƶġ����¡����µ������������ǰһ���³���̫�����ӵ������ٲ��٣����ҵ����������ǽ��͵�0��������,���¡����¡����¡����¿�ʼ�������࣬���˰����ֱ����³��ֵĴ����ٺܶ࣬Ȼ����¡�ʮ���������ӣ�ʮһ���½���Ȼ��ʮ���������ࡣ˵����̫���������������·ݵ������Ա仯��


### ��дһ���򵥵��ٲ�ͼ����

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

�ú������в������⣬����y��ǩ�Ĵ����Լ���Ŀ�Ĵ������д����ƣ���ʱ����Ż�һ�¡�


