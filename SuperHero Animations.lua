local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=2 -1 ;local v30;v27=v12(v11(v27,5),v7("\126\226","\236\80\204\201\221"),function(v42) if (v9(v42,2)==81) then local v101=0;while true do if (v101==0) then v30=v8(v11(v42,1,1));return "";end end else local v102=0;local v103;while true do if (v102==0) then v103=v10(v8(v42,16));if v30 then local v121=0;local v122;while true do if (v121==1) then return v122;end if (v121==0) then v122=v13(v103,v30);v30=nil;v121=1;end end else return v103;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v104=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v104-(v104%1) ;else local v105=2^(v44-(2 -1)) ;return (((v43%(v105 + v105))>=v105) and 1) or 0 ;end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33() local v47=0;local v48;local v49;while true do if (v47==0) then v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + (3 -1) ;v47=1;end if (v47==1) then return (v49 * 256) + v48 ;end end end local function v34() local v50,v51,v52,v53=v9(v27,v29,v29 + (7 -4) );v29=v29 + 4 ;return (v53 * 16777216) + (v52 * 65536) + (v51 * 256) + v50 ;end local function v35() local v54=0;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (v54==2) then v59=v31(v56,21,31);v60=((v31(v56,32)==1) and  -1) or 1 ;v54=3;end if (0==v54) then v55=v34();v56=v34();v54=1;end if (v54==3) then if (v59==0) then if (v58==(927 -(214 + 713))) then return v60 * 0 ;else v59=1;v57=0;end elseif (v59==2047) then return ((v58==0) and (v60 * (1/0))) or (v60 * NaN) ;end return v16(v60,v59-(257 + 766) ) * (v57 + (v58/(2^52))) ;end if (v54==1) then v57=620 -(555 + 64) ;v58=(v31(v56,932 -(857 + 74) ,588 -(367 + 201) ) * (2^32)) + v55 ;v54=2;end end end local function v36(v61) local v62=0;local v63;local v64;while true do if (v62==0) then v63=nil;if  not v61 then local v116=0;while true do if (0==v116) then v61=v34();if (v61==0) then return "";end break;end end end v62=1;end if (v62==1) then v63=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;v62=2;end if (v62==2) then v64={};for v109=1, #v63 do v64[v109]=v10(v9(v11(v63,v109,v109)));end v62=3;end if (v62==3) then return v14(v64);end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v65={};local v66={};local v67={};local v68={v65,v66,nil,v67};local v69=v34();local v70={};for v78=1,v69 do local v79=0;local v80;local v81;while true do if (v79==0) then v80=v32();v81=nil;v79=1;end if (v79==1) then if (v80==1) then v81=v32()~=0 ;elseif (v80==2) then v81=v35();elseif (v80==(880 -(282 + 595))) then v81=v36();end v70[v78]=v81;break;end end end v68[1640 -(1523 + 114) ]=v32();for v82=1,v34() do local v83=0;local v84;while true do if (0==v83) then v84=v32();if (v31(v84,1,1)==0) then local v117=0;local v118;local v119;local v120;while true do if (v117==1) then v120={v33(),v33(),nil,nil};if (v118==0) then local v124=0;while true do if (v124==0) then v120[3]=v33();v120[4]=v33();break;end end elseif (v118==1) then v120[3]=v34();elseif (v118==2) then v120[3]=v34() -(2^16) ;elseif (v118==(1068 -(68 + 997))) then v120[3]=v34() -(2^16) ;v120[4]=v33();end v117=2;end if (v117==2) then if (v31(v119,1,1)==1) then v120[1272 -(226 + 1044) ]=v70[v120[2]];end if (v31(v119,2,2)==1) then v120[3]=v70[v120[3]];end v117=3;end if (0==v117) then v118=v31(v84,2,3);v119=v31(v84,4 + 0 ,6);v117=1;end if (v117==3) then if (v31(v119,3,12 -9 )==1) then v120[4]=v70[v120[4]];end v65[v82]=v120;break;end end end break;end end end for v85=1,v34() do v66[v85-1 ]=v39();end return v68;end local function v40(v72,v73,v74) local v75=v72[118 -(32 + 85) ];local v76=v72[2];local v77=v72[3];return function(...) local v87=v75;local v88=v76;local v89=v77;local v90=v38;local v91=1;local v92= -1;local v93={};local v94={...};local v95=v20("#",...) -1 ;local v96={};local v97={};for v106=0,v95 do if (v106>=v89) then v93[v106-v89 ]=v94[v106 + 1 ];else v97[v106]=v94[v106 + 1 ];end end local v98=(v95-v89) + 1 ;local v99;local v100;while true do v99=v87[v91];v100=v99[1];if (v100<=40) then if (v100<=19) then if (v100<=9) then if (v100<=4) then if (v100<=1) then if (v100>(0 + 0)) then v97[v99[2]]= #v97[v99[3]];else v97[v99[2]]=v97[v99[3]];end elseif (v100<=2) then v97[v99[1 + 1 ]]=v74[v99[3]];elseif (v100==3) then local v229=0;local v230;local v231;while true do if (v229==0) then v230=v99[2];v231=v97[v99[960 -(892 + 65) ]];v229=1;end if (v229==1) then v97[v230 + 1 ]=v231;v97[v230]=v231[v99[4]];break;end end else for v297=v99[2],v99[3] do v97[v297]=nil;end end elseif (v100<=6) then if (v100>5) then v97[v99[2]]=v97[v99[3]];else v97[v99[4 -2 ]]=v97[v99[3]]%v97[v99[4]] ;end elseif (v100<=7) then v97[v99[2]]=v99[3] + v97[v99[4]] ;elseif (v100>8) then v97[v99[2]]={};else v97[v99[3 -1 ]]= not v97[v99[3]];end elseif (v100<=14) then if (v100<=11) then if (v100>10) then local v143=v99[2];do return v21(v97,v143,v92);end else v97[v99[2]]=v99[3];end elseif (v100<=12) then local v146=v99[2];v97[v146]=v97[v146](v21(v97,v146 + 1 ,v99[3]));elseif (v100==13) then do return v97[v99[2]]();end else v97[v99[2]]=v97[v99[3]]%v99[4] ;end elseif (v100<=16) then if (v100==15) then local v148=v99[2];local v149=v97[v148];local v150=v97[v148 + 2 ];if (v150>0) then if (v149>v97[v148 + 1 ]) then v91=v99[3];else v97[v148 + 3 ]=v149;end elseif (v149<v97[v148 + 1 ]) then v91=v99[3];else v97[v148 + 3 ]=v149;end else v97[v99[2]]= #v97[v99[3]];end elseif (v100<=(31 -14)) then local v152=0;local v153;while true do if (v152==0) then v153=v99[352 -(87 + 263) ];v97[v153](v97[v153 + 1 ]);break;end end elseif (v100==18) then for v300=v99[2],v99[3] do v97[v300]=nil;end else v97[v99[2]][v97[v99[3]]]=v99[184 -(67 + 113) ];end elseif (v100<=29) then if (v100<=24) then if (v100<=21) then if (v100>20) then v97[v99[2]]=v97[v99[3]]%v97[v99[4]] ;else local v155=0;local v156;while true do if (0==v155) then v156=v99[2];do return v97[v156](v21(v97,v156 + 1 ,v99[3]));end break;end end end elseif (v100<=22) then local v157=0;local v158;while true do if (v157==0) then v158=v99[2];v97[v158]=v97[v158](v21(v97,v158 + 1 ,v92));break;end end elseif (v100==(17 + 6)) then local v237=v99[4 -2 ];local v238=v97[v99[3 + 0 ]];v97[v237 + 1 ]=v238;v97[v237]=v238[v99[4]];else local v242=0;local v243;while true do if (v242==0) then v243=v99[2];v97[v243]=v97[v243](v97[v243 + 1 ]);break;end end end elseif (v100<=26) then if (v100>25) then v91=v99[3];elseif (v97[v99[2]]==v99[4]) then v91=v91 + 1 ;else v91=v99[3];end elseif (v100<=27) then v97[v99[2]]=v99[3];elseif (v100>(111 -83)) then local v245=v99[2];v97[v245](v21(v97,v245 + 1 ,v99[3]));elseif v97[v99[2]] then v91=v91 + 1 ;else v91=v99[955 -(802 + 150) ];end elseif (v100<=(91 -57)) then if (v100<=(55 -24)) then if (v100>30) then local v162=0;local v163;while true do if (v162==0) then v163=v99[2];v97[v163](v21(v97,v163 + 1 ,v92));break;end end elseif (v99[2]==v97[v99[4]]) then v91=v91 + 1 ;else v91=v99[3];end elseif (v100<=32) then do return;end elseif (v100>33) then local v247=0;local v248;while true do if (v247==0) then v248=v99[2];v97[v248]=v97[v248](v21(v97,v248 + 1 ,v92));break;end end else v97[v99[2]]=v73[v99[3]];end elseif (v100<=37) then if (v100<=35) then v97[v99[2]][v99[3]]=v97[v99[4]];elseif (v100>36) then do return;end elseif v97[v99[2 + 0 ]] then v91=v91 + 1 ;else v91=v99[3];end elseif (v100<=38) then if (v99[2]==v97[v99[4]]) then v91=v91 + 1 ;else v91=v99[3];end elseif (v100>39) then v97[v99[2]][v97[v99[3]]]=v97[v99[4]];else local v254=0;local v255;local v256;while true do if (v254==0) then v255=v99[2];v256=v97[v255];v254=1;end if (1==v254) then for v366=v255 + 1 ,v92 do v15(v256,v97[v366]);end break;end end end elseif (v100<=60) then if (v100<=50) then if (v100<=45) then if (v100<=42) then if (v100==41) then if (v97[v99[999 -(915 + 82) ]]==v99[4]) then v91=v91 + 1 ;else v91=v99[3];end else local v166=v99[2];local v167,v168=v90(v97[v166](v21(v97,v166 + 1 ,v92)));v92=(v168 + v166) -1 ;local v169=0;for v220=v166,v92 do v169=v169 + 1 ;v97[v220]=v167[v169];end end elseif (v100<=43) then local v170=0;local v171;local v172;local v173;local v174;while true do if (v170==0) then v171=v99[2];v172,v173=v90(v97[v171](v21(v97,v171 + 1 ,v99[3])));v170=1;end if (v170==1) then v92=(v173 + v171) -1 ;v174=0;v170=2;end if (2==v170) then for v325=v171,v92 do local v326=0;while true do if (v326==0) then v174=v174 + 1 ;v97[v325]=v172[v174];break;end end end break;end end elseif (v100==44) then local v258=0;local v259;while true do if (v258==0) then v259=v99[2];do return v21(v97,v259,v92);end break;end end else local v260=0;local v261;local v262;local v263;while true do if (0==v260) then v261=v88[v99[3]];v262=nil;v260=1;end if (v260==1) then v263={};v262=v18({},{[v7("\77\126\126\139\250\142\106","\235\18\33\23\229\158")]=function(v367,v368) local v369=0;local v370;while true do if (v369==0) then v370=v263[v368];return v370[1][v370[2]];end end end,[v7("\111\133\207\190\71\179\207\191\85\162","\219\48\218\161")]=function(v371,v372,v373) local v374=0;local v375;while true do if (v374==0) then v375=v263[v372];v375[1][v375[2]]=v373;break;end end end});v260=2;end if (v260==2) then for v376=1,v99[4] do local v377=0;local v378;while true do if (v377==0) then v91=v91 + 1 ;v378=v87[v91];v377=1;end if (v377==1) then if (v378[1]==(0 -0)) then v263[v376-(1 + 0) ]={v97,v378[1190 -(1069 + 118) ]};else v263[v376-1 ]={v73,v378[3]};end v96[ #v96 + 1 ]=v263;break;end end end v97[v99[2]]=v40(v261,v262,v74);break;end end end elseif (v100<=47) then if (v100==46) then v97[v99[2]]=v97[v99[3]] + v99[4] ;else local v176=0;local v177;local v178;local v179;local v180;while true do if (v176==0) then v177=v99[2];v178,v179=v90(v97[v177](v21(v97,v177 + 1 ,v99[3])));v176=1;end if (v176==2) then for v327=v177,v92 do v180=v180 + (2 -1) ;v97[v327]=v178[v180];end break;end if (v176==1) then v92=(v179 + v177) -1 ;v180=0;v176=2;end end end elseif (v100<=48) then local v181=0;local v182;while true do if (v181==0) then v182=v99[3 -1 ];v97[v182]=v97[v182](v97[v182 + 1 + 0 ]);break;end end elseif (v100>49) then do return v97[v99[2]]();end else local v264=0;local v265;while true do if (v264==0) then v265=v99[2];v97[v265]=v97[v265](v21(v97,v265 + 1 ,v99[3]));break;end end end elseif (v100<=55) then if (v100<=52) then if (v100>51) then local v183=0;local v184;local v185;local v186;local v187;while true do if (v183==2) then for v330=v184,v92 do local v331=0;while true do if (v331==0) then v187=v187 + 1 ;v97[v330]=v185[v187];break;end end end break;end if (v183==0) then v184=v99[2];v185,v186=v90(v97[v184](v21(v97,v184 + 1 ,v92)));v183=1;end if (v183==1) then v92=(v186 + v184) -1 ;v187=0;v183=2;end end else v97[v99[2]]=v97[v99[3]]%v99[4] ;end elseif (v100<=53) then v97[v99[2]]();elseif (v100==(95 -41)) then local v266=0;local v267;local v268;local v269;local v270;while true do if (v266==2) then for v379=v267,v92 do local v380=0;while true do if (0==v380) then v270=v270 + 1 ;v97[v379]=v268[v270];break;end end end break;end if (v266==0) then v267=v99[2];v268,v269=v90(v97[v267](v97[v267 + 1 ]));v266=1;end if (v266==1) then v92=(v269 + v267) -1 ;v270=0 + 0 ;v266=2;end end else v97[v99[793 -(368 + 423) ]]= not v97[v99[3]];end elseif (v100<=57) then if (v100>56) then local v189=v99[6 -4 ];local v190=v97[v189];local v191=v97[v189 + 2 ];if (v191>0) then if (v190>v97[v189 + (19 -(10 + 8)) ]) then v91=v99[3];else v97[v189 + 3 ]=v190;end elseif (v190<v97[v189 + 1 ]) then v91=v99[3];else v97[v189 + 3 ]=v190;end else v97[v99[7 -5 ]][v97[v99[3]]]=v99[4];end elseif (v100<=58) then local v194=v99[2];local v195={};for v223=1, #v96 do local v224=v96[v223];for v272=0, #v224 do local v273=0;local v274;local v275;local v276;while true do if (v273==0) then v274=v224[v272];v275=v274[1];v273=1;end if (v273==1) then v276=v274[2];if ((v275==v97) and (v276>=v194)) then local v399=0;while true do if (v399==0) then v195[v276]=v275[v276];v274[1]=v195;break;end end end break;end end end end elseif (v100>59) then if  not v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end else v97[v99[2]]();end elseif (v100<=70) then if (v100<=65) then if (v100<=62) then if (v100==61) then v97[v99[444 -(416 + 26) ]]=v74[v99[3]];else local v198=v99[2];v97[v198](v21(v97,v198 + 1 ,v99[3]));end elseif (v100<=63) then v97[v99[6 -4 ]]=v97[v99[3]][v99[4]];elseif (v100==64) then if  not v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end else v97[v99[2]]=v99[3] + v97[v99[4]] ;end elseif (v100<=67) then if (v100==(29 + 37)) then v97[v99[2]]=v73[v99[3]];else local v203=v99[2];local v204=v97[v203];for v225=v203 + 1 ,v92 do v15(v204,v97[v225]);end end elseif (v100<=(119 -51)) then local v205=v99[2];local v206={};for v226=1, #v96 do local v227=0;local v228;while true do if (v227==0) then v228=v96[v226];for v359=0, #v228 do local v360=v228[v359];local v361=v360[1];local v362=v360[2];if ((v361==v97) and (v362>=v205)) then local v400=0;while true do if (v400==0) then v206[v362]=v361[v362];v360[1]=v206;break;end end end end break;end end end elseif (v100==69) then local v278=v99[2];v97[v278](v97[v278 + 1 ]);else v97[v99[2]][v97[v99[3]]]=v97[v99[4]];end elseif (v100<=75) then if (v100<=72) then if (v100>71) then v97[v99[2]]={};else v91=v99[3];end elseif (v100<=73) then local v209=0;local v210;local v211;local v212;while true do if (v209==2) then if (v211>0) then if (v212<=v97[v210 + 1 ]) then v91=v99[3];v97[v210 + 3 ]=v212;end elseif (v212>=v97[v210 + 1 ]) then v91=v99[3];v97[v210 + 3 ]=v212;end break;end if (v209==0) then v210=v99[2];v211=v97[v210 + 2 ];v209=1;end if (v209==1) then v212=v97[v210] + v211 ;v97[v210]=v212;v209=2;end end elseif (v100>74) then local v281=v99[2];local v282,v283=v90(v97[v281](v97[v281 + 1 ]));v92=(v283 + v281) -1 ;local v284=0;for v314=v281,v92 do local v315=0;while true do if (v315==0) then v284=v284 + 1 ;v97[v314]=v282[v284];break;end end end else local v285=0;local v286;while true do if (v285==0) then v286=v99[2];v97[v286](v21(v97,v286 + 1 ,v92));break;end end end elseif (v100<=78) then if (v100<=76) then local v213=0;local v214;local v215;local v216;while true do if (v213==1) then v216=v97[v214] + v215 ;v97[v214]=v216;v213=2;end if (2==v213) then if (v215>0) then if (v216<=v97[v214 + 1 ]) then local v405=0;while true do if (v405==0) then v91=v99[3];v97[v214 + 3 ]=v216;break;end end end elseif (v216>=v97[v214 + (439 -(145 + 293)) ]) then local v406=0;while true do if (v406==0) then v91=v99[3];v97[v214 + 3 ]=v216;break;end end end break;end if (v213==0) then v214=v99[2];v215=v97[v214 + 2 ];v213=1;end end elseif (v100==77) then local v287=v99[2];do return v97[v287](v21(v97,v287 + 1 ,v99[3]));end else v97[v99[432 -(44 + 386) ]]=v97[v99[3]][v99[1490 -(998 + 488) ]];end elseif (v100<=(26 + 53)) then v97[v99[2]][v99[3]]=v97[v99[4 + 0 ]];elseif (v100==80) then v97[v99[2]]=v97[v99[3]] + v99[4] ;else local v291=0;local v292;local v293;local v294;while true do if (v291==2) then for v383=1,v99[1142 -(116 + 1022) ] do v91=v91 + 1 ;local v384=v87[v91];if (v384[1]==0) then v294[v383-1 ]={v97,v384[3]};else v294[v383-1 ]={v73,v384[3]};end v96[ #v96 + 1 ]=v294;end v97[v99[2]]=v40(v292,v293,v74);break;end if (v291==1) then v294={};v293=v18({},{[v7("\219\78\117\71\223\74\248","\128\132\17\28\41\187\47")]=function(v386,v387) local v388=0;local v389;while true do if (v388==0) then v389=v294[v387];return v389[1][v389[2]];end end end,[v7("\62\13\8\63\74\8\60\2\63\69","\61\97\82\102\90")]=function(v390,v391,v392) local v393=v294[v391];v393[1][v393[2]]=v392;end});v291=2;end if (0==v291) then v292=v88[v99[775 -(201 + 571) ]];v293=nil;v291=1;end end end v91=v91 + 1 ;end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q00123D3Q00013Q00204E5Q000200123D000100013Q00204E00010001000300123D000200013Q00204E00020002000400123D000300053Q0006400003000A0001000100041A3Q000A000100123D000300063Q00204E00040003000700123D000500083Q00204E00050005000900123D000600083Q00204E00060006000A00065100073Q000100066Q00069Q008Q00048Q00018Q00028Q00053Q00123D000800013Q00204E00080008000B00123D0009000C3Q00123D000A000D3Q000651000B0001000100056Q00078Q00098Q00088Q000A8Q000B4Q0006000C000B4Q000D000C00014Q002C000C6Q00203Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q004800025Q00121B000300014Q001000045Q00121B000500013Q00040F0003002100012Q002100076Q0006000800024Q0021000900014Q0021000A00024Q0021000B00034Q0021000C00044Q0006000D6Q0006000E00063Q002050000F000600012Q002F000C000F4Q0016000B3Q00022Q0021000C00034Q0021000D00044Q0006000E00014Q0010000F00014Q0015000F0006000F001041000F0001000F2Q0010001000014Q00150010000600100010410010000100100020500010001000012Q002F000D00104Q002A000C6Q0016000A3Q000200200E000A000A00022Q00360009000A4Q004A00073Q000100044C0003000500012Q0021000300054Q0006000400024Q0014000300044Q002C00036Q00203Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006515Q000100012Q00428Q0021000100014Q0021000200024Q0021000300024Q004800046Q0021000500034Q000600066Q0004000700074Q002F000500074Q002700043Q000100204E00040004000100121B000500024Q000C00030005000200121B000400034Q002F000200044Q001600013Q0002002619000100180001000400041A3Q001800012Q000600016Q004800026Q0014000100024Q002C00015Q00041A3Q001B00012Q0021000100044Q000D000100014Q002C00016Q00203Q00013Q00013Q00093Q0003023Q005F4703133Q00616E696D53757065724865726F41637469766503043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C6179657203093Q00436861726163746572030E3Q00436861726163746572412Q64656403043Q0057616974026Q00F03F01223Q0006243Q002000013Q00041A3Q0020000100123D000100013Q00123D000200013Q00204E0002000200022Q0037000200023Q00102300010002000200123D000100033Q00204E00010001000400204E00010001000500204E000200010006000640000200100001000100041A3Q0010000100204E0002000100070020030002000200082Q001800020002000200065100033Q000100012Q00427Q00065100040001000100012Q00427Q00065100050002000100012Q00427Q00065100060003000100056Q00024Q00429Q003Q00048Q00038Q00054Q0006000700064Q00350007000100012Q003A00015Q00041A3Q0021000100204E00013Q00092Q00203Q00013Q00043Q000C3Q0003043Q0067616D65030A3Q005374617274657247756903073Q00536574436F726503103Q002071F42C3D7BEE21157DF929077DF52603043Q004873149A03053Q002DB6C5D38803073Q005479DFB1BFED4C03043Q008F53D1B403083Q00A1DB36A9C05A305003083Q006D5712245D4B0F2B03043Q0045292260026Q00144002193Q00123D000200013Q00204E0002000200020020030002000200032Q002100045Q00121B000500043Q00121B000600054Q000C0004000600022Q004800053Q00032Q002100065Q00121B000700063Q00121B000800074Q000C0006000800022Q0028000500064Q002100065Q00121B000700083Q00121B000800094Q000C0006000800022Q00280005000600012Q002100065Q00121B0007000A3Q00121B0008000B4Q000C00060008000200201300050006000C2Q003E0002000500012Q00203Q00017Q00203Q00028Q00027Q004003043Q006A756D7003083Q004A756D70416E696D030B3Q00416E696D6174696F6E496403293Q00B4D7C31A5864F3D4C01D4C39B3C1DB051A65BFCCDA450338AFC6C3455D22B89E815B547AED9682595103063Q004BDCA3B76A6203053Q00636C696D6203093Q00436C696D62416E696D03293Q000AAE9F27834DF59C20CE4CA88435D50DA2C534D60FF58A24CA07AEC468D006E7DD668F53EADF60895403053Q00B962DAEB57026Q00F03F026Q00084003043Q0077616C6B03083Q0057616C6B416E696D03293Q00C32833F684E5842B30F190B8C43E2BE9C6E4C8332AA9DFB9D83933A981A3CF6171B788FB996E75BE8903063Q00CAAB5C4786BE2Q033Q0072756E03073Q0052756E416E696D03293Q0021D53898738E639F3ED6629A26C32087318F2F87248E2D9B3AC438C776C828D57F907AD978967CDF7F03043Q00E849A14C03043Q0066612Q6C03083Q0046612Q6C416E696D03293Q00B3CD564D44F496554A09F5CB4D5F12B4C10C5E11B696434E0DBECD0D0217BF84140C48EA891A0D4EEA03053Q007EDBB9223D03043Q0069646C65030A3Q00416E696D6174696F6E3103293Q0004DA4A622438BCF01BD910607175FFE814805D7D7338F2F41FCB4A3D217EF7BA5A9F08232F26A1BE5903083Q00876CAE3E121E1793030A3Q00416E696D6174696F6E3203293Q00BEFD3EDB42E17CD0A1FE64D917AC3FC8AEA729C415E132D4A5EC3E8447A7379AE0B87C9A49FD6694E003083Q00A7D6894AAB78CE5301503Q00121B000100013Q0026190001001A0001000200041A3Q001A000100121B000200013Q002619000200150001000100041A3Q0015000100204E00033Q000300204E0003000300042Q002100045Q00121B000500063Q00121B000600074Q000C00040006000200102300030005000400204E00033Q000800204E0003000300092Q002100045Q00121B0005000A3Q00121B0006000B4Q000C00040006000200102300030005000400121B0002000C3Q002619000200040001000C00041A3Q0004000100121B0002000D3Q00041A3Q001A000100041A3Q00040001002619000100330001000C00041A3Q0033000100121B000200013Q000E26000C00210001000200041A3Q0021000100121B000100023Q00041A3Q003300010026190002001D0001000100041A3Q001D000100204E00033Q000E00204E00030003000F2Q002100045Q00121B000500103Q00121B000600114Q000C00040006000200102300030005000400204E00033Q001200204E0003000300132Q002100045Q00121B000500143Q00121B000600154Q000C00040006000200102300030005000400121B0002000C3Q00041A3Q001D00010026190001003D0001000D00041A3Q003D000100204E00023Q001600204E0002000200172Q002100035Q00121B000400183Q00121B000500194Q000C00030005000200102300020005000300041A3Q004F0001002619000100010001000100041A3Q0001000100204E00023Q001A00204E00020002001B2Q002100035Q00121B0004001C3Q00121B0005001D4Q000C00030005000200102300020005000300204E00023Q001A00204E00020002001E2Q002100035Q00121B0004001F3Q00121B000500204Q000C00030005000200102300020005000300121B0001000C3Q00041A3Q000100012Q00203Q00017Q00203Q00028Q00026Q00F03F03043Q0069646C65030A3Q00416E696D6174696F6E31030B3Q00416E696D6174696F6E4964032A3Q0083E4264DA2E8C4E7254AB6B584F23E52E0E988FF3F12F9B498F52612A7AE8FAD6008A9F7DAA96404ADF603063Q00C7EB90523D98030A3Q00416E696D6174696F6E32032A3Q000F02AD3B5D59F63C1001F7390814B5241F58BA240A59B8381413AD64581FBD765543E87B564FEE79524103043Q004B6776D9026Q00084003053Q00636C696D6203093Q00436C696D62416E696D032A3Q00CF406404E35188436703F70CC8567C1BA150C45B7D5BB80DD451645BE617C3092241E84E960D2243EE4603063Q007EA7341074D9027Q004003043Q0077616C6B03083Q0057616C6B416E696D032A3Q00C03A3490EE56B3DF3937CEA616FEC42138CEB716F1872F3393B10DB3972724DDE64CAD987C70D2E14EAB03073Q009CA84E40E0D4792Q033Q0072756E03073Q0052756E416E696D032A3Q000FFAB1DE5DA1EAD910F9EBDC08ECA9C11FA0A6C10AA1A4DD14EBB18158E7A19355BBF49E56B7FD9A50BB03043Q00AE678EC503043Q006A756D7003083Q004A756D70416E696D032A3Q005E3C4B287F11B7413F48763751FA5A2747762651F519294C2B204AB709215B65770BA90679066F7D0DA803073Q009836483F58453E03043Q0066612Q6C03083Q0046612Q6C416E696D032A3Q00DCD0FA4C8E8BA14BC3D3A04EDBC6E253CC8AED53D98BEF4FC7C1FA138BCDEA018691BF0C859DBB048D9603043Q003CB4A48E01583Q00121B000100013Q0026190001001A0001000100041A3Q001A000100121B000200013Q002619000200080001000200041A3Q0008000100121B000100023Q00041A3Q001A0001002619000200040001000100041A3Q0004000100204E00033Q000300204E0003000300042Q002100045Q00121B000500063Q00121B000600074Q000C00040006000200102300030005000400204E00033Q000300204E0003000300082Q002100045Q00121B000500093Q00121B0006000A4Q000C00040006000200102300030005000400121B000200023Q00041A3Q00040001002619000100240001000B00041A3Q0024000100204E00023Q000C00204E00020002000D2Q002100035Q00121B0004000E3Q00121B0005000F4Q000C00030005000200102300020005000300041A3Q005700010026190001003D0001000200041A3Q003D000100121B000200013Q0026190002002B0001000200041A3Q002B000100121B000100103Q00041A3Q003D0001002619000200270001000100041A3Q0027000100204E00033Q001100204E0003000300122Q002100045Q00121B000500133Q00121B000600144Q000C00040006000200102300030005000400204E00033Q001500204E0003000300162Q002100045Q00121B000500173Q00121B000600184Q000C00040006000200102300030005000400121B000200023Q00041A3Q00270001002619000100010001001000041A3Q0001000100121B000200013Q002619000200510001000100041A3Q0051000100204E00033Q001900204E00030003001A2Q002100045Q00121B0005001B3Q00121B0006001C4Q000C00040006000200102300030005000400204E00033Q001D00204E00030003001E2Q002100045Q00121B0005001F3Q00121B000600204Q000C00040006000200102300030005000400121B000200023Q002619000200400001000200041A3Q0040000100121B0001000B3Q00041A3Q0001000100041A3Q0040000100041A3Q000100012Q00203Q00017Q00123Q00030C3Q0057616974466F724368696C6403073Q0079500C2426F91703073Q0072383E6549478D03023Q005F4703133Q00616E696D53757065724865726F41637469766503053Q007072696E7403203Q0099F9CBC8A1E0D5C3F8DACED4BDFBF3C1AAE69BC5B6E0D6C5ACE0D4CAABA7958A03043Q00A4D889BB031B3Q00E1F321B7B4D60EC0E97193A8F706D3F238BDA8ED4BFEE930B6A3FA03073Q006BB28651D2C69E03123Q00F09F8EAD20486578706C6F697420F09F8EAD028Q0003223Q000A0B91C3BE2C078CC1EA39008BCBAB2C078DC8B9781A8D86AE3D0883D3A62C40CC8803053Q00CA586EE2A6026Q00F03F03173Q00F10A91F2DE832E8CFEC7C21B8BF8C4D04FB6F88AF15ED703053Q00AAA36FE29703133Q00F09F8EAD2Q20486578706C6F697420F09F8EAD00434Q00217Q0020035Q00012Q0021000200013Q00121B000300023Q00121B000400034Q002F000200044Q00165Q000200123D000100043Q00204E0001000100050006240001001C00013Q00041A3Q001C000100123D000100064Q0021000200013Q00121B000300073Q00121B000400084Q002F000200044Q004A00013Q00012Q0021000100024Q000600026Q00450001000200012Q0021000100034Q0021000200013Q00121B000300093Q00121B0004000A4Q000C00020004000200121B0003000B4Q003E00010003000100041A3Q0042000100121B0001000C4Q0004000200023Q000E26000C001E0001000100041A3Q001E000100121B0002000C3Q000E26000C00350001000200041A3Q0035000100121B0003000C3Q002619000300300001000C00041A3Q0030000100123D000400064Q0021000500013Q00121B0006000D3Q00121B0007000E4Q002F000500074Q004A00043Q00012Q0021000400044Q000600056Q004500040002000100121B0003000F3Q002619000300240001000F00041A3Q0024000100121B0002000F3Q00041A3Q0035000100041A3Q00240001002619000200210001000F00041A3Q002100012Q0021000300034Q0021000400013Q00121B000500103Q00121B000600114Q000C00040006000200121B000500124Q003E00030005000100041A3Q0042000100041A3Q0021000100041A3Q0042000100041A3Q001E00012Q00203Q00017Q00",v17(),...);
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
