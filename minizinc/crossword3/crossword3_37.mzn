%
% Crossword problem '21.08, 21 x 21' in MiniZinc.
%
% (generated Sat Sep 24 08:54:24 2011 by `make_crossword.pl 37 1` ).
%
% This crossword model was 
%
% This is problem '21.08, 21 x 21' from the Gecode crossword example:
%   http://www.gecode.org/doc-latest/reference/crossword_8cpp_source.html
% 
% 
% This MiniZinc model was created by Hakan Kjellerstrand, hakank@bonetmail.com
% See also my MiniZinc page: http://www.hakank.org/minizinc
%

%
% Gecode problem to solve (37): 21.08, 21 x 21
% 
%   _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ _
%   _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ _
%   _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ _
%   _ _ _ _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ _
%   * * * _ _ _ _ * _ _ _ _ _ * _ _ _ _ * * *
%   _ _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ _ _ _
%   _ _ _ _ _ * * _ _ _ _ * _ _ _ _ _ * _ _ _
%   _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ _
%   _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _
%   _ _ _ _ _ _ _ _ _ * _ _ _ _ * _ _ _ _ _ _
%   * * * _ _ _ _ * * _ _ _ * * _ _ _ _ * * *
%   _ _ _ _ _ _ * _ _ _ _ * _ _ _ _ _ _ _ _ _
%   _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _
%   _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ _
%   _ _ _ * _ _ _ _ _ * _ _ _ _ * * _ _ _ _ _
%   _ _ _ _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ _
%   * * * _ _ _ _ * _ _ _ _ _ * _ _ _ _ * * *
%   _ _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ _ _ _
%   _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ _
%   _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ _
%   _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ _

include "crossword3.mzn"; 

problem_name = "21.08, 21 x 21";


% number of letters to assign
N = 365;


% distinct words
require_distinct_words = 1;

constraint
  table([L[1], L[2], L[3], L[4]], words4) 
/\ table([L[5], L[6], L[7], L[8], L[9]], words5) 
/\ table([L[10], L[11], L[12], L[13], L[14]], words5) 
/\ table([L[15], L[16], L[17], L[18]], words4) 
/\ table([L[19], L[20], L[21], L[22]], words4) 
/\ table([L[23], L[24], L[25], L[26], L[27]], words5) 
/\ table([L[28], L[29], L[30], L[31], L[32]], words5) 
/\ table([L[33], L[34], L[35], L[36]], words4) 
/\ table([L[37], L[38], L[39], L[40]], words4) 
/\ table([L[41], L[42], L[43], L[44], L[45]], words5) 
/\ table([L[46], L[47], L[48], L[49], L[50]], words5) 
/\ table([L[51], L[52], L[53], L[54]], words4) 
/\ table([L[55], L[56], L[57], L[58], L[59], L[60], L[61], L[62]], words8) 
/\ table([L[63], L[64], L[65], L[66], L[67]], words5) 
/\ table([L[68], L[69], L[70], L[71], L[72], L[73]], words6) 
/\ table([L[74], L[75], L[76], L[77]], words4) 
/\ table([L[78], L[79], L[80], L[81], L[82]], words5) 
/\ table([L[83], L[84], L[85], L[86]], words4) 
/\ table([L[87], L[88], L[89], L[90], L[91], L[92]], words6) 
/\ table([L[93], L[94], L[95], L[96], L[97]], words5) 
/\ table([L[98], L[99], L[100], L[101], L[102], L[103], L[104], L[105]], words8) 
/\ table([L[106], L[107], L[108], L[109], L[110]], words5) 
/\ table([L[111], L[112], L[113], L[114]], words4) 
/\ table([L[115], L[116], L[117], L[118], L[119]], words5) 
/\ table([L[120], L[121], L[122]], words3) 
/\ table([L[123], L[124], L[125], L[126]], words4) 
/\ table([L[127], L[128], L[129], L[130], L[131]], words5) 
/\ table([L[132], L[133], L[134], L[135], L[136]], words5) 
/\ table([L[137], L[138], L[139], L[140]], words4) 
/\ table([L[141], L[142], L[143]], words3) 
/\ table([L[144], L[145], L[146], L[147], L[148]], words5) 
/\ table([L[149], L[150], L[151], L[152], L[153]], words5) 
/\ table([L[154], L[155], L[156], L[157], L[158]], words5) 
/\ table([L[159], L[160], L[161], L[162], L[163], L[164], L[165], L[166], L[167]], words9) 
/\ table([L[168], L[169], L[170], L[171]], words4) 
/\ table([L[172], L[173], L[174], L[175], L[176], L[177]], words6) 
/\ table([L[178], L[179], L[180], L[181]], words4) 
/\ table([L[182], L[183], L[184]], words3) 
/\ table([L[185], L[186], L[187], L[188]], words4) 
/\ table([L[189], L[190], L[191], L[192], L[193], L[194]], words6) 
/\ table([L[195], L[196], L[197], L[198]], words4) 
/\ table([L[199], L[200], L[201], L[202], L[203], L[204], L[205], L[206], L[207]], words9) 
/\ table([L[208], L[209], L[210], L[211], L[212]], words5) 
/\ table([L[213], L[214], L[215], L[216], L[217]], words5) 
/\ table([L[218], L[219], L[220], L[221], L[222]], words5) 
/\ table([L[223], L[224], L[225]], words3) 
/\ table([L[226], L[227], L[228], L[229]], words4) 
/\ table([L[230], L[231], L[232], L[233], L[234]], words5) 
/\ table([L[235], L[236], L[237], L[238], L[239]], words5) 
/\ table([L[240], L[241], L[242], L[243]], words4) 
/\ table([L[244], L[245], L[246]], words3) 
/\ table([L[247], L[248], L[249], L[250], L[251]], words5) 
/\ table([L[252], L[253], L[254], L[255]], words4) 
/\ table([L[256], L[257], L[258], L[259], L[260]], words5) 
/\ table([L[261], L[262], L[263], L[264], L[265], L[266], L[267], L[268]], words8) 
/\ table([L[269], L[270], L[271], L[272], L[273]], words5) 
/\ table([L[274], L[275], L[276], L[277], L[278], L[279]], words6) 
/\ table([L[280], L[281], L[282], L[283]], words4) 
/\ table([L[284], L[285], L[286], L[287], L[288]], words5) 
/\ table([L[289], L[290], L[291], L[292]], words4) 
/\ table([L[293], L[294], L[295], L[296], L[297], L[298]], words6) 
/\ table([L[299], L[300], L[301], L[302], L[303]], words5) 
/\ table([L[304], L[305], L[306], L[307], L[308], L[309], L[310], L[311]], words8) 
/\ table([L[312], L[313], L[314], L[315]], words4) 
/\ table([L[316], L[317], L[318], L[319], L[320]], words5) 
/\ table([L[321], L[322], L[323], L[324], L[325]], words5) 
/\ table([L[326], L[327], L[328], L[329]], words4) 
/\ table([L[330], L[331], L[332], L[333]], words4) 
/\ table([L[334], L[335], L[336], L[337], L[338]], words5) 
/\ table([L[339], L[340], L[341], L[342], L[343]], words5) 
/\ table([L[344], L[345], L[346], L[347]], words4) 
/\ table([L[348], L[349], L[350], L[351]], words4) 
/\ table([L[352], L[353], L[354], L[355], L[356]], words5) 
/\ table([L[357], L[358], L[359], L[360], L[361]], words5) 
/\ table([L[362], L[363], L[364], L[365]], words4) 
/\ table([L[1], L[19], L[37], L[55]], words4) 
/\ table([L[87], L[106], L[123], L[141], L[159]], words5) 
/\ table([L[189], L[208], L[226], L[244], L[261]], words5) 
/\ table([L[293], L[312], L[330], L[348]], words4) 
/\ table([L[2], L[20], L[38], L[56]], words4) 
/\ table([L[88], L[107], L[124], L[142], L[160]], words5) 
/\ table([L[190], L[209], L[227], L[245], L[262]], words5) 
/\ table([L[294], L[313], L[331], L[349]], words4) 
/\ table([L[3], L[21], L[39], L[57]], words4) 
/\ table([L[89], L[108], L[125], L[143], L[161]], words5) 
/\ table([L[191], L[210], L[228], L[246], L[263]], words5) 
/\ table([L[295], L[314], L[332], L[350]], words4) 
/\ table([L[4], L[22], L[40], L[58], L[74], L[90], L[109], L[126]], words8) 
/\ table([L[162], L[178], L[192], L[211], L[229]], words5) 
/\ table([L[264], L[280], L[296], L[315], L[333], L[351]], words6) 
/\ table([L[59], L[75], L[91], L[110]], words4) 
/\ table([L[144], L[163], L[179], L[193], L[212]], words5) 
/\ table([L[247], L[265], L[281], L[297]], words4) 
/\ table([L[5], L[23], L[41], L[60], L[76], L[92]], words6) 
/\ table([L[127], L[145], L[164], L[180], L[194]], words5) 
/\ table([L[230], L[248], L[266], L[282], L[298], L[316], L[334], L[352]], words8) 
/\ table([L[6], L[24], L[42], L[61], L[77]], words5) 
/\ table([L[128], L[146], L[165], L[181]], words4) 
/\ table([L[213], L[231], L[249], L[267], L[283]], words5) 
/\ table([L[317], L[335], L[353]], words3) 
/\ table([L[7], L[25], L[43], L[62]], words4) 
/\ table([L[93], L[111], L[129], L[147], L[166]], words5) 
/\ table([L[195], L[214], L[232], L[250], L[268]], words5) 
/\ table([L[299], L[318], L[336], L[354]], words4) 
/\ table([L[8], L[26], L[44]], words3) 
/\ table([L[78], L[94], L[112], L[130], L[148], L[167]], words6) 
/\ table([L[196], L[215], L[233], L[251]], words4) 
/\ table([L[284], L[300], L[319], L[337], L[355]], words5) 
/\ table([L[9], L[27], L[45], L[63], L[79], L[95], L[113], L[131]], words8) 
/\ table([L[182], L[197], L[216], L[234]], words4) 
/\ table([L[269], L[285], L[301], L[320], L[338], L[356]], words6) 
/\ table([L[64], L[80], L[96], L[114]], words4) 
/\ table([L[149], L[168], L[183], L[198], L[217]], words5) 
/\ table([L[252], L[270], L[286], L[302]], words4) 
/\ table([L[10], L[28], L[46], L[65], L[81], L[97]], words6) 
/\ table([L[132], L[150], L[169], L[184]], words4) 
/\ table([L[235], L[253], L[271], L[287], L[303], L[321], L[339], L[357]], words8) 
/\ table([L[11], L[29], L[47], L[66], L[82]], words5) 
/\ table([L[115], L[133], L[151], L[170]], words4) 
/\ table([L[199], L[218], L[236], L[254], L[272], L[288]], words6) 
/\ table([L[322], L[340], L[358]], words3) 
/\ table([L[12], L[30], L[48], L[67]], words4) 
/\ table([L[98], L[116], L[134], L[152], L[171]], words5) 
/\ table([L[200], L[219], L[237], L[255], L[273]], words5) 
/\ table([L[304], L[323], L[341], L[359]], words4) 
/\ table([L[13], L[31], L[49]], words3) 
/\ table([L[83], L[99], L[117], L[135], L[153]], words5) 
/\ table([L[185], L[201], L[220], L[238]], words4) 
/\ table([L[289], L[305], L[324], L[342], L[360]], words5) 
/\ table([L[14], L[32], L[50], L[68], L[84], L[100], L[118], L[136]], words8) 
/\ table([L[172], L[186], L[202], L[221], L[239]], words5) 
/\ table([L[274], L[290], L[306], L[325], L[343], L[361]], words6) 
/\ table([L[69], L[85], L[101], L[119]], words4) 
/\ table([L[154], L[173], L[187], L[203], L[222]], words5) 
/\ table([L[256], L[275], L[291], L[307]], words4) 
/\ table([L[15], L[33], L[51], L[70], L[86], L[102]], words6) 
/\ table([L[137], L[155], L[174], L[188], L[204]], words5) 
/\ table([L[240], L[257], L[276], L[292], L[308], L[326], L[344], L[362]], words8) 
/\ table([L[16], L[34], L[52], L[71]], words4) 
/\ table([L[103], L[120], L[138], L[156], L[175]], words5) 
/\ table([L[205], L[223], L[241], L[258], L[277]], words5) 
/\ table([L[309], L[327], L[345], L[363]], words4) 
/\ table([L[17], L[35], L[53], L[72]], words4) 
/\ table([L[104], L[121], L[139], L[157], L[176]], words5) 
/\ table([L[206], L[224], L[242], L[259], L[278]], words5) 
/\ table([L[310], L[328], L[346], L[364]], words4) 
/\ table([L[18], L[36], L[54], L[73]], words4) 
/\ table([L[105], L[122], L[140], L[158], L[177]], words5) 
/\ table([L[207], L[225], L[243], L[260], L[279]], words5) 
/\ table([L[311], L[329], L[347], L[365]], words4)
;

% The segments (words)
% (0 for fill outs)
int: max_length = 21;
int: num_segments = 150;
array[1..num_segments, 1..max_length] of int: segments = array2d(1..num_segments, 1..max_length, 
[
1,2,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
5,6,7,8,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
10,11,12,13,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
15,16,17,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
19,20,21,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
23,24,25,26,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
28,29,30,31,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
33,34,35,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
37,38,39,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
41,42,43,44,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
46,47,48,49,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
51,52,53,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
55,56,57,58,59,60,61,62,0,0,0,0,0,0,0,0,0,0,0,0,0,
63,64,65,66,67,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
68,69,70,71,72,73,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
74,75,76,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
78,79,80,81,82,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
83,84,85,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
87,88,89,90,91,92,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
93,94,95,96,97,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
98,99,100,101,102,103,104,105,0,0,0,0,0,0,0,0,0,0,0,0,0,
106,107,108,109,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
111,112,113,114,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
115,116,117,118,119,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
120,121,122,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
123,124,125,126,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
127,128,129,130,131,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
132,133,134,135,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
137,138,139,140,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
141,142,143,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
144,145,146,147,148,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
149,150,151,152,153,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
154,155,156,157,158,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
159,160,161,162,163,164,165,166,167,0,0,0,0,0,0,0,0,0,0,0,0,
168,169,170,171,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
172,173,174,175,176,177,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
178,179,180,181,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
182,183,184,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
185,186,187,188,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
189,190,191,192,193,194,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
195,196,197,198,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
199,200,201,202,203,204,205,206,207,0,0,0,0,0,0,0,0,0,0,0,0,
208,209,210,211,212,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
213,214,215,216,217,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
218,219,220,221,222,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
223,224,225,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
226,227,228,229,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
230,231,232,233,234,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
235,236,237,238,239,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
240,241,242,243,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
244,245,246,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
247,248,249,250,251,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
252,253,254,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
256,257,258,259,260,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
261,262,263,264,265,266,267,268,0,0,0,0,0,0,0,0,0,0,0,0,0,
269,270,271,272,273,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
274,275,276,277,278,279,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
280,281,282,283,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
284,285,286,287,288,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
289,290,291,292,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
293,294,295,296,297,298,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
299,300,301,302,303,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
304,305,306,307,308,309,310,311,0,0,0,0,0,0,0,0,0,0,0,0,0,
312,313,314,315,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
316,317,318,319,320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
321,322,323,324,325,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
326,327,328,329,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
330,331,332,333,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
334,335,336,337,338,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
339,340,341,342,343,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
344,345,346,347,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
348,349,350,351,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
352,353,354,355,356,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
357,358,359,360,361,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
362,363,364,365,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
1,19,37,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
87,106,123,141,159,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
189,208,226,244,261,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
293,312,330,348,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,20,38,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
88,107,124,142,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
190,209,227,245,262,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
294,313,331,349,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,21,39,57,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
89,108,125,143,161,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
191,210,228,246,263,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
295,314,332,350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
4,22,40,58,74,90,109,126,0,0,0,0,0,0,0,0,0,0,0,0,0,
162,178,192,211,229,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
264,280,296,315,333,351,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
59,75,91,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
144,163,179,193,212,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
247,265,281,297,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
5,23,41,60,76,92,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
127,145,164,180,194,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
230,248,266,282,298,316,334,352,0,0,0,0,0,0,0,0,0,0,0,0,0,
6,24,42,61,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
128,146,165,181,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
213,231,249,267,283,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
317,335,353,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
7,25,43,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
93,111,129,147,166,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
195,214,232,250,268,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
299,318,336,354,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
8,26,44,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
78,94,112,130,148,167,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
196,215,233,251,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
284,300,319,337,355,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
9,27,45,63,79,95,113,131,0,0,0,0,0,0,0,0,0,0,0,0,0,
182,197,216,234,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
269,285,301,320,338,356,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
64,80,96,114,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
149,168,183,198,217,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
252,270,286,302,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
10,28,46,65,81,97,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
132,150,169,184,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
235,253,271,287,303,321,339,357,0,0,0,0,0,0,0,0,0,0,0,0,0,
11,29,47,66,82,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
115,133,151,170,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
199,218,236,254,272,288,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
322,340,358,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
12,30,48,67,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
98,116,134,152,171,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
200,219,237,255,273,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
304,323,341,359,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
13,31,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
83,99,117,135,153,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
185,201,220,238,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
289,305,324,342,360,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
14,32,50,68,84,100,118,136,0,0,0,0,0,0,0,0,0,0,0,0,0,
172,186,202,221,239,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
274,290,306,325,343,361,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
69,85,101,119,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
154,173,187,203,222,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
256,275,291,307,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
15,33,51,70,86,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
137,155,174,188,204,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
240,257,276,292,308,326,344,362,0,0,0,0,0,0,0,0,0,0,0,0,0,
16,34,52,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
103,120,138,156,175,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
205,223,241,258,277,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
309,327,345,363,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
17,35,53,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
104,121,139,157,176,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
206,224,242,259,278,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
310,328,346,364,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
18,36,54,73,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
105,122,140,158,177,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
207,225,243,260,279,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
311,329,347,365,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,

]);

% Problem where each cell is assigned a unique index.
% (0 means blocked cell)
int: rows = 21;
int: cols = 21;
array[1..rows, 1..cols] of int: problem = array2d(1..rows, 1..cols,
[
1, 2, 3, 4, 0, 5, 6, 7, 8, 9, 0, 10, 11, 12, 13, 14, 0, 15, 16, 17, 18, 
19, 20, 21, 22, 0, 23, 24, 25, 26, 27, 0, 28, 29, 30, 31, 32, 0, 33, 34, 35, 36, 
37, 38, 39, 40, 0, 41, 42, 43, 44, 45, 0, 46, 47, 48, 49, 50, 0, 51, 52, 53, 54, 
55, 56, 57, 58, 59, 60, 61, 62, 0, 63, 64, 65, 66, 67, 0, 68, 69, 70, 71, 72, 73, 
0, 0, 0, 74, 75, 76, 77, 0, 78, 79, 80, 81, 82, 0, 83, 84, 85, 86, 0, 0, 0, 
87, 88, 89, 90, 91, 92, 0, 93, 94, 95, 96, 97, 0, 98, 99, 100, 101, 102, 103, 104, 105, 
106, 107, 108, 109, 110, 0, 0, 111, 112, 113, 114, 0, 115, 116, 117, 118, 119, 0, 120, 121, 122, 
123, 124, 125, 126, 0, 127, 128, 129, 130, 131, 0, 132, 133, 134, 135, 136, 0, 137, 138, 139, 140, 
141, 142, 143, 0, 144, 145, 146, 147, 148, 0, 149, 150, 151, 152, 153, 0, 154, 155, 156, 157, 158, 
159, 160, 161, 162, 163, 164, 165, 166, 167, 0, 168, 169, 170, 171, 0, 172, 173, 174, 175, 176, 177, 
0, 0, 0, 178, 179, 180, 181, 0, 0, 182, 183, 184, 0, 0, 185, 186, 187, 188, 0, 0, 0, 
189, 190, 191, 192, 193, 194, 0, 195, 196, 197, 198, 0, 199, 200, 201, 202, 203, 204, 205, 206, 207, 
208, 209, 210, 211, 212, 0, 213, 214, 215, 216, 217, 0, 218, 219, 220, 221, 222, 0, 223, 224, 225, 
226, 227, 228, 229, 0, 230, 231, 232, 233, 234, 0, 235, 236, 237, 238, 239, 0, 240, 241, 242, 243, 
244, 245, 246, 0, 247, 248, 249, 250, 251, 0, 252, 253, 254, 255, 0, 0, 256, 257, 258, 259, 260, 
261, 262, 263, 264, 265, 266, 267, 268, 0, 269, 270, 271, 272, 273, 0, 274, 275, 276, 277, 278, 279, 
0, 0, 0, 280, 281, 282, 283, 0, 284, 285, 286, 287, 288, 0, 289, 290, 291, 292, 0, 0, 0, 
293, 294, 295, 296, 297, 298, 0, 299, 300, 301, 302, 303, 0, 304, 305, 306, 307, 308, 309, 310, 311, 
312, 313, 314, 315, 0, 316, 317, 318, 319, 320, 0, 321, 322, 323, 324, 325, 0, 326, 327, 328, 329, 
330, 331, 332, 333, 0, 334, 335, 336, 337, 338, 0, 339, 340, 341, 342, 343, 0, 344, 345, 346, 347, 
348, 349, 350, 351, 0, 352, 353, 354, 355, 356, 0, 357, 358, 359, 360, 361, 0, 362, 363, 364, 365, 

]);


