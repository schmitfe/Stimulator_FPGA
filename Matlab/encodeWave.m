function [] = encodeWave(filename,Description,WF1, WF2, wordwidth)
%encodeWave Stores JSON encoding of Waveforms WF1 and WF2 in a file.
%   filename:       String (max 8 letter, use "")
%   Description:    String
%   WFX:            Numberarray [-1,1] (line vector)
%   wordwidth:      Wordwidth of memory of stimulator
%   Waveforms are scaled to the fitting range of the wordwidth

figure();
subplot(2,2,1);
plot(WF1);
title('WF1')
subplot(2,2,2)
plot(WF2);
title('WF2')
maxValue=2^(wordwidth)-1;
minValue=0;
s=struct;
s.description=Description;
s.wordwidth=wordwidth;

if abs(WF1(end)) > 1e4*eps      %%to ensure 0 at interphase/period interval
   WF1=[WF1 0]; 
end


if abs(WF2(end)) > 1e4*eps
   WF2=[WF2 0]; 
end
s.length=[length(WF1),length(WF2)];
WF1=round((WF1+1).*2^(wordwidth-1)-1);
WF2=round((WF2+1).*2^(wordwidth-1)-1);

WF1(WF1>maxValue)=maxValue;
WF2(WF2>maxValue)=maxValue;
WF1(WF1<minValue)=minValue;
WF2(WF2<minValue)=minValue;
s.WF1=WF1;
s.WF2=WF2;

subplot(2,2,3);
plot(WF1);
xlabel('k')
subplot(2,2,4)
plot(WF2);
xlabel('k');

text = jsonencode(s);
fileID = fopen(filename+'.jso','w');
fprintf(fileID,text);
fclose(fileID);
display(text)
end

