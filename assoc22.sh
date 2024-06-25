#imp_chr22.pgen (N=2038) (info >=0.3)
#filter out if maf < 0.01975 (=25/(2*case sample size) = 25/(2*633)).  0.1975 > 0.01.  Use 0.01

for i in ` seq 22 22 `
do 
 plink2.0   --pfile /dsgmnt/ukbiobank/work/rosa/CervicalSpondylosis/run1/imp_chr${i} \
  --pheno /dsgmnt/ukbiobank/work/rosa/CervicalSpondylosis/run1/affect.txt \
  --pheno-name affect \
  --ci 0.95  \
  --covar /dsgmnt/ukbiobank/work/rosa/CervicalSpondylosis/run1/covariates.txt \
  --covar-name sex, age, PC1, PC2, PC3, PC4, PC5, PC6, PC7, PC8, PC9, PC10 \
  --maf 0.01 \
  --hwe 0.000001 \
  --logistic  \
  --out assoc${i}

done