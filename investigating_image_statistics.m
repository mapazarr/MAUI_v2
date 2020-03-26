data_folder = '/Volumes/ALEX_SSD/ALEX G-DRIVE USB/Brain data/JP/JPO_data/19Apr19_Run3_1024/19Apr19_Run3_Final/NoAuNoBg_09Apr19/';
x = imread([data_folder, 'Point1/TIFs/CD45.tif']);

% imagesc(x((653:676)-400, (850:894)));
low_data = double(x((653:676)-400, (850:894)));
high_data = double(x(653:676, 850:894));

figure()
h = fspecial('disk',3); hlist = sort(unique(h)); t=hlist(2);
h = h>t;

synth_low_data = zeros(size(low_data)) + mean(low_data(:)); synth_low_data = poissrnd(synth_low_data);
subplot(2,2,1); imagesc(low_data); title('Real low data')
subplot(2,2,2); imagesc(synth_low_data);