function pcatsne(mat)

%PCA
pcaresult = pcatest(mat);


%REDUCE TO 30 DIM THEN RUN TSNE
no_dims = 2; % supposed number of dimensions
prp = 30; % perplexity
mappedX = compute_mapping(pcaresult(:, [1:30]), 't-SNE', no_dims, prp);


labels = load('labels.csv');
labelstr = num2str((1:size(mappedX,1))', '%d');
scatter(mappedX(:,1), mappedX(:,2), 40, labels, 'filled', 'MarkerEdgeColor', [0, 0, 0], 'LineWidth', 1);
text(mappedX(:,1), mappedX(:,2), labelstr, 'FontSize', 8);