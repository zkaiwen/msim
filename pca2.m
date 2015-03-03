function [COEFF, SCORE, LATENT] = pca2(data)

[n m] = size(data);
AMean = mean(data);
ASTD = std(data);
B = zscore(data);
[COEFF SCORE LATENT] = princomp(B);
orig = ((B*COEFF)*COEFF').*repmat(ASTD,[n 1])+repmat(AMean,[n 1])