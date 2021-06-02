%%
% The model copy has our modem design
modelname     = 'copy';
open_system(modelname);
%% Initialize variables
bitRate = 250000  % Transmission rate (b/s)
bitsPerFrame = 4 % Number of bits per frame
delayVector = [0 2 4 8]*1e-07 % Discrete path delays (s)
gainVector  = [-0 -3 -6 -9]% Average path gains (dB)
spf = 4;
sps = 4;
cps = 32;
maxDopplerShift = 200 % Maximum Doppler shift of diffuse components (Hz)
%% Ber Calculation
ber = 1e-4;
EbNo_vector=[-10:2.5:10];    % Eb/No values

for i=1:length(EbNo_vector)
    EbNo=EbNo_vector(i);
    fprintf('%f\n', EbNo);
end
%%
% Cleanup
close_system(modelname, 0);
%clear
