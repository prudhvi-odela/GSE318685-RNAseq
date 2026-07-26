# Sprint 4 — Cytoscape Network Analysis

## Objective

Analyze the STRING protein-protein interaction (PPI) network using Cytoscape to identify hub genes based on network topology.

---

## Input

- ppi/string_interactions.tsv

---

## Methods

- Imported STRING interaction network into Cytoscape
- Performed Network Analyzer (Undirected)
- Calculated:
  - Degree
  - Betweenness Centrality
  - Closeness Centrality
  - Stress
  - Radiality

---

## Top Hub Genes (Degree)

| Rank | Gene | Degree |
|------|------|-------:|
| 1 | Il1b | 36 |
| 2 | Cxcr4 | 28 |
| 3 | Krt5 | 22 |
| 4 | Pparg | 22 |
| 5 | Ptgs2 | 20 |
| 6 | Krt14 | 18 |
| 7 | Mdk | 18 |
| 8 | Col17a1 | 16 |
| 9 | Hand2 | 16 |
|10 | Mmp13 | 16 |

---

## Output Files

- ppi/hub_gene_analysis.csv
- figures_v2/cytoscape_ppi_network.png

---

## Conclusion

Successfully identified highly connected hub genes within the protein-protein interaction network. These genes represent potential key regulators and candidates for downstream biological interpretation.

Status: ✅ Completed
