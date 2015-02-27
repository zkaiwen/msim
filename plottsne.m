result = load('tsne.mat');
labels = load('labels.csv');
result = result.mX;
labelstr = num2str((1:size(result,1))', '%d');
scatter(result(:,1), result(:,2), 40, labels, 'filled', 'MarkerEdgeColor', [0, 0, 0], 'LineWidth', 1);
text(result(:,1), result(:,2), labelstr, 'FontSize', 8);