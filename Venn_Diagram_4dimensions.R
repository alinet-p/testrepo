if (!require(devtools)) install.packages("devtools")
devtools::install_github("gaospecial/ggVennDiagram")
library("ggVennDiagram")
set.seed(20190708)
genes <- paste("gene",1:1000,sep="")
x <- list(
  A = sample(genes,300), 
  B = sample(genes,525), 
  C = sample(genes,440),
  D = sample(genes,350)
)
library("ggVennDiagram")
# Default plot
ggVennDiagram(x)
ggVennDiagram(x, label_alpha = 0)
ggVennDiagram(x[1:3], label_alpha = 0)
ggVennDiagram(x, label_alpha = 0)
library("ggvenn")
if (!require(devtools)) install.packages("devtools")
devtools::install_github("yanlinlin82/ggvenn")
library("ggvenn")
names(x) <- c("Stage 1","Stage 2","Stage 3", "Stage4")
ggvenn(
  x, 
  fill_color = c("#0073C2FF", "#EFC000FF", "#868686FF", "#CD534CFF"),
  stroke_size = 0.5, set_name_size = 4
)