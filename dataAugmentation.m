%data augmentation
function  dataAugmentation(sub_image,subR, augmentedDataPath)

%sub_image =im2double(sub_image);
%sub_image = mat2gray(sub_image);%��һ��
%sub_image = im2uint8(sub_image);
% ��ת90��
r1 = rot90(sub_image);
AR = subR;
AR.RasterSize= size(r1);
subFilename = [augmentedDataPath,'r1.tif'];
geotiffwrite(subFilename, r1,AR, 'CoordRefSysCode',32650);%����tif����
%��ת180��
r2 = rot90(sub_image,2);
AR = subR;
AR.RasterSize= size(r2);
subFilename = [augmentedDataPath,'r2.tif'];
geotiffwrite(subFilename, r2,AR, 'CoordRefSysCode',32650);
%��ת270��
r3 = rot90(sub_image,3);
AR = subR;
AR.RasterSize= size(r3);
subFilename = [augmentedDataPath,'r3.tif'];
geotiffwrite(subFilename, r3,AR, 'CoordRefSysCode',32650);

%ˮƽ��ת
f1 = fliplr(sub_image);
AR = subR;
AR.RasterSize= size(f1);
subFilename = [augmentedDataPath,'f1.tif'];
geotiffwrite(subFilename, f1,AR, 'CoordRefSysCode',32650);

%��ֱ��ת
f2 = flipud(sub_image);
AR = subR;
AR.RasterSize= size(f2);
subFilename = [augmentedDataPath,'f2.tif'];
geotiffwrite(subFilename, f2,AR, 'CoordRefSysCode',32650);




