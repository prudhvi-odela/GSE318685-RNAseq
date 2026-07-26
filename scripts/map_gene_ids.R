# ============================================================
# Load required packages
# ============================================================

library(AnnotationDbi)
library(org.Mm.eg.db)

# ============================================================
# Read significant genes
# ============================================================

deg <- read.csv(
  "results/significant_genes.csv",
  row.names = 1
)

# ============================================================
# Inspect dataset
# ============================================================

cat("Number of significant genes:", nrow(deg), "\n")

head(deg)

# ============================================================
# Extract Ensembl IDs
# ============================================================

ensembl_ids <- rownames(deg)

cat("First five Ensembl IDs:\n")
print(head(ensembl_ids))###############################################################
# Project : Integrative RNA-seq Analysis of GSE318685
#
# Script  : map_gene_ids.R
#
# Objective:
# Convert significant Mus musculus Ensembl gene IDs into
# official gene symbols for downstream protein-protein
# interaction (PPI) network analysis.
#
# Input:
# results/significant_genes.csv
#
# Output:
# ppi/gene_symbols.txt
# ppi/mapped_genes.csv
# ppi/unmapped_genes.csv
#
# Author:
# Prudhvi Teja Odela
#
# Date:
# 2026-07-02
###############################################################
# ============================================================
# Remove Ensembl version numbers
# ============================================================

clean_ids <- sub("\\..*", "", ensembl_ids)

cat("\nFirst five cleaned Ensembl IDs:\n")
print(head(clean_ids))
# ============================================================
# Map Ensembl IDs to official gene symbols
# ============================================================

mapped_genes <- AnnotationDbi::select(
    org.Mm.eg.db,
    keys = clean_ids,
    keytype = "ENSEMBL",
    columns = c("SYMBOL", "GENENAME")
)

# ============================================================
# Remove duplicate mappings
# ============================================================

mapped_genes <- unique(mapped_genes)

# ============================================================
# Display mapping summary
# ============================================================

cat("\nMapping Summary\n")
cat("--------------------------\n")
cat("Input Ensembl IDs :", length(clean_ids), "\n")
cat("Mapped Genes      :", sum(!is.na(mapped_genes$SYMBOL)), "\n")
cat("Unmapped Genes    :", sum(is.na(mapped_genes$SYMBOL)), "\n")

cat("\nFirst mapped genes:\n")
print(head(mapped_genes))
# ============================================================
# Save mapped genes
# ============================================================

write.csv(
    mapped_genes,
    "ppi/mapped_genes.csv",
    row.names = FALSE
)

# ============================================================
# Save gene symbols only
# ============================================================

gene_symbols <- mapped_genes$SYMBOL

gene_symbols <- gene_symbols[!is.na(gene_symbols)]

write.table(
    gene_symbols,
    "ppi/gene_symbols.txt",
    quote = FALSE,
    row.names = FALSE,
    col.names = FALSE
)

# ============================================================
# Save unmapped genes
# ============================================================

unmapped_genes <- mapped_genes[is.na(mapped_genes$SYMBOL), ]

write.csv(
    unmapped_genes,
    "ppi/unmapped_genes.csv",
    row.names = FALSE
)

cat("\nFiles successfully written to ppi/\n")
