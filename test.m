struct = csvread('birthmark.csv')
stat = csvread('stat.csv')
statn = normalize(stat);
structn = normalize(struct);

fullbm = cat(2, stat, struct);
fullbmn = cat(2, statn, structn);
%fullbmn(:, ~any(fullbmn, 1) ) = [];