% 1Mar2018 - SSP
% 7Apr2019 - SSP - Converted to cached data

dataDir = '';

% Set this to whatever color you'd like the neuron to be:
neuronColor = [0.5, 0.5, 1];
% The synapse colors:
convColor = [1, 0.25, 0.25];
ribbonColor = [1, 0.25, 0.25];

% Import the neurons with synapse data, build the 3D models.
c13525 = NeuronJSON([dataDir, filesep, 'r13525.json']);
c13525_IDs = [158472, 158477, 158473, 158515];
c13525_segments = [];
for i = 1:numel(c13525_IDs)
    c13525_segments = cat(1, c13525_segments,... 
        NeuronJSON([dataDir, filesep, 'r', num2str(c13525_IDs(i)), '.json']));
end

% Create the render
c13525.render('FaceColor', neuronColor);
% Render the segments in the existing figure
for i = 1:numel(c13525_segments)
    c13525_segments(i).render('ax', gca, 'FaceColor', neuronColor);
end

% Add the synapse markers
synapseSphere(c13525, 'ConvPost', 'ax', gca, 'FaceColor', convColor);% Add the ribbon synapse PSDs
synapseSphere(c13525, 'RibbonPost', 'ax', gca, 'FaceColor', ribbonColor);
for i = 1:numel(c13525_segments)
    synapseSphere(c13525_segments(i), 'ConvPost', 'ax', gca, 'FaceColor', convColor);
    synapseSphere(c13525_segments(i), 'RibbonPost', 'ax', gca, 'FaceColor', ribbonColor);
end