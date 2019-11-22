function Testpatch= img2patch(data, patch_size, overlap)
   
    [h, w] = size(data);
    gridx = 1:patch_size - overlap : w-patch_size+1;
    gridy = 1:patch_size - overlap : h-patch_size+1;

    Testpatch = zeros(patch_size.^2,length(gridx)*length(gridy));
    counter=1;
    for ii = 1:length(gridx)
        for jj = 1:length(gridy)
            xx = gridx(ii);
            yy = gridy(jj);
            patch_1 = data(yy:yy+patch_size-1, xx:xx+patch_size-1);
            patch1 = patch_1(:);
            Testpatch(:,counter) = patch1;
            counter = counter+1;
        end
    end
end

