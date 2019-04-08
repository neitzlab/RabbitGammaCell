%% NOTE: Relies on variables assigned in FullFigures.m
% Set to the folder where the json files will be saved
dataDir = ''; 


%% Create JSON IO class
x = sbfsem.io.JSON('r', dataDir);

% Main neurons
x.export(c437);
x.export(c5542);
x.export(c5544);
x.export(c6131);
x.export(c476);
x.export(c13525);

% Extra branches
for i = 1:numel(c437_segments)
    x.export(c437_segments(i));
end

for i = 1:numel(c5542_segments)
    x.export(c5542_segments(i));
end

for i = 1:numel(c5544_segments)
    x.export(c5544_segments(i));
end

for i = 1:numel(c6131_segments)
    x.export(c6131_segments(i));
end

for i = 1:numel(c13525_segments)
    x.export(c13525_segments(i));
end
