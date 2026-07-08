# Project Progress

## Sprint 1 — RNA-seq Differential Expression Analysis

### Completed
- Downloaded raw RNA-seq sequencing data.
- Performed quality assessment using FastQC.
- Trimmed low-quality reads using fastp.
- Aligned reads to the Mus musculus reference genome using HISAT2.
- Quantified gene expression using featureCounts.
- Identified differentially expressed genes using DESeq2.
- Generated PCA plot, MA plot, volcano plot, and heatmap.
- Exported differential expression results.

**Status:** ✅ Completed

---

## Sprint 2 — Gene Identifier Mapping

### Completed
- Installed Bioconductor annotation packages.
- Converted Ensembl gene IDs to official Mus musculus gene symbols.
- Generated mapped and unmapped gene reports.
- Prepared STRING-compatible gene list.

**Status:** ✅ Completed

---

## Sprint 3 — Protein–Protein Interaction (PPI) Analysis

### Completed
- Performed Protein–Protein Interaction analysis using the STRING database.
- Generated a high-resolution PPI network.
- Exported STRING interaction table.
- Organized network figures and interaction files for downstream analysis.

**Status:** ✅ Completed

---

## Sprint 4 — Cytoscape Network Analysis

### Completed
- Imported the STRING interaction network into Cytoscape.
- Performed Network Analyzer topology analysis.
- Calculated Degree, Betweenness, Closeness, Stress, and Radiality centrality measures.
- Identified top hub genes based on network connectivity.
- Exported Cytoscape network visualization.
- Exported hub gene analysis results.

**Status:** ✅ Completed

---

## Sprint 5 — Hub Gene Functional Interpretation

### Completed
- Identified the top hub genes from Cytoscape network analysis.
- Investigated the biological roles of major hub genes.
- Prepared a functional interpretation of the identified hub genes.
- Connected inflammatory regulators and epithelial structural proteins into a coherent biological summary.
- Documented the interpretation for future reporting and publication.

**Status:** ✅ Completed

---

## Sprint 6 — Functional Enrichment Reproducibility

### Completed
- Recreated the Gene Ontology (GO) and KEGG enrichment workflow.
- Developed a reproducible R script (`enrichment_analysis.R`) for functional enrichment analysis.
- Exported GO enrichment results to `GO_results.csv`.
- Exported KEGG pathway enrichment results to `KEGG_results.csv`.
- Regenerated GO and KEGG enrichment plots.
- Improved repository reproducibility by preserving the complete enrichment workflow for future analyses.

**Status:** ✅ Completed
