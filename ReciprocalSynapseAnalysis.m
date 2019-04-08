% 20181115 - SSP



%% Example
c6131 = Neuron(6131, 'r', true);
% Import pre- and post-synaptic data
x = sbfsem.analysis.ReciprocalSynapses(c6131);
% Run analysis
x.doAnalysis();
% View analysis
openvar('x');
% Click on the 'preSynData', 'postSynData' and 'data' for the presynapse,
% postsynapse and final result tables

%% The other cells:

% Import the neurons
c437 = Neuron(437, 'r', true);
c460 = Neuron(460, 'r', true);
c5542 = Neuron(5542, 'r', true);
c5544 = Neuron(5544, 'r', true);
c11092 = Neuron(11092, 'r', true);

% I rerun the example code for each neuron and copy the data in the 3
% tables mentioned above