---
title: "REPOS"
author:
  - name: Wenching Calvin Chan, Ph.D.  
    affiliation: Center for Research Informatics, University of Chicago, Chicago, IL 60637  
    email: wchan10@bsd.uchicago.edu  
date: "15 March, 2019"  
package: "REPOS"  
abstract: >
  - TBC
output:
  # pdf_document:
  #   highlight: tango
  #   number_sections: true
  #   df_print: kable # default, kable, tibble
  #   toc: true
  #   toc_depth: 3
  #   latex_engine: xelatex
  #   keep_tex: yes
  #   includes:
  #     in_header: header.tex
  
  html_document:
    theme: united
    highlight: tango
    number_sections: true
    df_print: paged
    toc: true
    toc_depth: 3
    toc_float:
      collapsed: true
      smooth_scroll: false
    keep_md: true
bibliography: REPOS.bib
always_allow_html: yes
vignette: >
  %\VignetteIndexEntry{REPOS}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---



<a name="Top"/>


\newpage


[Top](#Top)

\newpage



# Markdown Cheatsheet

***

* Markdown Cheatsheet
    * Links
        
        ![Calvin][Calvin]  
        ![Inline-style image with title](IMG/Calvin.jpg "Calvin")  
        Hi, I am Calvin.  
        
    * 1.2



[Top](#Top)


[Calvin]: IMG/Calvin.jpg  


# Session information

***

\blandscape

```
## R version 3.5.2 (2018-12-20)
## Platform: x86_64-apple-darwin15.6.0 (64-bit)
## Running under: macOS High Sierra 10.13.6
## 
## Matrix products: default
## BLAS: /Library/Frameworks/R.framework/Versions/3.5/Resources/lib/libRblas.0.dylib
## LAPACK: /Library/Frameworks/R.framework/Versions/3.5/Resources/lib/libRlapack.dylib
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] stats4    grid      stats     graphics  grDevices utils     datasets 
## [8] methods   base     
## 
## other attached packages:
##  [1] dbscan_1.1-3.1        flexclust_1.4-0       modeltools_0.2-22    
##  [4] lattice_0.20-38       dynamicTreeCut_1.63-1 NbClust_3.0          
##  [7] pvclust_2.0-0         dendextend_1.10.0     ggdendro_0.1-20      
## [10] factoextra_1.0.5.999  ade4_1.7-13           processx_3.2.1       
## [13] plotly_4.8.0.9000     RColorBrewer_1.1-2    gridExtra_2.3        
## [16] ggpubr_0.2.999        magrittr_1.5.0.9000   ggrepel_0.8.0.9000   
## [19] wcLibraryR_0.0.1      captioner_2.2.3.9000  dplyr_0.8.0          
## [22] ggplot2_3.1.0.9000    png_0.1-7             kableExtra_0.9.0     
## [25] knitr_1.21           
## 
## loaded via a namespace (and not attached):
##  [1] viridis_0.5.1       httr_1.4.0          tidyr_0.8.2.9000   
##  [4] jsonlite_1.6        viridisLite_0.3.0   assertthat_0.2.0   
##  [7] yaml_2.2.0          robustbase_0.93-3   pillar_1.3.1       
## [10] glue_1.3.0          digest_0.6.18       rvest_0.3.2        
## [13] colorspace_1.4-0    htmltools_0.3.6     pkgconfig_2.0.2    
## [16] purrr_0.3.0         mvtnorm_1.0-8       scales_1.0.0       
## [19] whisker_0.3-2       tibble_2.0.1.9001   withr_2.1.2        
## [22] nnet_7.3-12         lazyeval_0.2.1      crayon_1.3.4       
## [25] mclust_5.4.2        evaluate_0.13       ps_1.3.0           
## [28] MASS_7.3-51.1       xml2_1.2.0          class_7.3-14       
## [31] tools_3.5.2         data.table_1.12.0   hms_0.4.2          
## [34] trimcluster_0.1-2.1 stringr_1.4.0       kernlab_0.9-27     
## [37] munsell_0.5.0       cluster_2.0.7-1     fpc_2.1-11.1       
## [40] compiler_3.5.2      rlang_0.3.1         rstudioapi_0.9.0   
## [43] htmlwidgets_1.3     rmarkdown_1.11      gtable_0.2.0       
## [46] flexmix_2.3-15      R6_2.4.0            prabclus_2.2-7     
## [49] readr_1.2.1         stringi_1.3.1       parallel_3.5.2     
## [52] Rcpp_1.0.0          DEoptimR_1.0-8      tidyselect_0.2.5   
## [55] xfun_0.5            diptest_0.75-7
```
\elandscape


[Top](#Top)



# Reference  


