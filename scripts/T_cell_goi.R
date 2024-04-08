#Create goi objects for different CD4, CD8 clusters
goi.lineagemarkers = c("CD3E", "CD4", "CD8A")
goi.naive = c("LEF1", #LEF1 = lymphoid enhancer binding factor, i.e. TCF10
              "SELL" #SELL = CD62L
)
goi.memory = c("CCR7", "IL7R", "CD28", 
               "FAS", #FAS = gene for CD95 
               "CD27")
goi.trm = c(#HOBIT and BLIMP1 are universal regulators of tissue residency in lymphocytes (Mackay et al, Science 2016)
            "ZNF683", #TRM marker, encodes protein HOBIT, homologue of BLIMP1 
            "PRDM1", #TRM marker, also known as BLIMP1
            
            "ITGAE", #ITGAE (CD103) is a core signature marker for CD8+ and CD4+ TRM in humans
            "ITGAL", "ITGAM", "ITGAX")
goi.migration=c("S1PR1", "S1PR2", "S1PR4", #  Xiong et al. "CD4 T cell sphingosine 1-phosphate receptor (S1PR)1 and S1PR4 and endothelial S1PR2 regulate afferent lymphatic migration" Science Immunology 2019 (https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6744614/)
                "KLF2" #KLF2 is regulates migration primarily by inducing expression of S1PR1; arrival in non lymphoid environment leads to decrease in KLF2 and S1Pr1, leading to cessation of trafficking and aids in memory T cell retention in NLT (https://www.jimmunol.org/content/188/1_Supplement/173.16)
                )
goi.exhaustionmarkers1 = c("PDCD1","CTLA4","LAG3", "TIGIT","HAVCR2", 
                           "KLRG1", #senescence marker, high in clonal expasion but low in PD1hi terminally exhausted T cells 
                           "GZMK", #low in terminally exhausted T cells
                           "TNFRSF18" #GITR
)
goi.exhaustionmarkers2 = c(
  "BTLA",
  "CD160", #Vigano et al 2014
  "CD244", #marker of CD8 T cell exhaustion in chronic infection 
  "LAYN", "SNAP47", "PHLDA1", #Receptors with potential inhibitory function identified in sc of CD8+ TIL in in HCC (Zheng et al Cell 2017
  "DPP4", #CD26
  "CD27" #high in PD1hi TIL relative to PD-1N or PD-1-TIL in Thommen et al 2018
)
goi.progenitorEx = c("TCF7", #Gene for TCF-1, see https://www.nature.com/articles/s41590-022-01219-w.pdf 
                     "LEF1", #TCF10
                     "XCL1", 
                     "CD109", #inhibitory receptor
                     "CD200", #inhibitory receptor
                     "GNG4",
                     "SLAMF6" #Pex are Slamf6+Tim-3- per Miller et al. Nature Immunol 2019 https://www.nature.com/articles/s41590-019-0312-6
)

goi.activationmarkers=c("CD38", 
                        "ENTPD1", #CD39, high in exhausted T cells https://aacrjournals.org/cancerres/article/78/1/115/625147/CD39-Expression-Defines-Cell-Exhaustion-in-Tumor 
                        "NT5E", "CD69", "IL2RA", 
                        "CD2", #co-stimulatory
                        "TNFRSF4",  #OX40L costimulatory receptor
                        "TNFRSF9", #CD137/41BB, found on CD8+ T cells with  both exhaustion and effector phenotype (Y. Li et al 2020)
                        "TNFRSF14", #HVEM, activates both proinflammatory and inhibitory signaling
                        "TNFRSF25", #CD134 costimulatory receptor
                        "HLA-DRA", "CD40LG")
goi.effectorcytokines=c("GZMA",
                        "GZMB",
                        "GZMH",
                        "GZMM",
                        "PRF1",
                        "NKG7",
                        "GNLY",
                        "IFNG",
                        "FASLG",
                        "TNF",
                        "IL17RA",
                        "IL2")
goi.transcriptionfactors=c("LEF1", "TCF7", "EOMES", "TBX21", "PRDM1", "TOX", "GATA3", "ID2", "ID3", 
                           "NR4A1", #Stably expressed at high levels in tolerant T cells. Overexpression of NR4A1 inhibits effector T cell differentiation
                           "FOXP3", "MKI67", "TOP2A")
goi.tfh1=c("ICOS", #present on activated CD4 T cells
           "CXCL13",
           "GPR183", #EBI2, secreted by Tfh TIL in Oliveira 2021
           "IL21",
           "IL6ST",
           "CD200",
           "CH25H")
goi.tfh2=c("BCL6", 
           "TBX21", #TBet, increased in Tfh
           "GATA3", #GATA3 increased in Th2
           "RORC", #RORgt increased in Th17
           "PRDM1", "CXCR3", "CXCR5", "MAF", "MAFB", "BATF", "IRF4"
           #"TOX2" #https://www.science.org/doi/10.1126/sciadv.abj1249
)
goi.gammadeltalike=c("TRGV9", "TRDV2")
goi.NKlike=c("KLRB1", "KLRC3")

goi.all = c(
  goi.lineagemarkers,
  goi.naive, 
  goi.memory,
  goi.trm,
  goi.migration,
  goi.exhaustionmarkers1,
  goi.exhaustionmarkers2,
  goi.progenitorEx,
  goi.activationmarkers,
  goi.effectorcytokines,
  goi.transcriptionfactors,
  goi.tfh1, goi.tfh2,
  goi.gammadeltalike,
  goi.NKlike)

goi.all.list = list(
  goi.lineagemarkers,
  goi.naive, 
  goi.memory,
  goi.trm,
  goi.migration,
  goi.exhaustionmarkers1,
  goi.exhaustionmarkers2,
  goi.progenitorEx,
  goi.activationmarkers,
  goi.effectorcytokines,
  goi.transcriptionfactors,
  goi.tfh1, goi.tfh2,
  goi.gammadeltalike,
  goi.NKlike
)

names(goi.all.list) = c(
  "goi.lineagemarkers",
  "goi.naive", 
  "goi.memory",
  "goi.trm",
  "goi.migration",
  " goi.exhaustionmarkers1",
  "goi.exhaustionmarkers2",
  "goi.progenitorEx",
  "goi.activationmarkers",
  "goi.effectorcytokines",
  "goi.transcriptionfactors",
  "goi.tfh1", "goi.tfh2",
  "goi.gammadeltalike",
  "goi.NKlike"
)