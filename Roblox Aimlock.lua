local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\1\21","\44\47\59\74\78\181"),function(v42) if (v9(v42,2)==81) then local v92=0;while true do if (v92==0) then v30=v8(v11(v42,2 -1 ,1));return "";end end else local v93=0;local v94;while true do if (v93==0) then v94=v10(v8(v42,16));if v30 then local v118=0;local v119;while true do if (v118==1) then return v119;end if (v118==0) then v119=v13(v94,v30);v30=nil;v118=1;end end else return v94;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v95=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v95-(v95%1) ;else local v96=0;local v97;while true do if (v96==0) then v97=(5 -3)^(v44-1) ;return (((v43%(v97 + v97))>=v97) and 1) or 0 ;end end end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33() local v47=0;local v48;local v49;while true do if (v47==1) then return (v49 * 256) + v48 ;end if (v47==0) then v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v47=1;end end end local function v34() local v50,v51,v52,v53=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v53 * 16777216) + (v52 * (126505 -60969)) + (v51 * 256) + v50 ;end local function v35() local v54=0;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (v54==2) then v59=v31(v56,21,31);v60=((v31(v56,32)==1) and  -1) or 1 ;v54=3;end if (v54==1) then v57=1;v58=(v31(v56,1,20) * (2^32)) + v55 ;v54=2;end if (v54==3) then if (v59==(0 -0)) then if (v58==0) then return v60 * 0 ;else local v120=0;while true do if (0==v120) then v59=1;v57=0;break;end end end elseif (v59==2047) then return ((v58==0) and (v60 * ((620 -(555 + 64))/0))) or (v60 * NaN) ;end return v16(v60,v59-1023 ) * (v57 + (v58/(2^52))) ;end if (v54==0) then v55=v34();v56=v34();v54=1;end end end local function v36(v61) local v62=0;local v63;local v64;while true do if (v62==2) then v64={};for v101=1, #v63 do v64[v101]=v10(v9(v11(v63,v101,v101)));end v62=3;end if (v62==0) then v63=nil;if  not v61 then v61=v34();if (v61==0) then return "";end end v62=1;end if (v62==1) then v63=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;v62=2;end if (v62==3) then return v14(v64);end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v65=0;local v66;local v67;local v68;local v69;local v70;local v71;while true do if (v65==1) then v70=v34();v71={};for v103=1,v70 do local v104=v32();local v105;if (v104==1) then v105=v32()~=0 ;elseif (v104==2) then v105=v35();elseif (v104==3) then v105=v36();end v71[v103]=v105;end v69[3]=v32();v65=2;end if (v65==0) then v66={};v67={};v68={};v69={v66,v67,nil,v68};v65=1;end if (v65==2) then for v107=932 -(857 + 74) ,v34() do local v108=0;local v109;while true do if (v108==0) then v109=v32();if (v31(v109,1,1)==0) then local v121=v31(v109,570 -(367 + 201) ,3);local v122=v31(v109,4,6);local v123={v33(),v33(),nil,nil};if (v121==0) then local v125=0;while true do if (v125==0) then v123[3]=v33();v123[4]=v33();break;end end elseif (v121==1) then v123[3]=v34();elseif (v121==2) then v123[3]=v34() -(2^16) ;elseif (v121==3) then local v136=0;while true do if (v136==0) then v123[3]=v34() -(2^16) ;v123[4]=v33();break;end end end if (v31(v122,1,1)==1) then v123[2]=v71[v123[2]];end if (v31(v122,2,2)==1) then v123[3]=v71[v123[3]];end if (v31(v122,930 -(214 + 713) ,3)==1) then v123[2 + 2 ]=v71[v123[4]];end v66[v107]=v123;end break;end end end for v110=1,v34() do v67[v110-1 ]=v39();end return v69;end end end local function v40(v72,v73,v74) local v75=v72[1];local v76=v72[2];local v77=v72[3];return function(...) local v78=v75;local v79=v76;local v80=v77;local v81=v38;local v82=1;local v83= -1;local v84={};local v85={...};local v86=v20("#",...) -1 ;local v87={};local v88={};for v98=0,v86 do if (v98>=v80) then v84[v98-v80 ]=v85[v98 + 1 ];else v88[v98]=v85[v98 + 1 ];end end local v89=(v86-v80) + 1 ;local v90;local v91;while true do local v99=0;while true do if (v99==1) then if (v91<=57) then if (v91<=28) then if (v91<=13) then if (v91<=6) then if (v91<=2) then if (v91<=0) then local v137=v90[2];local v138={v88[v137](v21(v88,v137 + 1 ,v83))};local v139=0;for v160=v137,v90[1 + 3 ] do local v161=0;while true do if (v161==0) then v139=v139 + 1 ;v88[v160]=v138[v139];break;end end end elseif (v91>1) then if (v88[v90[2]]<v88[v90[4]]) then v82=v82 + 1 ;else v82=v90[880 -(282 + 595) ];end else do return;end end elseif (v91<=4) then if (v91>3) then local v168=v79[v90[3]];local v169;local v170={};v169=v18({},{[v7("\26\238\83\84\183\32\201","\211\69\177\58\58")]=function(v336,v337) local v338=0;local v339;while true do if (v338==0) then v339=v170[v337];return v339[1][v339[2]];end end end,[v7("\136\218\119\240\254\194\185\225\124\237","\171\215\133\25\149\137")]=function(v340,v341,v342) local v343=0;local v344;while true do if (v343==0) then v344=v170[v341];v344[1][v344[2]]=v342;break;end end end});for v345=1,v90[4] do v82=v82 + 1 ;local v346=v78[v82];if (v346[1]==(1669 -(1523 + 114))) then v170[v345-1 ]={v88,v346[3]};else v170[v345-1 ]={v73,v346[3]};end v87[ #v87 + 1 ]=v170;end v88[v90[2]]=v40(v168,v169,v74);else v88[v90[2]]= #v88[v90[1068 -(68 + 997) ]];end elseif (v91==5) then local v173=0;local v174;local v175;while true do if (v173==0) then v174=v90[2];v175=v88[v174];v173=1;end if (1==v173) then for v455=v174 + 1 ,v83 do v15(v175,v88[v455]);end break;end end else local v176=v79[v90[3]];local v177;local v178={};v177=v18({},{[v7("\222\247\59\244\235\53\228","\34\129\168\82\154\143\80\156")]=function(v348,v349) local v350=0;local v351;while true do if (0==v350) then v351=v178[v349];return v351[1][v351[2]];end end end,[v7("\186\141\61\14\95\71\135\129\183\43","\233\229\210\83\107\40\46")]=function(v352,v353,v354) local v355=0;local v356;while true do if (v355==0) then v356=v178[v353];v356[1271 -(226 + 1044) ][v356[2]]=v354;break;end end end});for v357=1,v90[4] do local v358=0;local v359;while true do if (0==v358) then v82=v82 + 1 ;v359=v78[v82];v358=1;end if (v358==1) then if (v359[1]==32) then v178[v357-1 ]={v88,v359[3]};else v178[v357-(4 -3) ]={v73,v359[3]};end v87[ #v87 + 1 ]=v178;break;end end end v88[v90[2]]=v40(v176,v177,v74);end elseif (v91<=9) then if (v91<=7) then v88[v90[2]]=v90[3]~=0 ;elseif (v91>8) then v88[v90[2]]=v88[v90[3]] + v90[4] ;elseif v88[v90[2]] then v82=v82 + (118 -(32 + 85)) ;else v82=v90[3];end elseif (v91<=11) then if (v91==10) then local v181=v90[2];do return v21(v88,v181,v181 + v90[3 + 0 ] );end else local v182=0;local v183;local v184;local v185;while true do if (v182==0) then v183=v90[2];v184=v88[v183];v182=1;end if (v182==1) then v185=v88[v183 + 2 ];if (v185>0) then if (v184>v88[v183 + 1 ]) then v82=v90[3];else v88[v183 + 1 + 2 ]=v184;end elseif (v184<v88[v183 + (958 -(892 + 65)) ]) then v82=v90[3];else v88[v183 + 3 ]=v184;end break;end end end elseif (v91==12) then local v186=0;local v187;local v188;while true do if (v186==1) then v88[v187 + (2 -1) ]=v188;v88[v187]=v188[v90[4]];break;end if (v186==0) then v187=v90[2];v188=v88[v90[3]];v186=1;end end else local v189=0;local v190;local v191;while true do if (v189==1) then v88[v190 + 1 ]=v191;v88[v190]=v191[v90[4]];break;end if (v189==0) then v190=v90[2];v191=v88[v90[3]];v189=1;end end end elseif (v91<=(36 -16)) then if (v91<=16) then if (v91<=14) then local v141=v90[3 -1 ];local v142={};for v162=1, #v87 do local v163=0;local v164;while true do if (v163==0) then v164=v87[v162];for v419=0, #v164 do local v420=v164[v419];local v421=v420[1];local v422=v420[352 -(87 + 263) ];if ((v421==v88) and (v422>=v141)) then v142[v422]=v421[v422];v420[1]=v142;end end break;end end end elseif (v91>15) then v88[v90[2]]={};else v88[v90[2]]=v90[3] + v88[v90[4]] ;end elseif (v91<=18) then if (v91>17) then if (v90[2]==v88[v90[184 -(67 + 113) ]]) then v82=v82 + 1 + 0 ;else v82=v90[3];end else local v194=0;local v195;local v196;local v197;local v198;while true do if (v194==1) then v83=(v197 + v195) -(2 -1) ;v198=0 + 0 ;v194=2;end if (2==v194) then for v461=v195,v83 do v198=v198 + 1 ;v88[v461]=v196[v198];end break;end if (v194==0) then v195=v90[2];v196,v197=v81(v88[v195](v21(v88,v195 + 1 ,v83)));v194=1;end end end elseif (v91>19) then local v199=0;local v200;local v201;local v202;local v203;while true do if (v199==2) then for v464=v200,v83 do local v465=0;while true do if (v465==0) then v203=v203 + 1 ;v88[v464]=v201[v203];break;end end end break;end if (v199==1) then v83=(v202 + v200) -1 ;v203=0;v199=2;end if (v199==0) then v200=v90[2];v201,v202=v81(v88[v200](v88[v200 + 1 ]));v199=1;end end else v88[v90[2]][v88[v90[3]]]=v90[4];end elseif (v91<=24) then if (v91<=22) then if (v91>21) then if (v88[v90[2]]==v88[v90[4]]) then v82=v82 + 1 ;else v82=v90[3];end else v88[v90[2]]=v73[v90[3]];end elseif (v91==(91 -68)) then v88[v90[2]]=v90[3]~=(952 -(802 + 150)) ;else v88[v90[2]]=v90[3]~=(0 -0) ;v82=v82 + 1 ;end elseif (v91<=26) then if (v91>25) then if (v90[2]<v88[v90[4]]) then v82=v82 + 1 ;else v82=v90[3];end else local v210=0;local v211;while true do if (v210==0) then v211=v90[2];v88[v211]=v88[v211](v21(v88,v211 + (1 -0) ,v83));break;end end end elseif (v91>27) then if (v88[v90[2]]>v90[4]) then v82=v82 + 1 ;else v82=v90[3];end else do return v88[v90[2]];end end elseif (v91<=42) then if (v91<=35) then if (v91<=31) then if (v91<=29) then local v143=v90[2];local v144=v90[4];local v145=v143 + 2 ;local v146={v88[v143](v88[v143 + 1 ],v88[v145])};for v165=1 + 0 ,v144 do v88[v145 + v165 ]=v146[v165];end local v147=v146[1];if v147 then local v212=0;while true do if (v212==0) then v88[v145]=v147;v82=v90[3];break;end end else v82=v82 + 1 ;end elseif (v91>30) then v88[v90[999 -(915 + 82) ]]=v88[v90[3]]/v88[v90[4]] ;else local v214=0;local v215;while true do if (v214==0) then v215=v90[2];v88[v215]=v88[v215](v21(v88,v215 + 1 ,v90[3]));break;end end end elseif (v91<=33) then if (v91==32) then v88[v90[2]]=v88[v90[3]];else local v218=v90[5 -3 ];local v219,v220=v81(v88[v218](v21(v88,v218 + 1 ,v90[3])));v83=(v220 + v218) -1 ;local v221=0;for v360=v218,v83 do local v361=0;while true do if (v361==0) then v221=v221 + 1 ;v88[v360]=v219[v221];break;end end end end elseif (v91>34) then local v222=0;local v223;local v224;local v225;local v226;while true do if (v222==2) then for v468=v223,v225 do local v469=0;while true do if (v469==0) then v226=v226 + 1 ;v88[v468]=v224[v226];break;end end end break;end if (v222==1) then v225=v90[4];v226=0;v222=2;end if (v222==0) then v223=v90[2];v224={v88[v223]()};v222=1;end end else v88[v90[2 + 0 ]]=v88[v90[3]] -v88[v90[4]] ;end elseif (v91<=38) then if (v91<=(47 -11)) then v88[v90[2]]= not v88[v90[3]];elseif (v91>37) then local v228=0;local v229;local v230;local v231;while true do if (2==v228) then if (v230>0) then if (v231<=v88[v229 + 1 ]) then local v510=0;while true do if (v510==0) then v82=v90[3];v88[v229 + 3 ]=v231;break;end end end elseif (v231>=v88[v229 + 1 ]) then v82=v90[3];v88[v229 + (1190 -(1069 + 118)) ]=v231;end break;end if (v228==1) then v231=v88[v229] + v230 ;v88[v229]=v231;v228=2;end if (v228==0) then v229=v90[2];v230=v88[v229 + 2 ];v228=1;end end else local v232=0;local v233;while true do if (0==v232) then v233=v90[2];do return v21(v88,v233,v83);end break;end end end elseif (v91<=(90 -50)) then if (v91>39) then v88[v90[2]]={};else local v235=v90[2];v88[v235]=v88[v235](v88[v235 + (1 -0) ]);end elseif (v91>41) then for v362=v90[2],v90[1 + 2 ] do v88[v362]=nil;end else local v237=0;local v238;while true do if (v237==0) then v238=v90[2];v88[v238]=v88[v238](v21(v88,v238 + 1 ,v83));break;end end end elseif (v91<=49) then if (v91<=45) then if (v91<=43) then local v149=0;local v150;while true do if (0==v149) then v150=v90[3 -1 ];v88[v150](v21(v88,v150 + 1 ,v90[3]));break;end end elseif (v91==44) then local v239=0;local v240;local v241;local v242;local v243;while true do if (v239==2) then for v470=v240,v83 do v243=v243 + 1 ;v88[v470]=v241[v243];end break;end if (1==v239) then v83=(v242 + v240) -1 ;v243=0 + 0 ;v239=2;end if (0==v239) then v240=v90[2];v241,v242=v81(v88[v240](v21(v88,v240 + 1 ,v83)));v239=1;end end else local v244=v90[793 -(368 + 423) ];do return v88[v244](v21(v88,v244 + 1 ,v90[3]));end end elseif (v91<=47) then if (v91>46) then do return v88[v90[2]]();end else v88[v90[2]]=v88[v90[3]] -v88[v90[4]] ;end elseif (v91==48) then do return v88[v90[2]]();end elseif (v88[v90[2]]~=v88[v90[4]]) then v82=v82 + 1 ;else v82=v90[3];end elseif (v91<=53) then if (v91<=51) then if (v91>50) then local v246=0;local v247;while true do if (v246==0) then v247=v90[2];v88[v247]=v88[v247](v21(v88,v247 + (3 -2) ,v90[3]));break;end end else v88[v90[2]]=v74[v90[3]];end elseif (v91>(70 -(10 + 8))) then v88[v90[2]]=v90[3] + v88[v90[4]] ;elseif  not v88[v90[2]] then v82=v82 + 1 ;else v82=v90[3];end elseif (v91<=55) then if (v91>54) then v88[v90[2]]=v88[v90[3]]%v88[v90[4]] ;else v88[v90[2]]=v73[v90[3]];end elseif (v91==56) then local v254=0;local v255;local v256;local v257;while true do if (v254==1) then v257=0;for v473=v255,v90[4] do v257=v257 + 1 ;v88[v473]=v256[v257];end break;end if (0==v254) then v255=v90[2];v256={v88[v255](v21(v88,v255 + 1 ,v90[3]))};v254=1;end end elseif (v90[2]<v88[v90[15 -11 ]]) then v82=v82 + 1 ;else v82=v90[3];end elseif (v91<=86) then if (v91<=71) then if (v91<=64) then if (v91<=60) then if (v91<=58) then local v151=v90[444 -(416 + 26) ];v88[v151](v21(v88,v151 + 1 ,v83));elseif (v91>59) then local v258=v90[2];local v259=v88[v258];local v260=v88[v258 + 2 ];if (v260>0) then if (v259>v88[v258 + 1 ]) then v82=v90[3];else v88[v258 + 3 ]=v259;end elseif (v259<v88[v258 + 1 ]) then v82=v90[3];else v88[v258 + 3 ]=v259;end else v88[v90[2]][v88[v90[3]]]=v90[4];end elseif (v91<=62) then if (v91==61) then local v263=0;local v264;local v265;local v266;while true do if (v263==1) then v266=v88[v264] + v265 ;v88[v264]=v266;v263=2;end if (v263==0) then v264=v90[2];v265=v88[v264 + 2 ];v263=1;end if (v263==2) then if (v265>0) then if (v266<=v88[v264 + 1 ]) then local v513=0;while true do if (v513==0) then v82=v90[3];v88[v264 + 3 ]=v266;break;end end end elseif (v266>=v88[v264 + 1 ]) then v82=v90[3];v88[v264 + 3 ]=v266;end break;end end else v73[v90[3]]=v88[v90[2]];end elseif (v91>63) then if  not v88[v90[2]] then v82=v82 + 1 ;else v82=v90[9 -6 ];end else v88[v90[2]]();end elseif (v91<=67) then if (v91<=65) then v88[v90[2]]=v88[v90[3]] + v90[4] ;elseif (v91>(29 + 37)) then local v269=0;local v270;local v271;local v272;while true do if (v269==1) then v272=0;for v480=v270,v90[4] do v272=v272 + 1 ;v88[v480]=v271[v272];end break;end if (v269==0) then v270=v90[2];v271={v88[v270](v21(v88,v270 + 1 ,v90[441 -(145 + 293) ]))};v269=1;end end else v88[v90[2]]=v88[v90[3]]%v90[4] ;end elseif (v91<=69) then if (v91==(498 -(44 + 386))) then v88[v90[2]]=v74[v90[3]];else local v276=v90[1488 -(998 + 488) ];v88[v276](v88[v276 + 1 ]);end elseif (v91==70) then local v277=v90[1 + 1 ];do return v88[v277],v88[v277 + 1 ];end else v73[v90[3]]=v88[v90[2]];end elseif (v91<=78) then if (v91<=74) then if (v91<=72) then v88[v90[2]][v88[v90[3]]]=v88[v90[4]];elseif (v91>73) then v88[v90[2 + 0 ]][v88[v90[775 -(201 + 571) ]]]=v88[v90[4]];else local v282=0;local v283;local v284;local v285;while true do if (v282==1) then v285=0;for v483=v283,v90[1142 -(116 + 1022) ] do v285=v285 + 1 ;v88[v483]=v284[v285];end break;end if (v282==0) then v283=v90[2];v284={v88[v283](v21(v88,v283 + 1 ,v83))};v282=1;end end end elseif (v91<=76) then if (v91==75) then local v286=0;local v287;local v288;while true do if (v286==0) then v287=v90[2];v288=v88[v287];v286=1;end if (v286==1) then for v486=v287 + 1 ,v83 do v15(v288,v88[v486]);end break;end end else v88[v90[2]]=v88[v90[3]][v90[4]];end elseif (v91==77) then v88[v90[2]]=v88[v90[12 -9 ]][v90[4]];else v82=v90[3];end elseif (v91<=82) then if (v91<=(47 + 33)) then if (v91>79) then v88[v90[2]]= not v88[v90[3]];else v88[v90[7 -5 ]]=v88[v90[3]]/v88[v90[4]] ;end elseif (v91>81) then local v296=v90[2];local v297,v298=v81(v88[v296](v21(v88,v296 + 1 ,v90[3])));v83=(v298 + v296) -1 ;local v299=0;for v365=v296,v83 do local v366=0;while true do if (v366==0) then v299=v299 + 1 ;v88[v365]=v297[v299];break;end end end else v88[v90[2]][v90[10 -7 ]]=v90[4];end elseif (v91<=84) then if (v91>83) then if (v88[v90[861 -(814 + 45) ]]~=v88[v90[4]]) then v82=v82 + 1 ;else v82=v90[3];end else v88[v90[4 -2 ]]=v88[v90[3]]%v90[1 + 3 ] ;end elseif (v91>85) then v82=v90[3];else local v304=0;local v305;while true do if (v304==0) then v305=v90[2];v88[v305](v21(v88,v305 + 1 ,v90[3]));break;end end end elseif (v91<=100) then if (v91<=93) then if (v91<=89) then if (v91<=87) then v88[v90[2]]=v90[3];elseif (v91>(32 + 56)) then v88[v90[2]]= #v88[v90[3]];elseif (v88[v90[2]]>v90[4]) then v82=v82 + 1 ;else v82=v90[3];end elseif (v91<=91) then if (v91>90) then v88[v90[2]]=v88[v90[3]]%v88[v90[4]] ;else for v367=v90[2],v90[3] do v88[v367]=nil;end end elseif (v91>92) then if (v88[v90[2]]==v88[v90[4]]) then v82=v82 + 1 ;else v82=v90[3];end elseif v88[v90[2]] then v82=v82 + (886 -(261 + 624)) ;else v82=v90[3];end elseif (v91<=96) then if (v91<=(166 -72)) then local v157=v90[2];do return v21(v88,v157,v83);end elseif (v91>95) then v88[v90[2]][v90[1083 -(1020 + 60) ]]=v90[4];else local v310=v90[2];do return v88[v310](v21(v88,v310 + 1 ,v90[3]));end end elseif (v91<=98) then if (v91==97) then local v311=v90[2];v88[v311](v21(v88,v311 + (1424 -(630 + 793)) ,v83));else v88[v90[2]]();end elseif (v91==99) then if (v88[v90[6 -4 ]]==v90[4]) then v82=v82 + 1 ;else v82=v90[3];end else v88[v90[2]][v90[3]]=v88[v90[4]];end elseif (v91<=107) then if (v91<=103) then if (v91<=101) then local v158=0;local v159;while true do if (v158==0) then v159=v90[2];v88[v159]=v88[v159](v88[v159 + 1 ]);break;end end elseif (v91>102) then v88[v90[2]]=v90[3];else local v316=v90[2];do return v88[v316],v88[v316 + 1 ];end end elseif (v91<=105) then if (v91==104) then local v317=v90[9 -7 ];v88[v317](v88[v317 + 1 ]);else do return v88[v90[2]];end end elseif (v91==106) then local v318=v90[2];local v319=v90[4];local v320=v318 + 2 ;local v321={v88[v318](v88[v318 + 1 ],v88[v320])};for v371=1 + 0 ,v319 do v88[v320 + v371 ]=v321[v371];end local v322=v321[3 -2 ];if v322 then local v398=0;while true do if (0==v398) then v88[v320]=v322;v82=v90[3];break;end end else v82=v82 + 1 ;end else local v323=v90[2];local v324,v325=v81(v88[v323](v88[v323 + 1 ]));v83=(v325 + v323) -(1748 -(760 + 987)) ;local v326=0;for v374=v323,v83 do v326=v326 + 1 ;v88[v374]=v324[v326];end end elseif (v91<=111) then if (v91<=109) then if (v91>108) then v88[v90[1915 -(1789 + 124) ]][v90[3]]=v88[v90[4]];elseif (v90[2]==v88[v90[4]]) then v82=v82 + 1 ;else v82=v90[3];end elseif (v91==110) then do return;end else v88[v90[2]]=v88[v90[3]];end elseif (v91<=113) then if (v91==112) then if (v88[v90[768 -(745 + 21) ]]<v88[v90[4]]) then v82=v82 + 1 ;else v82=v90[3];end else local v331=v90[2];local v332={};for v377=1, #v87 do local v378=0;local v379;while true do if (v378==0) then v379=v87[v377];for v495=0, #v379 do local v496=0;local v497;local v498;local v499;while true do if (v496==0) then v497=v379[v495];v498=v497[1];v496=1;end if (1==v496) then v499=v497[2];if ((v498==v88) and (v499>=v331)) then local v523=0;while true do if (v523==0) then v332[v499]=v498[v499];v497[1]=v332;break;end end end break;end end end break;end end end end elseif (v91==114) then local v333=0;while true do if (v333==0) then v88[v90[2]]=v90[3]~=0 ;v82=v82 + 1 ;break;end end elseif (v88[v90[2]]==v90[4]) then v82=v82 + 1 ;else v82=v90[3];end v82=v82 + 1 ;break;end if (0==v99) then v90=v78[v82];v91=v90[1];v99=1;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012443Q00013Q00204C5Q0002001244000100013Q00204C000100010003001244000200013Q00204C000200020004001244000300053Q0006400003000A0001000100044E3Q000A0001001244000300063Q00204C000400030007001244000500083Q00204C000500050009001244000600083Q00204C00060006000A002Q0600073Q000100062Q00203Q00064Q00208Q00203Q00044Q00203Q00014Q00203Q00024Q00203Q00053Q001244000800013Q00204C00080008000B0012440009000C3Q001244000A000D3Q002Q06000B0001000100052Q00203Q00074Q00203Q00094Q00203Q00084Q00203Q000A4Q00203Q000B4Q006F000C000B4Q0030000C00014Q005E000C6Q00013Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q001000025Q001267000300014Q000300045Q001267000500013Q00043C0003002100012Q001500076Q006F000800024Q0015000900014Q0015000A00024Q0015000B00034Q0015000C00044Q006F000D6Q006F000E00063Q002009000F000600012Q0052000C000F4Q0019000B3Q00022Q0015000C00034Q0015000D00044Q006F000E00014Q0003000F00014Q005B000F0006000F00100F000F0001000F2Q0003001000014Q005B00100006001000100F0010000100100020090010001000012Q0052000D00104Q0011000C6Q0019000A3Q0002002042000A000A00022Q00140009000A4Q006100073Q000100043D0003000500012Q0015000300054Q006F000400024Q005F000300044Q005E00036Q00013Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q002Q065Q000100012Q00368Q0015000100014Q0015000200024Q0015000300024Q001000046Q0015000500034Q006F00066Q002A000700074Q0052000500074Q004B00043Q000100204C000400040001001267000500024Q0033000300050002001267000400034Q0052000200044Q001900013Q0002002663000100180001000400044E3Q001800012Q006F00016Q001000026Q005F000100024Q005E00015Q00044E3Q001B00012Q0015000100044Q0030000100014Q005E00016Q00013Q00013Q00013Q002E3Q0003023Q005F4703073Q0061696D6C6F636B00010003043Q0067616D65030A3Q005374617274657247756903073Q00536574436F726503103Q00618D27C502D146812FC82FDF468126CF03063Q00BE32E849A14C03053Q008FD056511B03053Q007EDBB9223D030E3Q002DC7537E7174F8A720C15F767B7303083Q00876CAE3E121E179303043Q0082EC32DF03083Q00A7D6894AAB78CE5303133Q00F09F8EAD2Q20486578706C6F697420F09F8EAD03083Q00AFE5205CECAE84FE03063Q00C7EB90523D98026Q00144003103Q003413B72F2919AD22011FBA2A131FB62503043Q004B6776D903053Q00F35D6418BC03063Q007EA7341074D903103Q00E9272D8CBB1AF7881B2E8CBB18F8CD2A03073Q009CA84E40E0D47903043Q0033EBBDDA03043Q00AE678EC503083Q00723D4D393157F75803073Q009836483F58453E030A3Q004765745365727669636503073Q00E4C8EF45D1D6FD03043Q003CB4A48E030A3Q006A4B0B1A22FF04515D0003073Q0072383E6549478D03103Q008DFADED691E7CBD1ACDADED6AEE0D8C103043Q00A4D889BB03093Q00776F726B7370616365030D3Q0043752Q72656E7443616D65726103093Q00E5E923B9B5EE0AD1E303073Q006BB28651D2C69E030B3Q004C6F63616C506C61796572030A3Q00496E707574426567616E03073Q00436F2Q6E656374030D3Q0052656E6465725374652Q706564028Q00026Q00F03F01AF3Q0006083Q00AD00013Q00044E3Q00AD0001001244000100013Q00204C000100010002002663000100080001000300044E3Q00080001001244000100013Q003051000100020004001244000100013Q001244000200013Q00204C0002000200022Q0024000200023Q00106D000100020002001244000100013Q00204C0001000100020006080001002E00013Q00044E3Q002E0001001244000100053Q00204C00010001000600200C0001000100072Q001500035Q001267000400083Q001267000500094Q00330003000500022Q001000043Q00032Q001500055Q0012670006000A3Q0012670007000B4Q00330005000700022Q001500065Q0012670007000C3Q0012670008000D4Q00330006000800022Q004A0004000500062Q001500055Q0012670006000E3Q0012670007000F4Q00330005000700020020130004000500102Q001500055Q001267000600113Q001267000700124Q00330005000700020020130004000500132Q002B00010004000100044E3Q004A0001001244000100053Q00204C00010001000600200C0001000100072Q001500035Q001267000400143Q001267000500154Q00330003000500022Q001000043Q00032Q001500055Q001267000600163Q001267000700174Q00330005000700022Q001500065Q001267000700183Q001267000800194Q00330006000800022Q004A0004000500062Q001500055Q0012670006001A3Q0012670007001B4Q00330005000700020020130004000500102Q001500055Q0012670006001C3Q0012670007001D4Q00330005000700020020130004000500132Q002B000100040001001244000100053Q00200C00010001001E2Q001500035Q0012670004001F3Q001267000500204Q0052000300054Q001900013Q0002001244000200053Q00200C00020002001E2Q001500045Q001267000500213Q001267000600224Q0052000400064Q001900023Q0002001244000300053Q00200C00030003001E2Q001500055Q001267000600233Q001267000700244Q0052000500074Q001900033Q0002001244000400253Q00204C000400040026001244000500053Q00200C00050005001E2Q001500075Q001267000800273Q001267000900284Q0052000700094Q001900053Q000200204C0006000100292Q001700076Q002A0008000A3Q002Q06000B3Q000100012Q00367Q002Q06000C0001000100012Q00367Q002Q06000D0002000100072Q00203Q00034Q00203Q00014Q00203Q00064Q00368Q00203Q00044Q00203Q00054Q00203Q000C3Q002Q06000E0003000100022Q00203Q000A4Q00367Q002Q06000F0004000100012Q00203Q000A3Q002Q0600100005000100062Q00203Q00084Q00203Q00094Q00203Q000D4Q00203Q000E4Q00203Q00034Q00203Q00043Q002Q0600110006000100042Q00203Q00034Q00203Q00084Q00203Q00094Q00203Q000F3Q00204C00120003002A00200C00120012002B002Q0600140007000100032Q00203Q00074Q00203Q00104Q00203Q00114Q002B00120014000100204C00120002002C00200C00120012002B002Q0600140008000100062Q00203Q00074Q00203Q00084Q00203Q000B4Q00203Q00094Q00203Q00114Q00203Q00044Q002B001200140001001244001200013Q00204C001200120002000640001200AB0001000100044E3Q00AB00010012670012002D4Q002A001300133Q0026630012009F0001002D00044E3Q009F00010012670013002D3Q002663001300A20001002D00044E3Q00A200012Q001700076Q006F001400114Q006200140001000100044E3Q00AB000100044E3Q00A2000100044E3Q00AB000100044E3Q009F00012Q007100015Q00044E3Q00AE000100204C00013Q002E2Q00013Q00013Q00093Q00093Q00028Q00026Q00F03F03093Q00436861726163746572030E3Q0046696E6446697273744368696C6403083Q00101B8FC7A437078603053Q00CA586EE2A603063Q004865616C746803093Q004D61784865616C7468027B14AE47E17A843F01333Q001267000100014Q002A000200033Q0026630001002C0001000200044E3Q002C0001001267000400013Q002663000400050001000100044E3Q000500010026630002000B0001000200044E3Q000B00012Q001700056Q001B000500023Q002663000200040001000100044E3Q0004000100204C00033Q00030006080003002700013Q00044E3Q00270001001267000500014Q002A000600063Q002663000500120001000100044E3Q0012000100200C0007000300042Q001500095Q001267000A00053Q001267000B00064Q00520009000B4Q001900073Q00022Q006F000600073Q0006080006002700013Q00044E3Q0027000100204C00070006000700204C0008000600082Q004F000700070008002658000700230001000900044E3Q002300012Q007200076Q0017000700014Q001B000700023Q00044E3Q0027000100044E3Q00120001001267000200023Q00044E3Q0004000100044E3Q0005000100044E3Q0004000100044E3Q00320001002663000100020001000100044E3Q00020001001267000200014Q002A000300033Q001267000100023Q00044E3Q000200012Q00013Q00017Q00093Q00028Q00026Q00F03F03093Q00436861726163746572030E3Q0046696E6446697273744368696C6403083Q00EB1A8FF6C4CC068603053Q00AAA36FE29703063Q004865616C746803093Q004D61784865616C7468026Q33C33F01363Q001267000100014Q002A000200033Q0026630001002F0001000200044E3Q002F0001002663000200290001000100044E3Q00290001001267000400013Q0026630004000B0001000200044E3Q000B0001001267000200023Q00044E3Q00290001002663000400070001000100044E3Q0007000100204C00033Q00030006080003002700013Q00044E3Q00270001001267000500014Q002A000600063Q002663000500120001000100044E3Q0012000100200C0007000300042Q001500095Q001267000A00053Q001267000B00064Q00520009000B4Q001900073Q00022Q006F000600073Q0006080006002700013Q00044E3Q0027000100204C00070006000700204C0008000600082Q004F000700070008002658000700230001000900044E3Q002300012Q007200076Q0017000700014Q001B000700023Q00044E3Q0027000100044E3Q00120001001267000400023Q00044E3Q00070001002663000200040001000200044E3Q000400012Q001700046Q001B000400023Q00044E3Q0004000100044E3Q00350001002663000100020001000100044E3Q00020001001267000200014Q002A000300033Q001267000100023Q00044E3Q000200012Q00013Q00017Q001F3Q0003043Q006D61746803043Q006875676503073Q00566563746F72322Q033Q006E657703103Q004765744D6F7573654C6F636174696F6E03013Q005803013Q005903053Q007061697273030A3Q00476574506C617965727303093Q00436861726163746572030E3Q0046696E6446697273744368696C6403043Q003935B33C03073Q00497150D2582E57028Q00026Q00F03F03083Q00A939C013E98E25C903053Q0087E14CAD7203063Q004865616C746803123Q00576F726C64546F5363722Q656E506F696E7403093Q004D61676E6974756465027Q0040026Q000840030D3Q0046696E64506172744F6E526179026Q00594003063Q00506172656E7403043Q004865616403083Q00506F736974696F6E03063Q00434672616D652Q033Q0052617903043Q0032E8B9B403073Q00C77A8DD8D0CCDD00A93Q001244000100013Q00204C000100010002001244000200033Q00204C0002000200042Q001500035Q00200C0003000300052Q002700030002000200204C0003000300062Q001500045Q00200C0004000400052Q002700040002000200204C0004000400072Q0033000200040002001244000300084Q0015000400013Q00200C0004000400092Q0014000400054Q004900033Q000500044E3Q009200012Q0015000800023Q000654000700920001000800044E3Q0092000100204C00080007000A0006080008009200013Q00044E3Q0092000100204C00080007000A00200C00080008000B2Q0015000A00033Q001267000B000C3Q001267000C000D4Q0052000A000C4Q001900083Q00020006080008009200013Q00044E3Q009200010012670008000E4Q002A0009000B3Q0026630008008C0001000F00044E3Q008C00012Q002A000B000B3Q000E6C000E00320001000900044E3Q0032000100204C000A0007000A00200C000C000A000B2Q0015000E00033Q001267000F00103Q001267001000114Q0052000E00104Q0019000C3Q00022Q006F000B000C3Q0012670009000F3Q002663000900270001000F00044E3Q00270001000608000B009200013Q00044E3Q0092000100204C000C000B0012000E1A000E00920001000C00044E3Q00920001001267000C000E4Q002A000D00143Q002663000C004A0001000F00044E3Q004A00012Q0015001500043Q00200C0015001500132Q006F0017000E4Q00330015001700022Q006F000F00153Q001244001500033Q00204C00150015000400204C0016000F000600204C0017000F00072Q00330015001700022Q002E00150002001500204C001000150014001267000C00153Q000E6C001600700001000C00044E3Q007000012Q0015001500053Q00200C0015001500172Q006F001700124Q0015001800023Q00204C00180018000A2Q00380015001800162Q006F001400164Q006F001300153Q0026580011005B0001001800044E3Q005B00010006080013005B00013Q00044E3Q005B000100204C001500130019000616001500920001000A00044E3Q009200012Q0015001500064Q006F001600074Q0027001500020002000640001500920001000100044E3Q00920001000670001000920001000100044E3Q009200010012670015000E4Q002A001600163Q002663001500640001000E00044E3Q006400010012670016000E3Q002663001600670001000E00044E3Q006700012Q006F000100104Q006F3Q00073Q00044E3Q0092000100044E3Q0067000100044E3Q0092000100044E3Q0064000100044E3Q00920001002663000C00750001000E00044E3Q0075000100204C000D000A001A00204C000E000D001B001267000C000F3Q002663000C003B0001001500044E3Q003B00012Q0015001500043Q00204C00150015001C00204C00150015001B2Q002E00150015000E00204C0011001500140012440015001D3Q00204C0015001500042Q0015001600043Q00204C00160016001C00204C00160016001B2Q0015001700043Q00204C00170017001C00204C00170017001B2Q002E0017000E00172Q00330015001700022Q006F001200153Q001267000C00163Q00044E3Q003B000100044E3Q0092000100044E3Q0027000100044E3Q00920001000E6C000E00240001000800044E3Q002400010012670009000E4Q002A000A000A3Q0012670008000F3Q00044E3Q0024000100066A000300130001000200044E3Q001300010006083Q00A600013Q00044E3Q00A6000100204C00033Q000A000608000300A600013Q00044E3Q00A6000100204C00033Q000A00200C00030003000B2Q0015000500033Q0012670006001E3Q0012670007001F4Q0052000500074Q001900033Q0002000608000300A600013Q00044E3Q00A6000100204C00033Q000A00204C00030003001A2Q006F00046Q0066000300034Q002A000300044Q0066000300034Q00013Q00017Q00103Q0003093Q00436861726163746572028Q00026Q00F03F027Q004003063Q00506172656E7403093Q0046692Q6C436F6C6F7203063Q00436F6C6F723303073Q0066726F6D524742025Q00E06F4003073Q0044657374726F7903083Q00496E7374616E63652Q033Q006E657703093Q0085D417F874FFAAD50403063Q0096CDBD70901803103Q0046692Q6C5472616E73706172656E6379026Q00E03F013A3Q0006083Q003900013Q00044E3Q0039000100204C00013Q00010006080001003900013Q00044E3Q00390001001267000100024Q002A000200023Q000E6C000200070001000100044E3Q00070001001267000200023Q002663000200200001000300044E3Q00200001001267000300023Q002663000300110001000300044E3Q00110001001267000200043Q00044E3Q002000010026630003000D0001000200044E3Q000D00012Q001500045Q00204C00053Q000100106D0004000500052Q001500045Q001244000500073Q00204C000500050008001267000600093Q001267000700023Q001267000800024Q003300050008000200106D000400060005001267000300033Q00044E3Q000D0001000E6C000200310001000200044E3Q003100012Q001500035Q0006080003002800013Q00044E3Q002800012Q001500035Q00200C00030003000A2Q00680003000200010012440003000B3Q00204C00030003000C2Q0015000400013Q0012670005000D3Q0012670006000E4Q0052000400064Q001900033Q00022Q004700035Q001267000200033Q0026630002000A0001000400044E3Q000A00012Q001500035Q0030510003000F001000044E3Q0039000100044E3Q000A000100044E3Q0039000100044E3Q000700012Q00013Q00017Q00023Q00028Q0003073Q0044657374726F79000E4Q00157Q0006083Q000D00013Q00044E3Q000D00010012673Q00013Q0026633Q00040001000100044E3Q000400012Q001500015Q00200C0001000100022Q00680001000200012Q002A000100014Q004700015Q00044E3Q000D000100044E3Q000400012Q00013Q00017Q00073Q00028Q00026Q00F03F03103Q004D6F75736549636F6E456E61626C6564010003063Q00434672616D652Q033Q006E657703083Q00506F736974696F6E00323Q0012673Q00014Q002A000100013Q0026633Q00020001000100044E3Q00020001001267000100013Q002663000100050001000100044E3Q000500012Q0015000200024Q00230002000100032Q0047000300014Q004700026Q001500025Q0006080002003100013Q00044E3Q00310001001267000200013Q0026630002001F0001000100044E3Q001F0001001267000300013Q002663000300160001000200044E3Q00160001001267000200023Q00044E3Q001F0001002663000300120001000100044E3Q001200012Q0015000400034Q0015000500014Q00680004000200012Q0015000400043Q003051000400030004001267000300023Q00044E3Q001200010026630002000F0001000200044E3Q000F00012Q0015000300053Q001244000400053Q00204C0004000400062Q0015000500053Q00204C00050005000500204C0005000500072Q001500065Q00204C0006000600072Q003300040006000200106D00030005000400044E3Q0031000100044E3Q000F000100044E3Q0031000100044E3Q0005000100044E3Q0031000100044E3Q000200012Q00013Q00017Q00043Q00028Q0003103Q004D6F75736549636F6E456E61626C65642Q01026Q00F03F00173Q0012673Q00014Q002A000100013Q0026633Q00020001000100044E3Q00020001001267000100013Q0026630001000C0001000100044E3Q000C00012Q001500025Q0030510002000200032Q002A000200024Q0047000200013Q001267000100043Q002663000100050001000400044E3Q000500012Q002A000200024Q0047000200024Q0015000200034Q006200020001000100044E3Q0016000100044E3Q0005000100044E3Q0016000100044E3Q000200012Q00013Q00017Q00083Q00028Q00030D3Q0055736572496E7075745479706503043Q00456E756D03083Q004B6579626F61726403073Q004B6579436F646503013Q004303023Q005F4703073Q0061696D6C6F636B02353Q001267000200014Q002A000300033Q002663000200020001000100044E3Q00020001001267000300013Q002663000300050001000100044E3Q000500010006080001000A00013Q00044E3Q000A00012Q00013Q00013Q00204C00043Q0002001244000500033Q00204C00050005000200204C000500050004000616000400340001000500044E3Q0034000100204C00043Q0005001244000500033Q00204C00050005000500204C000500050006000616000400340001000500044E3Q00340001001244000400073Q00204C0004000400080006080004003400013Q00044E3Q00340001001267000400014Q002A000500053Q0026630004001C0001000100044E3Q001C0001001267000500013Q0026630005001F0001000100044E3Q001F00012Q001500066Q0024000600064Q004700066Q001500065Q0006080006002A00013Q00044E3Q002A00012Q0015000600014Q006200060001000100044E3Q003400012Q0015000600024Q006200060001000100044E3Q0034000100044E3Q001F000100044E3Q0034000100044E3Q001C000100044E3Q0034000100044E3Q0005000100044E3Q0034000100044E3Q000200012Q00013Q00017Q00053Q0003023Q005F4703073Q0061696D6C6F636B03063Q00434672616D652Q033Q006E657703083Q00506F736974696F6E001D4Q00157Q0006083Q001C00013Q00044E3Q001C00010012443Q00013Q00204C5Q00020006083Q001C00013Q00044E3Q001C00012Q00153Q00013Q0006083Q001C00013Q00044E3Q001C00012Q00153Q00024Q0015000100034Q00273Q000200020006083Q001200013Q00044E3Q001200012Q00153Q00044Q00623Q0001000100044E3Q001C00012Q00153Q00053Q001244000100033Q00204C0001000100042Q0015000200053Q00204C00020002000300204C0002000200052Q0015000300013Q00204C0003000300052Q003300010003000200106D3Q000300012Q00013Q00017Q00",v17(),...);
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--
