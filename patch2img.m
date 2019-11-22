function F = patch2img(A, patch, patch_size, overlap)

 % 创建一个与原始图像一样大小的矩阵存储patch2img
[h, w] = size(A);
F = zeros(h,w);
% 创建一个与原始图像大小的矩阵存放重叠数
cntMat = zeros(h,w);

gridx = 1:patch_size - overlap : w-patch_size+1;
gridy = 1:patch_size - overlap : h-patch_size+1;
cnt=1;
for ii = 1:length(gridx)
    for jj = 1:length(gridy)
        %cnt = cnt+1;
        xx = gridx(ii);
        yy = gridy(jj);
        
        repat = reshape(patch(:,cnt),[patch_size,patch_size]);
        F(yy:yy+patch_size-1, xx:xx+patch_size-1) = F(yy:yy+patch_size-1, xx:xx+patch_size-1) + repat;
        cntMat(yy:yy+patch_size-1, xx:xx+patch_size-1) = cntMat(yy:yy+patch_size-1, xx:xx+patch_size-1) + 1;
        cnt = cnt+1;
    end
    
end
idx = (cntMat < 1);
F(idx) = A(idx);
cntMat(idx) = 1;

F = F./cntMat;

end

