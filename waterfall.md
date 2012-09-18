Ñ§»­Í¼£ºÒ»¡¢ÆÙ²¼Í¼
========================================================





### Ê²Ã´ÊÇÆÙ²¼Í¼£¿
ÆÙ²¼Í¼´óÖÂÉÏ¿ÉÒÔ¿´×öÊÇÌõĞÎÍ¼µÄ¸Ä½ø£¬²»Í¬µÄÊÇ£¬ÌõĞÎÍ¼¶¼ÊÇ´ÓÍ¬Ò»¸ö»ù×¼Ïß¶Ñ»ıÆğÀ´µÄ£¬Í¨¹ı±È½Ï¸ß°«À´·´Ó³Êı¾İµÄ±ä»¯¡£
¶øÆÙ²¼Í¼³ıÁËµÚÒ»¸ö¾ØÕóÌõÖ®Íâ£¬ºóÃæµÄ¾ØÕóÌõ¶¼²»ÔÙÒÔÁãµãÎª»ù×¼ÏßÀ´»­£¬¶øÊÇÒÔÇ°Ò»¸ö¾ØÕóÌõµÄ¸ß¶ÈÎªÆğµã»­¾ØÕóµ½¸Ã¾ØÕóÌõÎ»ÖÃÉÏÈ¡Öµ£¬ÓÉ´Ë¿ÉÒÔ·´Ó³Ò»¸ö±äÁ¿È¡ÖµµÄÉÏÏÂ±ä»¯¡£Í¬Ê±¿ÉÒÔ¶Ô¸úÇ°ÃæÊı¾İÏà±È£¬ÉÏÉı»òÕßÏÂ½µµÄÇé¿ö¸³ÒÔ²»Í¬ÑÕÉ«£¬ÒÔÀ´À´ÇåÎúÖ±Ë¬µÄ±íÏÖÍ¬Ç°Ò»¸öÊı¾İÏà±È£¬ÉÏÉı»òÕßÏÂ½µµÄÇ÷ÊÆ¡£
### ÆÙ²¼Í¼µÄ»­·¨
#### Êı¾İ¡ª¡ªMonthly numbers of sunspots
Ñ¡ÔñRÖĞ×Ô´øµÄÊı¾İ¼¯¡ª¡ªMonthly numbers of sunspots£¬¼´´Ó1749Äêµ½1997ÄêµÄÃ¿¸öÔÂµÄÌ«ÑôºÚ×ÓÊı¡£Êı¾İÔ­À´µÄĞÎÊ½ÊÇÊ±¼äĞòÁĞĞÎÊ½µÄ£¬ÎÒÃÇ½«Æä¾ØÕó»¯£¬Ñ¡È¡1997ÄêÃ¿ÔÂµÄÊı¾İÀ´Õ¹Ê¾ÆÙ²¼Í¼¡£
#### Õ¹Ê¾ÏÂÔ­Ê¼Êı¾İÒÔ¼°ÕûÌåµÄÍ¼Ïñ

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

![plot of chunk data_plot](https://github.com/jianchongsu/plot/raw/master/learn plot in r/figure/data_plot.png) 

#### ½«Æä¾ØÕó»¯ÒÔ¼°ÕûÀí

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

#### »­ÌõĞÎÍ¼

```r
library(RColorBrewer)
sun.m.1997 = sun.m[249, ]
barplot(sun.m.1997, main = "the number of sunspot in 1997", col = brewer.pal(12, 
    "PuRd"))
```

![plot of chunk barplot and waterfallplot](https://github.com/jianchongsu/plot/raw/master/learn plot in r/figure/barplot_and_waterfallplot.png) 

#### »­ÆÙ²¼Í¼

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

plot(sun.m.1997, xlab = "1997Äê", ylab = "Ì«ÑôºÚ×ÓÊı", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1997)), xaxt = "n", panel.first = grid(), main = "1997ÄêÌ«ÑôºÚ×ÓÊı”<U+3E37><U+383C><U+3E30>
axis(1, 1:12, sprintf(c("Ò»%s", "¶ş%s", "Èı%s", "ËÄ%s", "Îå%s", "Áù%s", "Æß%s", 
    "°Ë%s", "¾Å%s", "Ê®%s", "Ê®Ò»%s", "Ê®¶ş%s"),
rect(1:12 - 0.3, c(0, sun.m.1997[1:11]), 1:12 + 0.3, sun.m.1997, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
```

![plot of chunk waterfall](https://github.com/jianchongsu/plot/raw/master/learn plot in r/figure/waterfall.png) 

ÓÉÉÏÍ¼¿ÉÒÔ¿´³ö¶şÔÂÈıÔÂÏà¶ÔÓÚÉÏÒ»¸öÔÂµÄÌ«ÑôºÚ×ÓÊı¶¼ÓĞÁËÏÂ½µµÄÇ÷ÊÆ£¬ÉõÖÁµÚÈı¸öÔÂ½µµ½ÁË0£¬Ö®ºóµÄËÄÔÂ¡¢ÎåÔÂ¡¢ÁùÔÂ¡¢ÆßÔÂ¶¼ÊÇÃ¿¸öÔÂ±ÈÉÏ¸öÔÂ³öÏÖµÄÌ«ÑôºÚ×ÓÊı¶à£¬ÕûÌåµÄÔö³¤·ù¶ÈÔÚ½µµÍ£¬Ö±µ½µÚ°Ë¸öÔÂÓÖÏÂ½µ£¬¾ÅÔÂ¡¢Ê®ÔÂÉÏÉı£¬Ê®Ò»ÔÂÓÖ½µÏÂÀ´£¬È»ºóÊ®¶şÔÂÉÏÉı¡£´óÌåËµÃ÷ÁË£¬Ã¿¸öÔÂµÄÌ«ÑôºÚ×ÓÊıÏà¶ÔÓÚÇ°Ò»¸öÔÂµÄÊıÁ¿Éı½µ±ä»¯¡£


#### ¶Ô±È1995,1996ÄêºÍ1997ÄêµÄÆÙ²¼Í¼

```r
par(mfrow = c(3, 1))
sun.m.1997 = sun.m[249, ]
plot(sun.m.1997, xlab = "1997Äê", ylab = "Ì«ÑôºÚ×ÓÊı", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1997)), xaxt = "n", panel.first = grid(), main = "1997ÄêÌ«ÑôºÚ×ÓÊı”<U+3E37><U+383C><U+3E30>
axis(1, 1:12, sprintf(c("Ò»%s", "¶ş%s", "Èı%s", "ËÄ%s", "Îå%s", "Áù%s", "Æß%s", 
    "°Ë%s", "¾Å%s", "Ê®%s", "Ê®Ò»%s", "Ê®¶ş%s"),
rect(1:12 - 0.3, c(0, sun.m.1997[1:11]), 1:12 + 0.3, sun.m.1997, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
sun.m.1996 = sun.m[248, ]
plot(sun.m.1996, xlab = "1996Äê", ylab = "Ì«ÑôºÚ×ÓÊı", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1996)), xaxt = "n", panel.first = grid(), main = "1996ÄêÌ«ÑôºÚ×ÓÊı”<U+3E37><U+383C><U+3E30>
axis(1, 1:12, sprintf(c("Ò»%s", "¶ş%s", "Èı%s", "ËÄ%s", "Îå%s", "Áù%s", "Æß%s", 
    "°Ë%s", "¾Å%s", "Ê®%s", "Ê®Ò»%s", "Ê®¶ş%s"),
rect(1:12 - 0.3, c(0, sun.m.1996[1:11]), 1:12 + 0.3, sun.m.1996, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
sun.m.1995 = sun.m[247, ]
plot(sun.m.1996, xlab = "1995Äê", ylab = "Ì«ÑôºÚ×ÓÊı", type = "n", xlim = c(0.5, 
    12.5), ylim = c(0, max(sun.m.1995)), xaxt = "n", panel.first = grid(), main = "1995ÄêÌ«ÑôºÚ×ÓÊı”<U+3E37><U+383C><U+3E30>@	(
axis(1, 1:12, sprintf(c("Ò»%s", "¶ş%s", "Èı%s", "ËÄ%s", "Îå%s", "Áù%s", "Æß%s", 
    "°Ë%s", "¾Å%s", "Ê®%s", "Ê®Ò»%s", "Ê®¶ş%s"),
rect(1:12 - 0.3, c(0, sun.m.1995[1:11]), 1:12 + 0.3, sun.m.1995, col = c("cyan", 
    ifelse(diff(sun.m.1997) < 0, "red", "blue")))
```

![plot of chunk waterfall 96vs97](https://github.com/jianchongsu/plot/raw/master/learn plot in r/figure/waterfall_96vs97.png) 

¿ÉÒÔÇåÎúµÄ¿´³ö£¬Ì«ÑôºÚ×ÓµÄÊıÁ¿µÄ±ä»¯Ã¿¸öÔÂµÄ´óÖÂ±ä»¯¶¼ÊÇÏàËÆµÄ¡£¶şÔÂ¡¢ÈıÔÂµÄÊıÁ¿¶¼»áÏà¶ÔÇ°Ò»¸öÔÂ³öÏÖÌ«ÑôºÚ×ÓµÄÊıÁ¿ÉÙ²»ÉÙ£¬¶øÇÒµÚÈı¸öÔÂ×ÜÊÇ½µµÍµ½0£¬¡£¶øºó,ËÄÔÂ¡¢ÎåÔÂ¡¢ÁùÔÂ¡¢ÆßÔÂ¿ªÊ¼ÖğÔÂÔö¶à£¬µ½ÁË°ËÔÂÓÖ±ÈÆßÔÂ³öÏÖµÄ´ÎÊıÉÙºÜ¶à£¬È»ºó¾ÅÔÂ¡¢Ê®ÔÂÖğÔÂÔö¼Ó£¬Ê®Ò»ÔÂÏÂ½µ£¬È»ºóÊ®¶şÔÂÔÙÔö¶à¡£ËµÃ÷ÁËÌ«ÑôºÚ×ÓÊıÁ¿Ëæ×ÅÔÂ·İµÄÖÜÆÚĞÔ±ä»¯¡£


### ±àĞ´Ò»¸ö¼òµ¥µÄÆÙ²¼Í¼º¯Êı

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

![plot of chunk action](https://github.com/jianchongsu/plot/raw/master/learn plot in r/figure/action.png) 


```r
waterfall(trees[, 2])
```

![plot of chunk actuon2](https://github.com/jianchongsu/plot/raw/master/learn plot in r/figure/actuon2.png) 

¸Ãº¯Êı»¹ÓĞ²»ÉÙÎÊÌâ£¬±ÈÈçy±êÇ©µÄ´¦Àí£¬ÒÔ¼°ÌâÄ¿µÄ´¦Àí£¬¶¼ÓĞ´ıÍêÉÆ£¬ÓĞÊ±¼ä»áÓÅ»¯Ò»ÏÂ¡£


