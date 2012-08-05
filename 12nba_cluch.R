
library(XML)
library(drc)
url="http://www.82games.com/1112/CSORT11.HTM"
nba.clu=readHTMLTable(readLines(url),which=3,header=F)
#nba=read.csv("http://datasets.flowingdata.com/ppg2012.csv",",sep=",")

nba.clu=nba.clu[-1,]
colnames(nba.clu)=c("Team","Player","Gm","Min","+/-","+/-",
"Fga","Fg%","3pA","3p%","Fta","Ft%","Pts",
"Ast'd","Reb","Ast","T/o","Blk","Stl")
nba.clu=nba.clu[-1,]
team.name=c("CLE","OKC","NYK","OKC","LAC","IND","GSW","ATL","MIN","BOS","SAS","LAL","DAL","PHI","DET","NJN","MIA","NOH","MEM","SAC","MEM","DAL","LAL","SAS","ATL","POR","NJN",
"SAC","MIL","MIA","MIA","ORL","POR","ORL","ORL","SAC","HOU","MIL","HOU","CHA",
"SAS","UTA","HOU","PHO","MIN","PHO","MIL","PHI","WAS","BOS","DEN","DEN","HOU",
"BOS","POR","DET","MIN","UTA","MEM","POR","IND","PHO","HOU","UTA","DET","ORL",
"ORL","DEN","TOR","DEN","BOS","MIL","NJN","LAL","GSW","NOH","PHO","ATL","IND",
"LAC","IND","SAC","NOH","WAS","LAC","DEN","MEM","UTA","NYK","LAC","NOH","HOU",
"SAS","HOU","MIA","DEN","MEM","SAC","LAL","LAL","PHO","TOR","ATL","PHI","CLE",
"LAC","GSW","DET","GSW","NYK","MIA","WAS","GSW","TOR","ATL","HOU","LAL","NOH",
"UTA","NYK","BOS","NYK","IND","DAL","LAC","CLE","PHI","MIL","SAS","POR","SAS",
"OKC","OKC","POR","DAL","ATL","NOH","TOR","OKC","MIA")



player.name=c("Irving","Durant","Anthony","Westbrook","Paul","Granger","Ellis",
              "Joe.Johnson","Love","Pierce","Parker","Bryant","Terry","L.Williams",
              "Stuckey","Morrow","James","Jack","T.Allen","Evans","Gay","Nowitzki",
              "Bynum","Duncan","Smith","Felton","D.Williams","Thornton","Gooden",
              "Wade","Bosh","Redick","Aldridge","Turkoglu","Anderson","Thomas",
              "Lowry","Ilyasova","Patterson","Augustin","Neal","A.Jefferson","Dragic",
              "Nash","Rubio","Frye","Jennings","Holiday","Jordan.Crawford","Garnett",
              "Nene","Harrington","Martin","R.Allen","J.Crawford",  
              "Monroe", "Ridnour","Millsap","Mayo","Matthews",  "Hibbert",  
              "Dudley", "C.Lee", "Hayward","Knight", "Nelson", "Howard", 
              "Gallinari", "Calderon",  "Lawson", "Bass","Dunleavy",  "Humphries", 
              "Barnes", "D.Lee", "Ayon","Gortat", "Mar.Williams",  "Collison",  
              "Mo.Williams",  "West","Cousins","Belinelli", "Wall","Griffin",  
              "Afflalo","Conley", "Harris", "Shumpert",  "Foye","Ariza", 
              "Scola",  "Step.Jefferson", "Parsons","Chalmers",  "Miller", "M.Gasol", 
              "Salmons","P.Gasol",  "Fisher", "Hill","A.Johnson", "Teague",  
              "Brand",  "Gee", "Jordan", "Wright", "Prince", "Thompson",  
              "Chandler",  "Haslem", "Booker", "Rush","DeRozan","Pachulia",  
              "Dalembert", "WorldPeace","Kaman",  "Miles",  "Fields", "Rondo",
              "Stoudemire","George", "Marion", "Butler", "Jamison","Iguodala", 
              "Delfino","Bonner", "Batum",  "Green",  "Harden", "Ibaka",  
              "Wallace","Kidd","Hinrich","Vasquez","James.Johnson", "Perkins", 
              "Battier")


nba.clu=nba.clu[,-c(1,2)]
nba.clu=cbind(team.name,player.name,nba.clu)
colnames(nba.clu)=c("Team","Player","Gm","Min","+/-","+/-",
                    "Fga","Fg%","3pA","3p%","Fta","Ft%","Pts",
                    "Ast'd","Reb","Ast","T/o","Blk","Stl")
#write.table(nba.clu,"F:/苏建冲出品/数据集/12nba.cluch.txt")


#analyze the data, i want to plot the heatmap
nba=nba.clu[1:50,]
nba <- nba[order(nba$Pts),]
row_name=nba[,2]
nba=nba[,-c(1,2)]
rownames(nba) <- row_name

nba_matrix <- data.matrix(nba)
nr=nrow(nba_matrix)
nc=ncol(nba_matrix)
png("12NBA_players_heatmap.png",width = 1000, height =1000)
heatmap(nba_matrix, Rowv=NA, Colv=NA, col=cm.colors(256),margins=c(4,10), revC=FALSE, scale='column',cexRow = 1+ 1/log10(nr), cexCol = 1 + 1/log10(nc))
dev.off()
png("12NBA_players_heatmap2.png",width = 1000, height =1000)
heatmap(nba_matrix, Rowv=NA, Colv=NA, col=heat.colors(256), revC=FALSE, scale="column", margins=c(5,10))
dev.off()
png("12NBA_players_heatmap3.png",width = 1000, height =1000)
heatmap(nba_matrix, col=cm.colors(256),margins=c(4,10), revC=FALSE, scale='column',cexRow = 0.2+ 1/log10(nr), cexCol = 0.3 + 1/log10(nc))
dev.off()