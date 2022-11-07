# awesome-ivd-cdx
IVD (In Vitro Diagnostics) / CDx (Companion Diagnostics)


## Processing

- Biostat + Bio teams to select samples size and samples (e.g., CLIA)
    - select small dataset for pilot study
- Bfx team to perform data analyses based on internal/external samples
    - Generate result with output format for Biostat
    - **Precision: Repeatability and Reproducibility**
        - i.e.; comparison btw diff. lab/protocol conditions
        - e.g.,
            - Reagent Lot-to-Lot Reproducibility
            - Instrument-to-Instrument Reproducibility
    - **Concordance** Study
        - (equal to or better than) existing method
    - **Analytical Sensitivity: Limit of Detection (LoD) and Limit of Blank (LoB)**
        - VAF 1*e-4 == 0.01% == 1 out of 10K cells to call MRD
        - e.g., dilute tissue samples to 10K and still detectable
        - The LoB of zero was confirmed through the assessment of alterations within the LoB samples, with a percentage of **false-positive results less than 5% (type I error risk α=0.05)**. Seventy-five (75) samples were used for the assessment of LoB. For all the alterations evaluated for LoD, the LoB of zero was confirmed. A similar study was conducted for BRCA1/2 alterations (PMA P160018) with no false-positive BRCA calls observed, thus confirming the LoB of zero for BRCA.
- Clinic Science team to collaboration w/ FDA NGS committee for Application Submission


## Examples

- Gaurdent Health
- FoundationOne
    - F1CDx [P170019](https://www.accessdata.fda.gov/cdrh_docs/pdf17/P170019B.pdf)
        - The original PMA (P170019) for FoundationOne®CDx (F1CDx) was approved on November 30, 2017 for the detection of genetic alterations in patients who may benefit from one of fifteen FDA-approved therapies for **non-small cell lung cancer (NSCLC), melanoma, breast cancer, colorectal cancer, and ovarian cancer**. 
        - FoundationOne®CDx (F1CDx) is a next generation sequencing based in vitro diagnostic device for detection of **substitutions, insertion and deletion alterations (indels) and copy number alterations (CNAs)** in **324 genes and select gene rearrangements**, as well as genomic signatures including **microsatellite instability (MSI)** and **tumor mutational burden (TMB)** using DNA isolated from **formalin-fixed paraffin embedded (FFPE) tumor tissue specimens**.
            - To determine **microsatellite instability (MSI)** status, **95 intronic homopolymer repeat loci (10-20 bp long** in the human reference genome) with adequate coverage on F1CDx Assay are analyzed for length variability and compiled into an overall MSI score via principal components analysis. Using the 95 loci, for each sample the repeat length is calculated in each read that spans the locus. The means and variances of repeat lengths is recorded. **Principal components analysis (PCA)** is used to project the **190-dimension** data onto a single dimension (**the first principal component**) that maximizes the data separation, producing an MSI score. Each sample is assigned a qualitative status of **MSI-High (MSI-H)** or **MSI-Stable (MSS)**; ranges of the MSI score are assigned MSI-H or MSS by manual unsupervised clustering. Samples with **low coverage (< 250X median)** are assigned a status of **MSI-unknown**.
            - **Tumor mutational burden (TMB)** is measured by counting **all synonymous and nonsynonymous variants** present at **≥5%** allele frequency or greater, and **filtering out potential germline variants** according to published databases of known germline polymorphisms including **Single Nucleotide Polymorphism database (dbSNP)** and **Exome Aggregation Consortium (ExAC)**. Additional germline alterations still present after database querying are assessed for potential germline status and filtered out using a **somatic-germline/zygosity (SGZ) algorithm**. Furthermore, known and likely **driver mutations** are filtered out to exclude bias of the data set. **The resulting mutation number is then divided by the coding region** corresponding to the number of total variants counted, or **793 kb**. The resulting number is communicated as mutations per Mb unit (mut/Mb).
    -  Summary of Safety and Effectiveness Data (SSED)
        - PMA ([P170019/S006](https://www.accessdata.fda.gov/cdrh_docs/pdf17/P170019S006B.pdf)) for adding an indication for **PIQRAY® (alpelisib)** in **breast cancer** patients with **PIK3CA** alterations.
        - Subsequently, three PMA supplements were approved for expanding the intended use of F1CDx since its original approval. PMA supplement (P170019/S005) for adding genomic **loss of heterozygosity (LOH)** was approved on April 10, 2019. PMA supplement (P170019/S004) for adding an indication for **Lynparza® (olaparib)** in **ovarian cancer** patients with **BRCA1/2** alterations was approved on July 1, 2019. PMA supplement (P170019/S008) for adding an indication for **Tagrisso® (osimertinib)** in **NSCLC** patients with **EGFR exon 19 deletions and EGFR exon 21 L858R alterations** was approved on July 1, 2019.
    - Technical Information
        - [P170019/S006](https://www.accessdata.fda.gov/cdrh_docs/pdf17/P170019S006C.pdf) / breast::PIK3CA
            - Limitations
                - Clinical performance of Tagrisso® (osimertinib) in patients with an **EGFR exon 20 T790M** mutation detected with an allele fraction **<5%** is ongoing and has not been established. (note: NSCLC)
                - Samples with **<25%** tumor may have decreased sensitivity for the detection of **CNAs** including **ERBB2**. (note: breast cancer / HER2)
                - **Concordance** with other validated methods for **CNA** (with the exception of **ERBB2 amplifications and BRCA1/2 homozygous deletions**) and **gene rearrangement** (with the exception of **ALK**) detection has not been demonstrated and will be provided in the post-market setting. **Confirmatory testing** using a clinically validated assay should be performed for all CNAs and rearrangements not associated with CDx claims noted in Table 1 of the Intended Use, but used for clinical decision making.
                - The **MSI-H/MSS** designation by FMI FoundationOne®CDx (F1CDx) test is based on genome wide analysis of **95 microsatellite loci** and not based on the 5 or 7 MSI loci described in current clinical practice guidelines. Refer https://www.accessdata.fda.gov/cdrh_docs/pdf17/P170019B.pdf for additional details on methodology. The threshold for MSI-H/MSS was determined by analytical concordance to comparator.
                - **TMB** by F1CDx is defined based by counting the total number of all synonymous and non-synonymous variants present at 5% allele frequency or greater (after filtering) and reported as mutations per megabase (mut/Mb) unit. TMB is a function of the characteristics of a patient’s specimen and testing parameters; therefore, **TMB may differ among specimens (e.g., primary vs. metastatic, tumor content) and targeted panels**. The TMB calculation may differ from TMB calculations used by other assays depending on variables such as the amount of genome interrogated, percentage of tumor, assay LoD, filtering of alterations included in the score, and the read depth and other bioinformatic test specifications. Refer to the SSED for a detailed description of these variables in FMI’s TMB calculation https://www.accessdata.fda.gov/cdrh_docs/pdf17/P170019B.pdf. The clinical validity of TMB defined by this panel has not been established.
        - [Technical Specifications](https://assets.ctfassets.net/vhribv12lmne/4ZHUEfEiI8iOCk2Q6saGcU/671b313cb6bb85bfe861f83e31c9716d/F1CDx_TechInfo_09-03.pdf)


## Medical Device

- [FDA /  Medical Devices / Device Advice: Comprehensive Regulatory Assistance / Medical Device Databases](https://www.fda.gov/medical-devices/device-advice-comprehensive-regulatory-assistance/medical-device-databases)

## IVD - In Vitro Diagnostics

- [Similarities & Differences Between In Vitro Diagnostics (IVD) Devices & Medical Devices](https://www.ics.com/resources/similarities-differences-between-ivd-medical-devices)
- [What Are In Vitro Diagnostic Tests, and How Are They Regulated?](https://www.pewtrusts.org/en/research-and-analysis/issue-briefs/2019/05/what-are-in-vitro-diagnostic-tests-and-how-are-they-regulated)
- [WHO IVDs](https://www.who.int/health-topics/in-vitro-diagnostics)
- [FDA / Medical Devices / Products and Medical Procedures / In Vitro Diagnostics](https://www.fda.gov/medical-devices/products-and-medical-procedures/in-vitro-diagnostics)
    - [List of Cleared or Approved Companion Diagnostic Devices (In Vitro and Imaging Tools)](https://www.fda.gov/medical-devices/in-vitro-diagnostics/list-cleared-or-approved-companion-diagnostic-devices-in-vitro-and-imaging-tools)
    - [Tests Used In Clinical Care](https://www.fda.gov/medical-devices/in-vitro-diagnostics/tests-used-clinical-care)
        - [Find All In Vitro Diagnostic Products and Decision Summaries Since November 2003](https://www.fda.gov/medical-devices/tests-used-clinical-care/find-all-in-vitro-diagnostic-products-and-decision-summaries-november-2003)
            - [In Vitro Diagnostic Product Database](https://www.accessdata.fda.gov/scripts/cdrh/devicesatfda/index.cfm)


## CDx - Companion Diagnostics

- [CDx, NGS and regulation: five perspectives from the Pistoia Alliance](https://www.almacgroup.com/knowledge/wp-content/uploads/2019/07/DX_CDx-NGS-and-Regulation_Article.pdf)
- [FDA / Medical Devices / Products and Medical Procedures / In Vitro Diagnostics / Companion Diagnostics](https://www.fda.gov/medical-devices/in-vitro-diagnostics/companion-diagnostics)


## Databases

- [510(k) Premarket Notification](https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfpmn/pmn.cfm)
- [In Vitro Diagnostic Product Database](https://www.accessdata.fda.gov/scripts/cdrh/devicesatfda/index.cfm)
- [IVD Over the Counter (OTC) Database](https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfIVD/Search.cfm)
- [Search Registration and Listing](https://www.fda.gov/medical-devices/device-registration-and-listing/search-registration-and-listing)
- [CLIA Database](https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfCLIA/search.cfm)


## Software

- [Computer Software Assurance for Production and Quality System Software](https://www.fda.gov/media/162627/download)

## Skill Sets

- Lead Biostatistics efforts designing and executing analyses for **validation studies** in support of in vitro diagnostic submissions (e.g., IVDR, 510(k), CTA/CDx/PMA (Premarket Approval Application), etc.)
- Perform relevant statistical analyses (e.g., sample size, power, agreement, precision, LoB/LoD/LoQ calculations) for validation studies of varying complexity
- Produce high quality presentations and author documentation of analysis plans, methods, results, and interpretation
- Effectively convey statistical concepts and results to cross-functional internal and external collaborators and stakeholders
- Promote statistical and regulatory best practices
- Identify risks, communicate concerns, and champion solutions to interdisciplinary project teams
- Perform other duties as assigned
- Expert working knowledge of statistical methodology in diagnostic medicine, including an understanding of CLSI and FDA guidelines
- Demonstrated ability and enthusiasm for working on cross-functional teams with members of diverse technical backgrounds
- Strong track record of producing high quality written documentation for multiple audiences. Experience negotiating with the FDA a plus.
- Prior experience with NGS, genetics, and/or oncology testing a plus.
