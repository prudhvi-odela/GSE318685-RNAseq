# Sprint 7 — Literature Validation of Hub Genes

## Dataset Context
 
GSE318685 investigates gene expression changes associated with IL6 depletion in Arid1a/Pik3ca co-mutant mouse ovarian tumor cell lines.

## Objective

To evaluate whether the major hub genes identified through STRING and Cytoscape network analysis are supported by published biological evidence relevant to the experimental context.

## Hub Genes Selected

- Il1b
- Cxcr4
- Krt5
- Pparg
- Ptgs2
- Krt14

## Literature Validation

### Il1b

IL1B was identified as the highest-degree hub in the PPI network, with a degree of 36. This indicates that IL1B occupies a highly connected position among the proteins represented in the network.

Published work on the Arid1a/Pik3ca co-mutant ovarian clear cell carcinoma model has established a strong pro-tumorigenic inflammatory cytokine context, particularly involving sustained IL-6 signaling. However, this evidence does not directly establish IL1B as a driver of the experimental phenotype in GSE318685.

Therefore, the present network result is interpreted cautiously. The high centrality of IL1B supports its prioritization as an inflammation-associated candidate hub, but a direct mechanistic relationship between IL1B and IL6 depletion in this model requires additional evidence.

**Evidence classification:** Indirect / context-supporting evidence.

### Cxcr4

CXCR4 was identified as the second highest-degree hub in the PPI network, with a degree of 28. It also showed high betweenness centrality, suggesting that CXCR4 may occupy an important connecting position within the interaction network.

Previous ovarian cancer studies have linked the CXCL12-CXCR4 signaling axis with tumor cell proliferation, invasion, metastatic dissemination, and regulation of the tumor microenvironment. Experimental studies have also investigated CXCR4 blockade as a strategy to reduce ovarian tumor progression.

However, the available literature does not directly demonstrate that CXCR4 mediates the response to IL6 depletion in Arid1a/Pik3ca co-mutant ovarian tumor cells. Therefore, the present network finding supports CXCR4 as a biologically relevant candidate hub, while its specific relationship with IL6-dependent signaling in this experimental model requires further investigation.

**Evidence classification:** Indirect / ovarian cancer context-supporting evidence.

### Krt5

KRT5 was identified as a highly connected hub in the PPI network, with a degree of 22. Unlike the inflammation-associated hubs, KRT5 also directly appeared in several of the top enriched GO Biological Process terms, including keratinocyte differentiation, skin development, epidermis development, and epidermal cell differentiation.

KRT5 is an intermediate filament protein associated with epithelial cell identity and structural organization. Previous studies in ovarian cancer have reported altered KRT5 expression and have linked KRT5-associated epithelial phenotypes with tumor progression and treatment-related characteristics.

The agreement between the GO enrichment results and PPI network topology strengthens the relevance of KRT5 within the present dataset. However, published evidence does not directly establish KRT5 as a mediator of IL6 depletion in Arid1a/Pik3ca co-mutant ovarian tumor cells.

**Evidence classification:** Data-supported within the present analysis 
with indirect ovarian cancer literature support.

### Pparg

PPARG was identified as a highly connected hub in the PPI network, with a degree of 22. PPARG encodes a nuclear receptor involved in transcriptional regulation of cellular metabolism, differentiation, and inflammatory responses.

Experimental studies have suggested that PPARγ can influence ovarian tumor biology. Reduced PPARγ activity has been associated with increased susceptibility to ovarian carcinogenesis in experimental models, while more recent work has shown that PPARγ activation can alter macrophage populations and suppress ovarian tumor growth and tumor-associated immunosuppression.

These findings provide biological support for the relevance of PPARG to ovarian tumor and inflammatory biology. However, the available evidence does not directly establish PPARG as a mediator of IL6 depletion in Arid1a/Pik3ca co-mutant ovarian tumor cells. Its network centrality in the present analysis therefore supports PPARG as a candidate regulatory hub requiring further model-specific validation.

**Evidence classification:** Indirect / ovarian tumor and inflammation context-supporting evidence.

### Ptgs2

PTGS2 was identified as a highly connected hub in the PPI network, with a degree of 20. PTGS2, also known as cyclooxygenase-2 (COX-2), is involved in prostaglandin synthesis and inflammatory signaling.

PTGS2 also appeared in several of the top enriched GO Biological Process terms in the present analysis, including keratinocyte differentiation, skin development, epidermis development, and epidermal cell differentiation. This provides internal support for its involvement in the major biological processes identified from the differentially expressed genes.

Previous ovarian cancer studies have demonstrated biologically relevant COX-2 activity. Experimental inhibition of COX-2 reduced ovarian carcinoma cell growth and mitotic activity, while IL-1β-dependent NF-κB signaling has been shown to induce COX-2 expression in ovarian cancer cells.

The convergence of GO enrichment, PPI network centrality, and ovarian cancer literature supports PTGS2 as a biologically relevant candidate hub in the present dataset. However, its direct mechanistic relationship with IL6 depletion in Arid1a/Pik3ca co-mutant ovarian tumor cells remains to be established.

**Evidence classification:** Data-supported within the present analysis with ovarian cancer literature support.

### Krt14

KRT14 was identified as a connected hub in the PPI network, with a degree of 18. Similar to KRT5, KRT14 also appeared in several of the top enriched GO Biological Process terms, including keratinocyte differentiation, skin development, epidermis development, and epidermal cell differentiation.

KRT14 is an epithelial intermediate filament protein associated with epithelial cell organization and cellular phenotype. Previous ovarian cancer research has identified KRT14-positive leader cells as a cell population involved in collective tumor invasion. Proteomic and PPI network analysis of low-grade serous ovarian cancer has also identified KRT14 as a hub-bottleneck protein.

The agreement between GO enrichment, PPI network topology, and independent ovarian cancer studies strengthens the biological relevance of KRT14 in the present analysis. However, these studies do not directly establish KRT14 as a mediator of IL6 depletion in Arid1a/Pik3ca co-mutant ovarian tumor cells.

**Evidence classification:** Data-supported within the present analysis with indirect ovarian cancer literature support.

## Integrated Interpretation

The literature review supports the biological relevance of the hub genes identified through Cytoscape network analysis. IL1B, CXCR4, PPARG, and PTGS2 are associated with inflammatory signaling, immune regulation, and ovarian tumor biology, whereas KRT5 and KRT14 are closely linked to epithelial differentiation and structural organization.

The computational analyses performed in this project independently converged on similar biological themes. GO enrichment highlighted keratinocyte differentiation, epidermis development, skin development, and epithelial differentiation. STRING network analysis demonstrated extensive interactions among the differentially expressed proteins, while Cytoscape topology analysis identified highly connected hub genes that participate in these biological processes.

Although the published literature supports the general biological functions of these genes, direct evidence connecting each hub gene to IL6 depletion in Arid1a/Pik3ca co-mutant ovarian tumor cells remains limited. Therefore, these findings should be considered biologically supported computational hypotheses that warrant future experimental validation.

Overall, the integration of differential expression analysis, functional enrichment, protein interaction networks, and literature validation provides a comprehensive interpretation of the transcriptomic changes observed in this dataset.

## Limitations

- The analysis is based on publicly available RNA-seq data.
- Functional enrichment and network analyses are computational predictions.
- Literature validation supports biological plausibility but does not establish causality.
- Protein interaction data were obtained from the STRING database and include predicted interactions.
- Experimental validation is required to confirm the biological roles of the identified hub genes within this specific disease model.

## References

1. Barbolina MV et al. Microenvironmental regulation of CXCR4 in epithelial ovarian carcinoma. Molecular Cancer Research. 2010. PMID: 20460402.

2. Zeng Y et al. Dual blockade of CXCL12-CXCR4 and PD-1-PD-L1 pathways in ovarian tumor-bearing mice. British Journal of Cancer. 2019.

3. Gil M et al. CXCL12/CXCR4 blockade by oncolytic virotherapy inhibits ovarian cancer growth and metastasis. Journal of Immunology. 2014. PMID: 25320277.

4. Ricciardelli C et al. Keratin 5 overexpression is associated with serous ovarian cancer recurrence and chemotherapy resistance. Oncotarget. 2017. PMID: 28147318.

5. Paik DY et al. Stem-like epithelial cells are concentrated in the distal end of the fallopian tube: a site for injury and serous cancer initiation. Stem Cells. 2012. DOI: 10.1002/stem.1207.

6. Nicol CJ et al. PPARgamma influences susceptibility to DMBA-induced mammary, ovarian and skin carcinogenesis. Carcinogenesis. 2004. PMID: 15073042. DOI: 10.1093/carcin/bgh160.

7. Prat M et al. PPARγ activation modulates the balance of peritoneal macrophage populations to suppress ovarian tumor growth and tumor-induced immunosuppression. 2023. PMID: 37586764.

8. Rodríguez-Burford C et al. Effects of nonsteroidal anti-inflammatory agents on ovarian carcinoma cell lines: preclinical evaluation of NSAIDs as chemopreventive agents. Clinical Cancer Research. 2002. PMID: 11801560.

9. Niesporek S et al. NF-kappaB subunit p65/RelA expression in ovarian carcinoma: prognostic impact and link to COX-2 overexpression. 2007. PMID: 18314621.

10. Bilandzic M et al. Keratin-14-positive leader cells mediate mesothelial clearance and invasion by ovarian cancer cells. Cancers. 2019. PMID: 31443478.

11. Fakhar HBZ et al. Proteome profiling of low grade serous ovarian cancer. Journal of Ovarian Research. 2019. PMID: 31315664. DOI: 10.1186/s13048-019-0535-z.

## Status

⏳ In Progress
