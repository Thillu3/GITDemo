clc;
clear all;
close all;

[filenamefp, pathnamefp]=uigetfile('*.avi*');
fp=strcat(pathnamefp , filenamefp);
readerobj = mmreader(fp);
vidFrames = read(readerobj);
numFrames = get(readerobj, 'numberOfFrames');

for t = 1 : numFrames
currFrame = read(readerobj, t);    %reading individual frames
numFramesWritten = 0;
opBaseFileName = sprintf('%3.3d.jpg', t);
opFullFileName = fullfile('C:\Users\thilakavathy\Desktop\project\driver\frames', opBaseFileName);
imwrite(currFrame, opFullFileName, 'jpg');   %saving as 'png' file
progIndication = sprintf('Wrote frame %4d of %d.', t, numFrames);
disp(progIndication);
numFramesWritten = numFramesWritten + 1;  
end
progIndication = sprintf('Wrote %d frames to folder "%s"',numFramesWritten,'C:\Users\thilakavathy\Desktop\project\driver\frames');
disp(progIndication);

I=imread('C:\Users\thilakavathy\Desktop\project\driver\frames\024.jpg');
figure,imshow(I);

Hi   ewfjghewg
