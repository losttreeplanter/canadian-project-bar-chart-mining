############ works


library(ggplot2)
library(readr)


projectsprov <- read_csv("C:/Users/mmccrae/Downloads/Type of Projects Nov 2017 Canada Province - Sheet1.csv")

projectsprov$ProjectR <- factor(projectsprov$ProjectR, levels=c("PEA and Beyond", "Advanced Exploration", "Exploration", "Prospect"))


ggplot(data=projectsprov, aes(x=reorder(ProvinceCount, CountProject), y=CountProject, fill=ProjectR)) +
  geom_bar(stat="identity") +
  coord_flip() +
  theme_minimal() +
  scale_fill_manual(values=c('#8dd3c7','#ffffb3','#bebada','#fb8072')) 

#############making pretty


library(ggplot2)
library(readr)


projectsprov <- read_csv("C:/Users/mmccrae/Downloads/Type of Projects Nov 2017 Canada Province - Sheet1.csv")

projectsprov$ProjectR <- factor(projectsprov$ProjectR, levels=c("PEA and Beyond", "Advanced Exploration", "Exploration", "Prospect"))




ggplot(data=projectsprov, aes(x=reorder(ProvinceCount, CountProject), y=CountProject, fill=ProjectR)) +
  geom_bar(stat="identity") +
  coord_flip() +
  #theme(axis.title.x=element_blank(), axis.text.x=element_blank(), axis.ticks.x=element_blank()) +
  theme_classic() +
  scale_fill_manual(values=c('#8dd3c7','#ffffb3','#bebada','#fb8072')) +
  theme(legend.position="right") +
  ggtitle("Mining Project Stages By Province") +
  xlab("") + 
  ylab("Number of Projects") +
  scale_fill_discrete(name="Project Stages", breaks=c("PEA and Beyond", "Advanced Exploration", "Exploration", "Prospect")) +
  geom_text(aes(label=CountProject),position=position_stack(vjust=.5))

