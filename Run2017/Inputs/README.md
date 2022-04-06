# chayanit/Hbb_MSSM/Run2017/Inputs 

**Macros and scripts useful for limit computation: MSSM Hbb semi-leptonic analysis**

#### Setting environment to get combine library

You can follow intruction from the combine tool using the latest version from

http://cms-analysis.github.io/HiggsAnalysis-CombinedLimit/#combine-tool

Before running analysis macros and scripts to get datacards and limits, you need combine library setup by doing 

`cmsenv`


####  Workspaces to be used as input for combine tool

Workspaces can be produced by running the following macros,  one for each of the 4 analysis regions:


Parametric signal pdf:

`AnalysisWorkspaceSR{i}_2017TF.C`

To make this macro run, you will need to update the following paths and make sure all inputs exist for each region: 

`TString dir("/afs/cern.ch/work/c/chayanit/private/MSSMHBB_Analysis2020/2017UL/CMSSW_10_6_27/src/analysis-mssmhbb/test/Hbb_MSSM/Run2017/");`

`TFile *f_signal_in = new TFile(dir + "/forSandra/Feb2022_v6/SL/SL_SUSYGluGluToBBHToBB_M-" + Tsrmasses[mass] + "_2017-v6.root", "READ");`

`TFile *f_cr_in = new TFile(dir + "/forSandra/Feb2022_v6/SL/Semilep_CR_BTagCSV_UL2017-v6.root", "READ");`

`TFile *f_sr_in = new TFile(dir + "/forSandra/Feb2022_v6/SL/Semilep_CR_BTagCSV_UL2017-v6.root", "READ");`

`TFile *f_bgfit = new TFile(dir + "/forSandra/Feb2022_v6/SL/UL2017_background_novoefffixprod_120to300_5GeV/workspace/FitContainer_workspace.root", "READ");`

`TFile *f_signal_in_unbinned = new TFile(dir + "/input_doubleCB_SL/signal_m" + Tsrmasses[mass] + "_SR1.root", "READ");`

One also needs to run `GetLumiSF.C` to hardcode them in `lumiscalefactors`

#### Input files needed to produce the workspaces


#### Datacard templates

Template for the production of datacards:

   Parametric signal pdf:

   `datacard_Analysis_template.txt`
   
The datacards can be produced running the bash script `DataCardProducer.sh` 

#### Limit computation 


Run combine tool locally:

`runLimits.sh`

Produce limits plot:
`PlotLimits.C`


#### CMSSW version
Mini-framework for signal and background parameterizations and the combine tool package are needed

Signal and bkgd models:

https://github.com/desy-cms/analysis-models


Combine tool:

http://cms-analysis.github.io/HiggsAnalysis-CombinedLimit/



If further clarifications are needed please contact: sandra.consuegra.rodriguez@desy.de, sandra.consuegra.rodriguez@cern.ch
                                            
Instructions last updated: 06.04.2022 
