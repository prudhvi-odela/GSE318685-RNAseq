library(ggplot2)

res <- read.csv("results/deseq2_results.csv")

res$group <- "Not Significant"
res$group[res$padj < 0.05 & res$log2FoldChange > 1] <- "Upregulated"
res$group[res$padj < 0.05 & res$log2FoldChange < -1] <- "Downregulated"

pdf("results/volcano_plot.pdf", width=8, height=6)

ggplot(res, aes(x=log2FoldChange, y=-log10(padj), color=group)) +
  geom_point(size=1.5) +
  scale_color_manual(values=c(
    "Upregulated"="red",
    "Downregulated"="blue",
    "Not Significant"="grey"
  )) +
  theme_minimal() +
  labs(
    title="Control vs Mutant",
    x="log2 Fold Change",
    y="-log10 Adjusted P-value"
  )

dev.off()
