function pcatsne(mat)

%PCA
pcaresult = pcatest(mat);
figure
labels = load('labels.csv');
labels = labels'
labelstr = num2str((1:size(mat,1))', '%d');
scatter3(pcaresult(:,1), pcaresult(:,2),  pcaresult(:,3), 40, labels, 'filled', 'MarkerEdgeColor', [0, 0, 0], 'LineWidth', 1);
text(pcaresult(:,1), pcaresult(:,2), pcaresult(:,3),  labelstr, 'FontSize', 8)


%REDUCE TO 30 DIM THEN RUN TSNE
no_dims = 2; % supposed number of dimensions
prp = 5; % perplexity

%Take the first 60 dimensions of pca at least handles 95% of variance
mappedX = compute_mapping(pcaresult(:, [1:60]), 't-SNE', no_dims, prp);

figure
scatter(mappedX(:,1), mappedX(:,2), 40, labels, 'filled', 'MarkerEdgeColor', [0, 0, 0], 'LineWidth', 1);
text(mappedX(:,1), mappedX(:,2), labelstr, 'FontSize', 8);