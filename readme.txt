2024-02-16

This file provides explanation for the single cell RNA/TCR-seq data associated with the publication of the Phase I trial of GNOS-PV02 Personalized Neoantigen Vaccine, INO-9012 and Pembrolizumab in Subjects With Advanced HCC (NCT04251117). 

Pre-processed single cell data have been uploaded to the National Institutes of Health data repository Gene Expression Omnibus under the title "Gene expression and T cell repertoire profile at single cell level of peripheral blood T cells after treatment with a personalized neoantigen vaccine (GNOS-PV02) and Pembrolizumab for advanced hepatocellular carcinoma" (GSE255830). Original R code used to carry out the single cell sequencing analysis of these data have been uploaded to https://github.com/FertigLab/GeneosCollaboration.

Users wishing to re-analyze these data using the scripts shared on github should be aware of the following. In order to meet the upload requirements of GEO, unique filenames were created by appending a prefix to each of the pre-processed single cell RNA and TCR sequencing files (e.g. for Patient 6, "barcodes.tsv.gz" was renamed "GSM8081370_Pt__6_barcodes.tsv.gz", etc.). However, this is not the file format expected by the R scripts available on github. To make the files compatible with the R scripts, prefixes should be removed and all files corresponding to each patient must be placed in a unique folder named for the patient, as shown below:

data
  |- Pt_#6
  |- Pt_#7
  |- Pt_#8A
  |- Pt_#8B

Each subfolder should contain the following four files: "barcodes.tsv.gz", "features.tsv.gz", "filtered_contig_annotations.csv", "matrix.mtx.gz"





