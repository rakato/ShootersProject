
#read in file
yg<-read.csv("returning_topscorers_NCAA2015.csv", stringsAsFactors=FALSE)

#sniper ratio
u<-ggplot(yg, aes(yg$sni, yg$Team))
u+geom_point(color="red", size=3)+ggtitle("Top 30 Returning Goal Scorers D1 Lacrosse")
+ylab("Team")+xlab("S^2(Sniper Score): SOG% * Shot%")
 
#turnovers per goal
t<-ggplot(yg, aes(yg$topergoal, yg$Team))
t+geom_point(color="blue", size=3)+ggtitle("Top Returning Goal Scorers D1 Lacrosse")
+ylab("Team")+xlab("Turnovers per Goal")

#shots per game
s<-ggplot(yg, aes(yg$shotspergame, yg$Team))
s+geom_point(color="green", size=3)+ggtitle("Top Returning Goal Scorers D1 Lacrosse")
+ylab("Team")+xlab("Shots per Game")

u+geom_point(color="Light Blue", alpha=1, size=yg$Goals)
+ggtitle("Top Returning Goal Scorers D1 Lacrosse")
+ylab("Sniper Score: SOG% * Shot%")
+xlab("Team")+geom_text(label=yg$Name)
+geom_text(label=yg$Goals, vjust=2)+coord_flip()