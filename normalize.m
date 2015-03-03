function normal=normalize(mat)

[r c] = size(mat)
normal = mat;
o = std(mat);
u = mean(mat);
normal (:,o>0) = (mat(:,o>0) - repmat(u(o>0),[r 1])) ./ repmat(o(o>0), [r 1])