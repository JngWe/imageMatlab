clc
close all
clear all
obj = VideoReader('./frame.mkv');%������Ƶλ��
numFrames = obj.NumberOfFrames;% ֡������
for k = 1 : numFrames
    frame = read(obj,k);%��ȡ�ڼ�֡
    % imshow(frame);%��ʾ֡
    %imwrite(frame,strcat('C:\Users\Administrator\Desktop\frame\',num2str(k),'.jpg'),'jpg');% ����֡
    if k == 1
        point = frame(10:20,30:50);
    else
        if point == frame(10:20,30:50)
            fprintf('the frame %d \n', k)
        end
        point = frame(1,1);
    end    
end
