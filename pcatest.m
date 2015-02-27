function pcaresult = pcatest(fp)
[COEFF SCORE LATENT] = pca2(fp);

labels = load('labels.csv');
labelstr = num2str((1:size(SCORE,1))', '%d');
scatter(SCORE(:,1), SCORE(:,2), 40, labels, 'filled', 'MarkerEdgeColor', [0, 0, 0], 'LineWidth', 1);
text(SCORE(:,1), SCORE(:,2), labelstr, 'FontSize', 8)
pcaresult= SCORE;

[V, D] = eig(cov(fp));
var = cumsum(flipud(diag(D)))/sum(diag(D))
