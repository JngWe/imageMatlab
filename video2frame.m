clc
close all
clear all
obj = VideoReader('./frame.mkv');%输入视频位置
numFrames = obj.NumberOfFrames;% 帧的总数
for k = 1 : numFrames
    frame = read(obj,k);%读取第几帧
    % imshow(frame);%显示帧
    %imwrite(frame,strcat('C:\Users\Administrator\Desktop\frame\',num2str(k),'.jpg'),'jpg');% 保存帧
    if k == 1
        point = frame(10:20,30:50);
    else
        if point == frame(10:20,30:50)
            fprintf('the frame %d \n', k)
        end
        point = frame(1,1);
    end    
end
