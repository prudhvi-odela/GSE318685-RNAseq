library(DESeq2)
library(ggplot2)
library(pheatmap)

counts <- read.table("counts/gene_counts.txt", header=TRUE, comment.char="#")

gene_ids <- counts$Geneid

count_matrix <- counts[,7:ncol(counts)]
colnames(count_matrix) <- c("SRR37143650","SRR37143651","SRR37143662","SRR37143663")
rownames(count_matrix) <- gene_ids

sample_info <- read.csv("counts/sample_info.csv", row.names=1)

dds <- DESeqDataSetFromMatrix(
    countData = count_matrix,
    colData = sample_info,
    design = ~ condition
)

dds <- dds[rowSums(counts(dds)) > 10,]

dds <- DESeq(dds)

res <- results(dds)
res <- res[order(res$padj),]

write.csv(as.data.frame(res), "deseq2/deseq2_results.csv")

sig <- subset(as.data.frame(res), padj < 0.05 & abs(log2FoldChange) > 1)
write.csv(sig, "deseq2/significant_genes.csv")

pdf("deseq2/MA_plot.pdf")
plotMA(res, ylim=c(-5,5))
dev.off()

vsd <- vst(dds)

pdf("deseq2/PCA_plot.pdf")
plotPCA(vsd, intgroup="condition")
dev.off()

topGenes <- head(order(rowMeans(counts(dds, normalized=TRUE)), decreasing=TRUE), 50)

pdf("deseq2/heatmap_top50.pdf")
pheatmap(assay(vsd)[topGenes,], scale="row")
dev.off()
