% SETTINGS
% Each figure is in a separate section and can be run individually
%
% Set this to the folder where the .json files are saved
dataDir = '';
%
% Set this to the folder where you would like the images to be saved
saveDir = '';
% Set to true if you want to save them. I keep this false until I finish
% setting colors, transparencies, etc, then set it to true.
saveMode = false; % true
% Once you're happy, run through everything with saveMode = true or
% save figures individually like:
%   saveHighResImage(gcf, saveDir, 'filename.png')

%% Import segmented structures
c437_IDs = [158878, 158883, 158887, 158899, 158907];
c5544_IDs = [158826, 158953, 158828, 158829, 158832];
c5542_IDs = [158538, 158560, 128311, 158582, 158609, 158610, 158611,...
    158614, 158618, 158626, 158629, 41588];
c6131_IDs = [158697, 158704, 136057, 158710, 158712, 158718, 158716,...
    158736, 158940, 158942];
c13525_IDs = [158472, 158477, 158473, 158515];

c437_segments = [];
for i = 1:numel(c437_IDs)
    c437_segments = cat(1, c437_segments,... 
        NeuronJSON([dataDir, filesep, 'r', num2str(c437_IDs(i)), '.json']));
    c437_segments(i).build();
end

c5544_segments = [];
for i = 1:numel(c5544_IDs)
    c5544_segments = cat(1, c5544_segments,... 
        NeuronJSON([dataDir, filesep, 'r', num2str(c5544_IDs(i)), '.json']));
    c5544_segments(i).build();
end

c5542_segments = [];
for i = 1:numel(c5542_IDs)
    c5542_segments = cat(1, c5542_segments,... 
        NeuronJSON([dataDir, filesep, 'r', num2str(c5542_IDs(i)), '.json']));
    c5542_segments(i).build();
end

c6131_segments = [];
for i = 1:numel(c6131_IDs)
    c6131_segments = cat(1, c6131_segments,... 
        NeuronJSON([dataDir, filesep, 'r', num2str(c6131_IDs(i)), '.json']));
    c6131_segments(i).build();
end
% -------------------------------------------------------------------------
%% Figure 2
% -------------------------------------------------------------------------
c13525 = NeuronJSON([dataDir, filesep, 'r13525.json']); 
c476 = NeuronJSON([dataDir, filesep, 'r476.json']);
c476.render('FaceColor', [0.8, 0.8, 0.8], 'FaceAlpha', 0.6);
c13525.render('ax', gca, 'FaceColor', [0, 0.5, 1], 'FaceAlpha', 0.6);

view(-90, 180);
ylim([98, 165]);
set([gcf, gca], 'Color', 'k'); hideAxes(); tightfig(gcf);

if saveMode
    saveHighResImage(gcf, saveDir, 'yourfilename.png');
end
% ---------------------------------------------------------------------
%% Figure 4
% ---------------------------------------------------------------------
% Figure 4A - side
c5544 = NeuronJSON([dataDir, filesep, 'r5544.json']);
c5544.render('FaceColor', [0, 1, 0.5], 'FaceAlpha', 0.6);
% Do the same for each segment
for i = 1:numel(c5544_segments)
    c5544_segments(i).render('ax', gca, ...
        'FaceColor', [0, 1, 0.5], 'FaceAlpha', 0.6);
end

view(90,90);

set([gcf, gca], 'Color', 'k'); hideAxes(); tightfig(gcf);

if saveMode
    saveHighResImage(gcf, saveDir, 'yourfilename.png');
end

%% Figure 4A - flatmount
c5544 = NeuronJSON([dataDir, filesep, 'r5544.json']);
c5544.render('FaceColor', [0, 1, 0.5], 'FaceAlpha', 0.6);
% Do the same for each segment
for i = 1:numel(c5544_segments)
    c5544_segments(i).render('ax', gca,...
        'FaceColor', [0, 1, 0.5], 'FaceAlpha', 0.6);
end

view(0,90);
set([gcf, gca], 'Color', 'k'); hideAxes(); tightfig(gcf);

if saveMode
    saveHighResImage(gcf, saveDir, 'yourfilename.png');
end

%% Figure 4B side
c437 = NeuronJSON([dataDir, filesep, 'r437.json']);
c437.render('FaceColor', [1, 0, 0], 'FaceAlpha', 0.6);
% Do the same for the segments
for i = 1:numel(c437_segments)
    c437_segments(i).render('ax', gca,...
        'FaceColor', [1, 0, 0], 'FaceAlpha', 0.6);
end

view(180, 180);
set([gcf, gca], 'Color', 'k'); hideAxes(); tightfig(gcf);

if saveMode
    saveHighResImage(gcf, saveDir, 'yourfilename.png');
end

%% Figure 4B Flatmount 
c437 = NeuronJSON([dataDir, filesep, 'r437.json']);
c437.render('FaceColor', [1, 0, 0], 'FaceAlpha', 0.6);
% Do the same for the segments
for i = 1:numel(c437_segments)
    c437_segments(i).render('ax', gca,...
        'FaceColor', [1, 0, 0], 'FaceAlpha', 0.6);
end

% 20um scalebar
plot([70 90], [195 195], 'w', 'LineWidth', 2); 

view(180,90);
set([gcf, gca], 'Color', 'k'); 
hideAxes(); tightfig(gcf);

if saveMode
    saveHighResImage(gcf, saveDir, 'yourfilename.png');
end
% ---------------------------------------------------------------------
%% Figure 5
% ---------------------------------------------------------------------
% Figure 5A
c5542 = NeuronJSON([dataDir, filesep, 'r5542.json']);
c5542.render('FaceColor', [0, 0.5, 1], 'FaceAlpha', 0.6);
% Do the same for the segments
for i = 1:numel(c5542_segments)
    c5542_segments(i).render('ax', gca,...
        'FaceColor', [0, 0.5, 1], 'FaceAlpha', 0.6);
end

view(270, 180);

set([gcf, gca], 'Color', 'k'); 
hideAxes(); tightfig(gcf);

if saveMode
    saveHighResImage(gcf, saveDir, 'yourfilename.png');
end

% Flatmount view
view(0, 90);
if saveMode
    saveHighResImage(gcf, saveDir, 'yourfilename.png');
end

%% Figure 5B
c6131 = NeuronJSON([dataDir, filesep, 'r6131.json']);
c6131.render('FaceColor', [0.5, 0, 1], 'FaceAlpha', 0.6);
% Do the same for the segments
for i = 1:numel(c6131_segments)
    c6131_segments(i).render('ax', gca,...
        'FaceColor', [0.5, 0, 1], 'FaceAlpha', 0.6);
end

view(90, 180);

set([gcf, gca], 'Color', 'k'); 
hideAxes(); tightfig(gcf);

if saveMode
    saveHighResImage(gcf, saveDir, 'yourfilename.png');
end

%% Figure 5B - Flatmount view
c6131 = NeuronJSON([dataDir, filesep, 'r6131.json']);
c6131.render('FaceColor', [0.5, 0, 1], 'FaceAlpha', 0.6);
% Do the same for the segments
for i = 1:numel(c6131_segments)
    c6131_segments(i).render('ax', gca,...
        'FaceColor', [0.5, 0, 1], 'FaceAlpha', 0.6);
end

view(0,90);

set([gcf, gca], 'Color', 'k'); hideAxes(); tightfig(gcf);

if saveMode
    saveHighResImage(gcf, saveDir, 'yourfilename.png');
end

%% Figure 5AB
c5542 = NeuronJSON([dataDir, filesep, 'r5542.json']);
c6131 = NeuronJSON([dataDir, filesep, 'r6131.json']);
c5542.render('FaceColor', [0, 0.5, 1], 'FaceAlpha', 1);
c6131.render('ax', gca, 'FaceColor', [0.5, 0, 1], 'FaceAlpha', 1);

% Set the segments similarly
for i = 1:numel(c5542_segments)
    c5542_segments(i).render('ax', gca,...
        'FaceColor', [0, 0.5, 1], 'FaceAlpha', 1);
end
for i = 1:numel(c6131_segments)
    c6131_segments(i).render('ax', gca,...
        'FaceColor', [0.5, 0, 1], 'FaceAlpha', 1);
end

% Clip out the somas, leaving only the dendrites
zlim([11.5 24]);

view(0,90);

% 20 um scalebar
plot3([165 185], [170 170], [24 24], 'w', 'LineWidth', 2); 

set([gcf, gca], 'Color', 'k'); hideAxes(); tightfig(gcf);

if saveMode
    saveHighResImage(gcf, saveDir, 'yourfilename.png');
end