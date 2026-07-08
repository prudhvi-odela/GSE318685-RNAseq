# ============================================================
# Functional Enrichment Analysis
# GO Biological Process & KEGG Pathway Analysis
# Project: GSE318685 RNA-seq
# ============================================================

library(clusterProfiler)
library(org.Mm.eg.db)
library(enrichplot)
library(AnnotationDbi)

# Read mapped genes
genes <- read.csv("ppi/mapped_genes.csv")

# Remove unmapped genes
genes <- genes[!is.na(genes$SYMBOL), ]

# Convert Gene Symbols to Entrez IDs
entrez <- bitr(
    genes$SYMBOL,
    fromType = "SYMBOL",
    toType = "ENTREZID",
    OrgDb = org.Mm.eg.db
)

# -------------------------------
# GO Biological Process
# -------------------------------

ego <- enrichGO(
    gene = entrez$ENTREZID,
    OrgDb = org.Mm.eg.db,
    keyType = "ENTREZID",
    ont = "BP",
    pAdjustMethod = "BH",
    readable = TRUE
)

write.csv(as.data.frame(ego),
          "results/GO_results.csv",
          row.names = FALSE)

png("results/GO_dotplot.png",
    width = 1800,
    height = 1200,
    res = 200)

dotplot(ego, showCategory = 15)

dev.off()

png("results/GO_barplot.png",
    width = 1800,
    height = 1200,
    res = 200)

barplot(ego, showCategory = 15)

dev.off()

# -------------------------------
# KEGG Pathway Analysis
# -------------------------------

ekegg <- enrichKEGG(
    gene = entrez$ENTREZID,
    organism = "mmu",
    pAdjustMethod = "BH"
)

write.csv(as.data.frame(ekegg),
          "results/KEGG_results.csv",
          row.names = FALSE)

png("results/KEGG_dotplot.png",
    width = 1800,
    height = 1200,
    res = 200)

dotplot(ekegg, showCategory = 15)

dev.off()

png("results/KEGG_barplot.png",
    width = 1800,
    height = 1200,
    res = 200)

barplot(ekegg, showCategory = 15)

dev.off()

cat("\nFunctional enrichment analysis completed successfully.\n")
