use "D:\tencent_files\chrome_Download\Research\DEA\DEA_RCEP\Data\per_capita_reg.dta"
xtset Countryid year
regress lemission l.lemission i.Countryid
ivregress 2sls d.lemission (ld.lemission = l2.lemission)
use "D:\tencent_files\chrome_Download\Research\DEA\DEA_RCEP\Data\per_capita_reg_ASEAN.dta"
regress lemission l.lemission i.Countryid
ivregress 2sls d.lemission (ld.lemission = l2.lemission)
use "D:\tencent_files\chrome_Download\Research\DEA\DEA_RCEP\Data\per_capita_reg_NoASEAN.dta"
xtset Countryid year
regress lemission l.lemission i.Countryid
ivregress 2sls d.lemission (ld.lemission = l2.lemission)
use "D:\tencent_files\chrome_Download\Research\DEA\DEA_RCEP\Data\carbon_performance.dta"
xtset id year
regress lCEE l.lCEE i.id
ivregress d.lCEE (ld.lCEE=l2.lCEE)
ivregress 2sls d.lCEE (ld.lCEE=l2.lCEE)
regress lCPP l.lCPP i.id
ivregress 2sls d.lCPP (ld.lCPP=l2.lCPP)
regress lCPI l.lCPI i.id
ivregress 2sls d.lCPI (ld.lCPI=l2.lCPI)
regress lCEE l.lCEE lEX i.id
ivregress 2sls d.lCEE d.lEX (ld.lCEE=l2.lCEE)
regress lCPP l.lCPP lEX i.id
ivregress 2sls d.lCPP d.lEX (ld.lCPP=l2.lCPP)
regress lCPI l.lCPI lEX i.id
ivregress 2sls d.lCPI d.lEX (ld.lCPI=l2.lCPI)
