## Synaptic inputs from identified bipolar and amacrine cells to a sparsely branched ganglion cell in rabbit retina

Data and code to produce the figures in:

Bordt, A., Perez, D., Tseng, L., Liu, W., Neitz, J., Patterson, S., Famiglietti, E., Marshak, D. (2019). Synaptic inputs from identified bipolar and amacrine cells to a sparsely branched ganglion cell in rabbit retina. *Visual Neuroscience*, 36, E004

#### Contents:
* `FullFigures.m` - code for the paper figures that were created with SBFSEM-tools. Loads neurons from the existing annotation database.
* `FullFiguresCached.m` - same as above but uses the neurons stored as `.json` files.
* `c13525_synapses.m` - code to mark synapses on c13525 (the labels and specialized markers were edited outside Matlab)
* `ReciprocalSynapseAnalysis.m` - code used to pull raw data on synapse distances, which was further analyzed outside Matlab.
* `RabbitPaperCache.m` - code used to save the neuron data into the `.json` files.

#### Use:
The annotation database for the rabbit connectome is edited constantly. While major changes are unlikely, there's no guarantee that the data associated with a given Neuron ID will remain the same long-term. For this reason, the annotations associated with a given neuron are preserved in `.json` files under the `\data` folder. You can run the figure code from the cached data with `FullFiguresCached.m`.

#### Dependencies:
- MATLAB 2015b or higher
- [SBFSEM-tools][sbfsemrepo], an open-source Matlab toolbox for connectomics visualization and analysis, used to mine the rabbit connectome developed in the Marc/Jones lab. 

#### More information:
* [Information][viking] on Viking and the rabbit connectome
* Article contact: david.w.marshak@uth.tmc.edu
* Software contact: sarap44@uw.edu

[sbfsemrepo]: <https://github.com/sarastokes/sbfsem-tools>
[viking]: <http://connectomes.utah.edu>