local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,15 -10 ),v7("\138\16","\167\164\62\87\59"),function(v42) if (v9(v42,2)==81) then v30=v8(v11(v42,1,1));return "";else local v92=v10(v8(v42,16));if v30 then local v99=v13(v92,v30);v30=nil;return v99;else return v92;end end end);local function v31(v43,v44,v45) if v45 then local v93=(v43/(2^(v44-(2 -1))))%(2^(((v45-(1 -0)) -(v44-(2 -1))) + 1)) ;return v93-(v93%1) ;else local v94=2^(v44-(620 -(555 + 64))) ;return (((v43%(v94 + v94))>=v94) and 1) or 0 ;end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + (932 -(857 + 74)) ;return v46;end local function v33() local v47=0;local v48;local v49;while true do if (v47==0) then v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v47=1;end if (1==v47) then return (v49 * 256) + v48 ;end end end local function v34() local v50=0;local v51;local v52;local v53;local v54;while true do if (v50==0) then v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;v50=1;end if (1==v50) then return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end end end local function v35() local v55=v34();local v56=v34();local v57=1;local v58=(v31(v56,1,20) * (2^32)) + v55 ;local v59=v31(v56,21,31);local v60=((v31(v56,600 -(367 + 201) )==1) and  -1) or 1 ;if (v59==0) then if (v58==0) then return v60 * 0 ;else v59=1;v57=0;end elseif (v59==2047) then return ((v58==(927 -(214 + 713))) and (v60 * (1/0))) or (v60 * NaN) ;end return v16(v60,v59-(257 + 766) ) * (v57 + (v58/(2^52))) ;end local function v36(v61) local v62=0;local v63;local v64;while true do if (v62==1) then v63=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;v62=2;end if (v62==0) then v63=nil;if  not v61 then local v115=0;while true do if (v115==0) then v61=v34();if (v61==0) then return "";end break;end end end v62=1;end if (v62==2) then v64={};for v100=1 + 0 , #v63 do v64[v100]=v10(v9(v11(v63,v100,v100)));end v62=3;end if (3==v62) then return v14(v64);end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v65=0;local v66;local v67;local v68;local v69;local v70;local v71;while true do if (v65==1) then v70=v34();v71={};for v102=1638 -(1523 + 114) ,v70 do local v103=0;local v104;local v105;while true do if (v103==1) then if (v104==1) then v105=v32()~=0 ;elseif (v104==2) then v105=v35();elseif (v104==3) then v105=v36();end v71[v102]=v105;break;end if (v103==0) then v104=v32();v105=nil;v103=1;end end end v69[3]=v32();v65=2;end if (2==v65) then for v106=1,v34() do local v107=0;local v108;while true do if (v107==0) then v108=v32();if (v31(v108,1 + 0 ,1)==0) then local v117=0;local v118;local v119;local v120;while true do if (v117==2) then if (v31(v119,1,1)==1) then v120[2]=v71[v120[2]];end if (v31(v119,2,2)==1) then v120[1273 -(226 + 1044) ]=v71[v120[3]];end v117=3;end if (v117==1) then v120={v33(),v33(),nil,nil};if (v118==0) then v120[3]=v33();v120[4]=v33();elseif (v118==1) then v120[3]=v34();elseif (v118==2) then v120[1068 -(68 + 997) ]=v34() -(2^16) ;elseif (v118==3) then local v416=0;while true do if (v416==0) then v120[3]=v34() -(2^16) ;v120[4]=v33();break;end end end v117=2;end if (v117==3) then if (v31(v119,3,3)==1) then v120[4]=v71[v120[4]];end v66[v106]=v120;break;end if (v117==0) then v118=v31(v108,2,3);v119=v31(v108,4,7 -1 );v117=1;end end end break;end end end for v109=1,v34() do v67[v109-1 ]=v39();end return v69;end if (v65==0) then v66={};v67={};v68={};v69={v66,v67,nil,v68};v65=1;end end end local function v40(v72,v73,v74) local v75=v72[1];local v76=v72[2];local v77=v72[3];return function(...) local v78=v75;local v79=v76;local v80=v77;local v81=v38;local v82=1;local v83= -1;local v84={};local v85={...};local v86=v20("#",...) -1 ;local v87={};local v88={};for v95=0,v86 do if (v95>=v80) then v84[v95-v80 ]=v85[v95 + 1 ];else v88[v95]=v85[v95 + (4 -3) ];end end local v89=(v86-v80) + (118 -(32 + 85)) ;local v90;local v91;while true do v90=v78[v82];v91=v90[1];if (v91<=44) then if (v91<=21) then if (v91<=10) then if (v91<=4) then if (v91<=(1 + 0)) then if (v91==(0 + 0)) then local v130=0;local v131;local v132;local v133;local v134;while true do if (v130==2) then for v371=v131,v83 do local v372=0;while true do if (v372==0) then v134=v134 + (2 -1) ;v88[v371]=v132[v134];break;end end end break;end if (v130==1) then v83=(v133 + v131) -1 ;v134=0;v130=2;end if (v130==0) then v131=v90[2];v132,v133=v81(v88[v131](v21(v88,v131 + (958 -(892 + 65)) ,v83)));v130=1;end end else local v135=v90[2];local v136,v137=v81(v88[v135](v21(v88,v135 + 1 ,v90[3])));v83=(v137 + v135) -1 ;local v138=0;for v193=v135,v83 do v138=v138 + 1 ;v88[v193]=v136[v138];end end elseif (v91<=2) then v88[v90[2]]= not v88[v90[3]];elseif (v91==3) then local v225=0;local v226;while true do if (v225==0) then v226=v90[2];v88[v226]=v88[v226](v21(v88,v226 + 1 ,v90[3]));break;end end else local v227=0;local v228;local v229;local v230;local v231;while true do if (v227==2) then for v417=v228,v83 do local v418=0;while true do if (0==v418) then v231=v231 + 1 ;v88[v417]=v229[v231];break;end end end break;end if (v227==0) then v228=v90[3 -1 ];v229,v230=v81(v88[v228](v21(v88,v228 + 1 ,v90[3])));v227=1;end if (v227==1) then v83=(v230 + v228) -1 ;v231=0;v227=2;end end end elseif (v91<=7) then if (v91<=5) then v88[v90[2]][v88[v90[3]]]=v90[4];elseif (v91==6) then v88[v90[3 -1 ]]= #v88[v90[3]];else local v233=v90[2];v88[v233]=v88[v233](v21(v88,v233 + 1 ,v83));end elseif (v91<=8) then local v142=v90[2];local v143={};for v196=1, #v87 do local v197=v87[v196];for v235=0, #v197 do local v236=0;local v237;local v238;local v239;while true do if (v236==1) then v239=v237[352 -(87 + 263) ];if ((v238==v88) and (v239>=v142)) then v143[v239]=v238[v239];v237[181 -(67 + 113) ]=v143;end break;end if (v236==0) then v237=v197[v235];v238=v237[1];v236=1;end end end end elseif (v91>9) then local v240=v90[2];local v241,v242=v81(v88[v240](v88[v240 + 1 ]));v83=(v242 + v240) -1 ;local v243=0;for v340=v240,v83 do local v341=0;while true do if (v341==0) then v243=v243 + 1 ;v88[v340]=v241[v243];break;end end end else v88[v90[2]][v90[3]]=v90[3 + 1 ];end elseif (v91<=(36 -21)) then if (v91<=12) then if (v91==11) then v88[v90[2 + 0 ]]();else local v144=v90[2];local v145=v88[v144];local v146=v90[3];for v198=1,v146 do v145[v198]=v88[v144 + v198 ];end end elseif (v91<=13) then v88[v90[7 -5 ]]=v90[3] + v88[v90[956 -(802 + 150) ]] ;elseif (v91==14) then local v246=0;local v247;local v248;local v249;while true do if (v246==1) then v249=v88[v247 + 2 ];if (v249>0) then if (v248>v88[v247 + 1 ]) then v82=v90[3];else v88[v247 + 3 ]=v248;end elseif (v248<v88[v247 + (2 -1) ]) then v82=v90[5 -2 ];else v88[v247 + 3 ]=v248;end break;end if (v246==0) then v247=v90[2];v248=v88[v247];v246=1;end end else local v250=0;local v251;local v252;local v253;while true do if (0==v250) then v251=v90[2];v252=v88[v251 + 2 ];v250=1;end if (1==v250) then v253=v88[v251] + v252 ;v88[v251]=v253;v250=2;end if (v250==2) then if (v252>(0 + 0)) then if (v253<=v88[v251 + (998 -(915 + 82)) ]) then local v453=0;while true do if (v453==0) then v82=v90[3];v88[v251 + 3 ]=v253;break;end end end elseif (v253>=v88[v251 + 1 ]) then local v454=0;while true do if (v454==0) then v82=v90[3];v88[v251 + 3 ]=v253;break;end end end break;end end end elseif (v91<=18) then if (v91<=16) then if v88[v90[5 -3 ]] then v82=v82 + 1 ;else v82=v90[3];end elseif (v91==17) then local v255=v90[2 + 0 ];local v256=v88[v255];local v257=v90[3 -0 ];for v342=1188 -(1069 + 118) ,v257 do v256[v342]=v88[v255 + v342 ];end else local v258=0;local v259;while true do if (v258==0) then v259=v90[2];do return v88[v259](v21(v88,v259 + 1 ,v90[3]));end break;end end end elseif (v91<=19) then if (v88[v90[2]]==v88[v90[4]]) then v82=v82 + 1 ;else v82=v90[3];end elseif (v91==20) then v88[v90[2]]=v88[v90[3]] + v90[4] ;else local v262=0;local v263;while true do if (0==v262) then v263=v90[2];v88[v263](v21(v88,v263 + 1 ,v90[6 -3 ]));break;end end end elseif (v91<=32) then if (v91<=(56 -30)) then if (v91<=23) then if (v91==22) then v88[v90[2]][v88[v90[3]]]=v88[v90[1 + 3 ]];else v88[v90[2]]= not v88[v90[3]];end elseif (v91<=24) then do return;end elseif (v91==25) then v88[v90[3 -1 ]]=v88[v90[3]] + v90[4] ;else local v265=v90[2];v88[v265](v21(v88,v265 + 1 ,v83));end elseif (v91<=29) then if (v91<=27) then local v151=0;local v152;while true do if (v151==0) then v152=v90[2];v88[v152](v21(v88,v152 + 1 ,v90[3]));break;end end elseif (v91==28) then local v266=v90[2 + 0 ];local v267=v88[v266 + 2 ];local v268=v88[v266] + v267 ;v88[v266]=v268;if (v267>0) then if (v268<=v88[v266 + (792 -(368 + 423)) ]) then local v421=0;while true do if (v421==0) then v82=v90[3];v88[v266 + 3 ]=v268;break;end end end elseif (v268>=v88[v266 + 1 ]) then v82=v90[3];v88[v266 + 3 ]=v268;end else v82=v90[3];end elseif (v91<=(94 -64)) then local v153=0;local v154;local v155;while true do if (v153==0) then v154=v90[20 -(10 + 8) ];v155=v88[v90[3]];v153=1;end if (v153==1) then v88[v154 + 1 ]=v155;v88[v154]=v155[v90[4]];break;end end elseif (v91>31) then local v271=v90[3];local v272=v88[v271];for v351=v271 + 1 ,v90[15 -11 ] do v272=v272   .. v88[v351] ;end v88[v90[2]]=v272;else v88[v90[2]][v90[3]]=v90[4];end elseif (v91<=38) then if (v91<=(477 -(416 + 26))) then if (v91<=33) then local v156=0;local v157;local v158;while true do if (0==v156) then v157=v90[2];v158={};v156=1;end if (v156==1) then for v373=1, #v87 do local v374=v87[v373];for v401=0, #v374 do local v402=0;local v403;local v404;local v405;while true do if (v402==1) then v405=v403[2];if ((v404==v88) and (v405>=v157)) then local v457=0;while true do if (v457==0) then v158[v405]=v404[v405];v403[1]=v158;break;end end end break;end if (v402==0) then v403=v374[v401];v404=v403[3 -2 ];v402=1;end end end end break;end end elseif (v91>34) then local v276=0;local v277;local v278;while true do if (1==v276) then for v424=v277 + 1 ,v83 do v15(v278,v88[v424]);end break;end if (v276==0) then v277=v90[2];v278=v88[v277];v276=1;end end else v88[v90[2]]=v90[3];end elseif (v91<=36) then local v159=v79[v90[3]];local v160;local v161={};v160=v18({},{[v7("\191\105\73\199\227\7\49","\73\224\54\32\169\135\98")]=function(v201,v202) local v203=v161[v202];return v203[1][v203[2]];end,[v7("\247\244\121\33\67\244\195\204\206\111","\173\168\171\23\68\52\157")]=function(v204,v205,v206) local v207=0;local v208;while true do if (v207==0) then v208=v161[v205];v208[1 + 0 ][v208[2]]=v206;break;end end end});for v209=1 -0 ,v90[442 -(145 + 293) ] do local v210=0;local v211;while true do if (v210==1) then if (v211[1]==50) then v161[v209-1 ]={v88,v211[3]};else v161[v209-1 ]={v73,v211[3]};end v87[ #v87 + 1 ]=v161;break;end if (v210==0) then v82=v82 + 1 ;v211=v78[v82];v210=1;end end end v88[v90[2]]=v40(v159,v160,v74);elseif (v91==37) then for v353=v90[2],v90[3] do v88[v353]=nil;end else local v281=0;local v282;while true do if (v281==0) then v282=v90[2];do return v21(v88,v282,v83);end break;end end end elseif (v91<=41) then if (v91<=39) then local v163=0;local v164;local v165;while true do if (v163==1) then for v379=v164 + 1 ,v83 do v15(v165,v88[v379]);end break;end if (v163==0) then v164=v90[2];v165=v88[v164];v163=1;end end elseif (v91>40) then v88[v90[2]]();else v88[v90[1488 -(998 + 488) ]]=v88[v90[3]];end elseif (v91<=42) then local v166=0;local v167;local v168;while true do if (v166==1) then for v380=v167 + 1 ,v90[3] do v15(v168,v88[v380]);end break;end if (0==v166) then v167=v90[2];v168=v88[v167];v166=1;end end elseif (v91>43) then local v285=v90[2];v88[v285]=v88[v285](v21(v88,v285 + 1 ,v83));else local v287=v90[2];v88[v287](v21(v88,v287 + 1 ,v83));end elseif (v91<=67) then if (v91<=55) then if (v91<=49) then if (v91<=46) then if (v91>45) then v88[v90[2]]=v90[3];else local v171=0;local v172;local v173;while true do if (v171==0) then v172=v90[2];v173=v88[v90[1 + 2 ]];v171=1;end if (v171==1) then v88[v172 + 1 ]=v173;v88[v172]=v173[v90[4]];break;end end end elseif (v91<=47) then v82=v90[3];elseif (v91>48) then if (v90[2]==v88[v90[4]]) then v82=v82 + 1 ;else v82=v90[3];end elseif (v88[v90[2 + 0 ]]==v90[4]) then v82=v82 + 1 ;else v82=v90[3];end elseif (v91<=52) then if (v91<=50) then v88[v90[774 -(201 + 571) ]]=v88[v90[3]];elseif (v91>51) then v88[v90[2]]= #v88[v90[1141 -(116 + 1022) ]];else v88[v90[8 -6 ]]=v73[v90[3]];end elseif (v91<=53) then local v177=v79[v90[3]];local v178;local v179={};v178=v18({},{[v7("\184\203\120\251\219\130\236","\191\231\148\17\149")]=function(v212,v213) local v214=0;local v215;while true do if (v214==0) then v215=v179[v213];return v215[1][v215[2]];end end end,[v7("\18\215\241\133\176\206\245\33\40\240","\69\77\136\159\224\199\167\155")]=function(v216,v217,v218) local v219=0;local v220;while true do if (v219==0) then v220=v179[v217];v220[1][v220[2 + 0 ]]=v218;break;end end end});for v221=1,v90[14 -10 ] do v82=v82 + 1 ;local v222=v78[v82];if (v222[1]==50) then v179[v221-1 ]={v88,v222[3]};else v179[v221-1 ]={v73,v222[3]};end v87[ #v87 + 1 ]=v179;end v88[v90[2]]=v40(v177,v178,v74);elseif (v91==54) then local v291=v90[2];local v292=v88[v291];local v293=v88[v291 + (7 -5) ];if (v293>0) then if (v292>v88[v291 + 1 ]) then v82=v90[3];else v88[v291 + 3 ]=v292;end elseif (v292<v88[v291 + 1 ]) then v82=v90[3];else v88[v291 + 3 ]=v292;end elseif  not v88[v90[2]] then v82=v82 + 1 ;else v82=v90[3];end elseif (v91<=(920 -(814 + 45))) then if (v91<=58) then if (v91<=56) then v88[v90[2]]=v88[v90[3]][v90[9 -5 ]];elseif (v91>(4 + 53)) then v88[v90[2]][v90[3]]=v88[v90[4]];else v88[v90[1 + 1 ]][v90[3]]=v88[v90[4]];end elseif (v91<=59) then v88[v90[2]][v88[v90[3]]]=v90[4];elseif (v91==60) then local v298=v90[888 -(261 + 624) ];local v299=v88[v298];for v366=v298 + 1 ,v90[4] do v299=v299   .. v88[v366] ;end v88[v90[2]]=v299;else do return;end end elseif (v91<=64) then if (v91<=62) then v88[v90[2]]=v73[v90[3]];elseif (v91==63) then do return v88[v90[2]]();end else v88[v90[2]]=v88[v90[3]]%v90[4] ;end elseif (v91<=65) then do return v88[v90[2]]();end elseif (v91==66) then for v367=v90[2],v90[3] do v88[v367]=nil;end else local v302=0;local v303;while true do if (0==v302) then v303=v90[2];do return v88[v303](v21(v88,v303 + 1 ,v90[4 -1 ]));end break;end end end elseif (v91<=78) then if (v91<=(1152 -(1020 + 60))) then if (v91<=69) then if (v91==68) then v88[v90[2]]={};else local v188=0;local v189;while true do if (v188==0) then v189=v90[2];do return v21(v88,v189,v83);end break;end end end elseif (v91<=70) then if v88[v90[1425 -(630 + 793) ]] then v82=v82 + 1 ;else v82=v90[3];end elseif (v91>71) then local v305=0;local v306;while true do if (v305==0) then v306=v90[2];v88[v306](v88[v306 + 1 ]);break;end end else local v307=0;local v308;local v309;local v310;local v311;while true do if (v307==1) then v83=(v310 + v308) -1 ;v311=0;v307=2;end if (v307==2) then for v431=v308,v83 do v311=v311 + 1 ;v88[v431]=v309[v311];end break;end if (0==v307) then v308=v90[2];v309,v310=v81(v88[v308](v21(v88,v308 + 1 ,v83)));v307=1;end end end elseif (v91<=75) then if (v91<=73) then if (v90[2]==v88[v90[13 -9 ]]) then v82=v82 + (4 -3) ;else v82=v90[3];end elseif (v91>74) then v88[v90[2]]=v88[v90[3]][v90[4]];else v88[v90[2]]=v90[2 + 1 ] + v88[v90[4]] ;end elseif (v91<=76) then if (v88[v90[2]]==v88[v90[4]]) then v82=v82 + 1 ;else v82=v90[3];end elseif (v91>77) then v88[v90[6 -4 ]]=v88[v90[3]]%v88[v90[4]] ;else v88[v90[2]]=v74[v90[3]];end elseif (v91<=84) then if (v91<=81) then if (v91<=79) then if  not v88[v90[2]] then v82=v82 + 1 ;else v82=v90[3];end elseif (v91>80) then local v321=0;local v322;while true do if (v321==0) then v322=v90[1749 -(760 + 987) ];v88[v322](v88[v322 + 1 ]);break;end end else v88[v90[2]]=v88[v90[3]][v88[v90[4]]];end elseif (v91<=82) then v88[v90[2]]={};elseif (v91==83) then v88[v90[2]]=v74[v90[3]];else local v327=0;local v328;while true do if (0==v327) then v328=v90[2];v88[v328]=v88[v328](v21(v88,v328 + 1 ,v90[3]));break;end end end elseif (v91<=87) then if (v91<=85) then v88[v90[1915 -(1789 + 124) ]]=v88[v90[3]][v88[v90[4]]];elseif (v91>(852 -(745 + 21))) then v88[v90[2]][v88[v90[3]]]=v88[v90[4]];else v88[v90[2]]=v88[v90[3]]%v88[v90[4]] ;end elseif (v91<=88) then if (v88[v90[2]]==v90[4]) then v82=v82 + 1 ;else v82=v90[2 + 1 ];end elseif (v91>89) then local v333=0;local v334;local v335;local v336;local v337;while true do if (v333==1) then v83=(v336 + v334) -1 ;v337=0;v333=2;end if (2==v333) then for v434=v334,v83 do v337=v337 + 1 ;v88[v434]=v335[v337];end break;end if (v333==0) then v334=v90[5 -3 ];v335,v336=v81(v88[v334](v88[v334 + (3 -2) ]));v333=1;end end else v88[v90[2]]=v88[v90[3]]%v90[1 + 3 ] ;end v82=v82 + 1 ;end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012533Q00013Q00204B5Q0002001253000100013Q00204B000100010003001253000200013Q00204B000200020004001253000300053Q00064F0003000A0001000100042F3Q000A0001001253000300063Q00204B000400030007001253000500083Q00204B000500050009001253000600083Q00204B00060006000A00062400073Q000100062Q00323Q00064Q00328Q00323Q00044Q00323Q00014Q00323Q00024Q00323Q00053Q001253000800013Q00204B00080008000B0012530009000C3Q001253000A000D3Q000624000B0001000100052Q00323Q00074Q00323Q00094Q00323Q00084Q00323Q000A4Q00323Q000B4Q0028000C000B4Q0041000C00014Q0045000C6Q003D3Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q005200025Q001222000300014Q000600045Q001222000500013Q00040E0003002100012Q003E00076Q0028000800024Q003E000900014Q003E000A00024Q003E000B00034Q003E000C00044Q0028000D6Q0028000E00063Q002014000F000600012Q0004000C000F4Q002C000B3Q00022Q003E000C00034Q003E000D00044Q0028000E00014Q0006000F00014Q0056000F0006000F00104A000F0001000F2Q0006001000014Q005600100006001000104A0010000100100020140010001000012Q0004000D00106Q000C6Q002C000A3Q0002002040000A000A00022Q000A0009000A4Q002B00073Q000100040F0003000500012Q003E000300054Q0028000400024Q0043000300044Q004500036Q003D3Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006245Q000100012Q00338Q003E000100014Q003E000200024Q003E000300024Q005200046Q003E000500034Q002800066Q0025000700074Q0004000500074Q002700043Q000100204B000400040001001222000500024Q0054000300050002001222000400034Q0004000200044Q002C00013Q0002002658000100180001000400042F3Q001800012Q002800016Q005200026Q0043000100024Q004500015Q00042F3Q001B00012Q003E000100044Q0041000100014Q004500016Q003D3Q00013Q00013Q00473Q00034D3Q00DD45A206E558B206FD17AA47FB5EA44FFD59F806DE52A447E944A206EB5FA248F941A254BC7EE74AF358AC06FD43E75FF342EB06F941A254E558A943BC52AB55F917A34FEF56B756F956B555B203043Q00269C37C703343Q008C723C311C61BA4BA96B79681234F742B8223C01537FFF46B83D7B2D0760F34DAF3D70270060BA4AA63D65270666BA46B1786F6603083Q0023C81D1C4873149A03273Q0038ADD49F9423215999C3DA832F3C46FFF3DA8E2D210ABA91FA842A321CB391D9823E7400B0C49103073Q005479DFB1BFED4C033D3Q0041726520796F7520612063616D70666972653F204265636175736520796F75E28099726520686F7420616E6420492077616E742073E280996D6F72652E03473Q009F5989B9354570C9BA40CCE03B1012C0B552848133546F819953CAA12F4335819216C3B5294470D2B844C8B03F5470CCA216C2AE3F5570C7BA5AC5A9345770C7B44489B935457E03083Q00A1DB36A9C05A305003383Q0068500565504D15654802142C444740315B4316204547127A0960052648571320096B40364C47403C4657402C47020D3C094415315C50056B03043Q004529226003323Q0098CC97130D3EFCCBD61C076BBD83C41F0C29A9D1D9464224AE83D618076BA5CCC24A0327ABC2CE19423FB4CAC44A0A24A89C03063Q004BDCA3B76A6203313Q00497320796F757220646164206120626F7865723F204265636175736520796F75E2809972652061206B6E6F636B6F75742103343Q0023A88E77C00DAFCB369911B48420CA16B5993A8642988E34D817A98E77C00DAFCB3AD809BFCB3AC042B28E36CB16FA9936DA07F403053Q00B962DAEB57034B3Q00E83D29A6F7EACD332BEAD1BD8B2528F39EA2C43122B99E89CA2934E39EA7D27C37E7CCAFC52834A6DFA6DC3D3EF59EBEC43023A6D3AF8B2Q28A6D8A5C73028F19EA7D27C23F4DBABC62F6903063Q00CAAB5C4786BE033C3Q0008D329C830CE39C828812F8924C43E8976810E8D2AC0399B2C81299E2CD335C83DC8218D69E86C8426CE27C828D56C9126D460C800813F8520CD29C603043Q00E849A14C03303Q009ACB471D07B4CC025C10FBD84C5A1BB786027F1BB8D8574E1BFBD1475C08BED702540DFBD44B4E0DB2D7451D11B5DC0C03053Q007EDBB9223D03243Q0025DD1E7B6A37FBE8188E577C3E7FF6F5098E51603E7EE0A705DA1E786B64E7A715C14B2D03083Q00876CAE3E121E179303463Q0095E8248B01A12687BAEC24CF58A33687B7A93ACE16AD3ACBE9A908CE1BAF26D4B3A9038B0FAF3DD3F6FD258B1CBC32D0F6E86AD815A73FC2F6E6248B01A126D5F6EF2BC81DE003083Q00A7D6894AAB78CE53035B3Q00446F20796F75206B6E6F772069662074686572652061726520616E792057692D4669207369676E616C732061726F756E6420686572653F20426563617573652049E280996D20662Q656C696E67206120636F2Q6E656374696F6E2E03313Q00497320796F7572206E616D652043686170737469636B3F204265636175736520796F75E2809972652064612062616C6D2103393Q00AAE2371DE1A89EB0331DFCAE88E43B52F6A699E96D1DDAA288F1274EFDE792FF271DF9A38FB03F58F9A982FE351DECA8CBFD2B1DF4AE8DF57C03063Q00C7EB90523D98034D3Q002319F9320803F9230600BC6B0656A92E0915B02758569B2E0417AC380256906B1017B73F4702B66B0204B8380256A0241204F93B0605AD6B0618BD6B1004B03F0256B63E1556BF3E1303AB2E4903043Q004B6776D903563Q00446F20796F752068617665206120717561727465723F204265636175736520492077616E7420746F2063612Q6C206D79206D6F6D20616E642074652Q6C206865722049206D657420E28098546865204F6E65E280992E03023Q005F47030B3Q0072692Q7A456E61626C6564028Q00026Q00F03F03043Q0067616D65030A3Q005374617274657247756903073Q00536574436F726503103Q00F4517E109711D35D761DBA1FD35D7F1A03063Q007EA7341074D903053Q00FC27348CB103073Q009CA84E40E0D479030B3Q0035E7BFD447C2AACF03EBA103043Q00AE678EC503043Q00622D472C03073Q009836483F58453E03133Q00F09F8EAD2Q20486578706C6F697420F09F8EAD03083Q00F0D1FC5DC0CDE15203043Q003CB4A48E026Q001440027Q0040030A3Q004765745365727669636503103Q00B43FC800CE8F3CD806D4843EDB1BE48403053Q0087E14CAD72030F3Q0072692Q7A6B65796C697374656E6572030A3Q00496E707574426567616E03073Q00436F2Q6E65637403103Q0029E8B6B482B2B313EBB1B3ADA9AE15E303073Q00C77A8DD8D0CCDD03053Q0099D404FC7D03063Q0096CDBD709018030D3Q00178DA55644BD1F1C2A85BB490003083Q007045E4DF2C64E87103043Q00E01A1FC703073Q00E6B47F67B3D61C03083Q00A8104D47F048EF8203073Q0080EC653F268421030A3Q00446973636F2Q6E6563740001DB3Q0006463Q00D900013Q00042F3Q00D900012Q0052000100124Q003E00025Q001222000300013Q001222000400024Q00540002000400022Q003E00035Q001222000400033Q001222000500044Q00540003000500022Q003E00045Q001222000500053Q001222000600064Q0054000400060002001222000500074Q003E00065Q001222000700083Q001222000800094Q00540006000800022Q003E00075Q0012220008000A3Q0012220009000B4Q00540007000900022Q003E00085Q0012220009000C3Q001222000A000D4Q00540008000A00020012220009000E4Q003E000A5Q001222000B000F3Q001222000C00104Q0054000A000C00022Q003E000B5Q001222000C00113Q001222000D00124Q0054000B000D00022Q003E000C5Q001222000D00133Q001222000E00144Q0054000C000E00022Q003E000D5Q001222000E00153Q001222000F00164Q0054000D000F00022Q003E000E5Q001222000F00173Q001222001000184Q0054000E001000022Q003E000F5Q001222001000193Q0012220011001A4Q0054000F001100020012220010001B3Q0012220011001C4Q003E00125Q0012220013001D3Q0012220014001E4Q00540012001400022Q003E00135Q0012220014001F3Q001222001500204Q0054001300150002001222001400214Q000C000100130001001253000200223Q001253000300223Q00204B0003000300232Q0002000300033Q00103A000200230003001253000200223Q00204B000200020023000646000200A100013Q00042F3Q00A10001001222000200244Q0025000300053Q002658000300510001002400042F3Q00510001001222000300244Q0025000400043Q001222000300253Q0026580003004C0001002500042F3Q004C00012Q0025000500053Q0026580003007C0001002400042F3Q007C0001001222000600243Q0026580006005B0001002500042F3Q005B0001001222000300253Q00042F3Q007C0001002658000600570001002400042F3Q00570001001253000700263Q00204B00070007002700202D0007000700282Q003E00095Q001222000A00293Q001222000B002A4Q00540009000B00022Q0052000A3Q00032Q003E000B5Q001222000C002B3Q001222000D002C4Q0054000B000D00022Q003E000C5Q001222000D002D3Q001222000E002E4Q0054000C000E00022Q0057000A000B000C2Q003E000B5Q001222000C002F3Q001222000D00304Q0054000B000D000200203B000A000B00312Q003E000B5Q001222000C00323Q001222000D00334Q0054000B000D000200203B000A000B00342Q001B0007000A00012Q0025000400043Q001222000600253Q00042F3Q00570001002658000300920001002500042F3Q00920001001222000600243Q002658000600830001002500042F3Q00830001001222000300353Q00042F3Q009200010026580006007F0001002400042F3Q007F000100062400043Q000100022Q00323Q00014Q00337Q001253000700263Q00202D0007000700362Q003E00095Q001222000A00373Q001222000B00384Q00040009000B4Q002C00073Q00022Q0028000500073Q001222000600253Q00042F3Q007F0001002658000300540001003500042F3Q00540001001253000600223Q00204B00070005003A00202D00070007003B00062400090001000100012Q00323Q00044Q005400070009000200103A00060039000700042F3Q009F000100042F3Q0054000100042F3Q009F000100042F3Q004C00012Q000800025Q00042F3Q00D70001001222000200244Q0025000300033Q000E31002400A30001000200042F3Q00A30001001222000300243Q002658000300A60001002400042F3Q00A60001001253000400263Q00204B00040004002700202D0004000400282Q003E00065Q0012220007003C3Q0012220008003D4Q00540006000800022Q005200073Q00032Q003E00085Q0012220009003E3Q001222000A003F4Q00540008000A00022Q003E00095Q001222000A00403Q001222000B00414Q00540009000B00022Q00570007000800092Q003E00085Q001222000900423Q001222000A00434Q00540008000A000200203B0007000800312Q003E00085Q001222000900443Q001222000A00454Q00540008000A000200203B0007000800342Q001B000400070001001253000400223Q00204B000400040039000646000400D700013Q00042F3Q00D70001001222000400243Q002658000400C90001002400042F3Q00C90001001253000500223Q00204B00050005003900202D0005000500462Q0051000500020001001253000500223Q00300900050039004700042F3Q00D7000100042F3Q00C9000100042F3Q00D7000100042F3Q00A6000100042F3Q00D7000100042F3Q00A300012Q000800015Q00042F3Q00DA000100204B00013Q00252Q003D3Q00013Q00023Q001D3Q00028Q0003043Q006D61746803063Q0072616E646F6D026Q00F03F03053Q007072696E74030E3Q006B5B0B2D2EE315184C0C333DB75203073Q0072383E6549478D03043Q0067616D65030A3Q0047657453657276696365030F3Q008CECC3D09BE1DAD08BECC9D2B1EADE03043Q00A4D889BB027Q004003193Q0043686174496E707574426172436F6E66696775726174696F6E03113Q00546172676574546578744368612Q6E656C030B3Q004368617456657273696F6E03043Q00456E756D03113Q004C6567616379436861745365727669636503113Q00E0E321BEAFFD0AC6E33581B2F119D3E13403073Q006BB28651D2C69E030E3Q0046696E6446697273744368696C64031B3Q001C0B84C7BF341AA1CEAB2C3D9BD5BE3D03A1CEAB2C2B94C3A42C1D03053Q00CA586EE2A603113Q005361794D652Q7361676552657175657374030A3Q00466972655365727665722Q033Q00E2038E03053Q00AAA36FE29703093Q0053656E644173796E63031A3Q003238B32C0E24300224B7350E39260570B32E4F3E251032BE3D0003073Q00497150D2582E5700593Q0012223Q00014Q0025000100043Q000E310001000E00013Q00042F3Q000E0001001253000500023Q00204B000500050003001222000600044Q003E00076Q0006000700074Q00540005000700022Q0028000100054Q003E00056Q00550002000500010012223Q00043Q0026583Q00210001000400042F3Q00210001001253000500054Q003E000600013Q001222000700063Q001222000800074Q00540006000800022Q0028000700024Q00200006000600072Q0051000500020001001253000500083Q00202D0005000500092Q003E000700013Q0012220008000A3Q0012220009000B4Q0004000700094Q002C00053Q00022Q0028000300053Q0012223Q000C3Q000E31000C000200013Q00042F3Q0002000100204B00050003000D00204B00040005000E00204B00050003000F001253000600103Q00204B00060006000F00204B0006000600110006130005004A0001000600042F3Q004A0001001222000500014Q0025000600063Q0026580005002D0001000100042F3Q002D0001001253000700083Q00202D0007000700092Q003E000900013Q001222000A00123Q001222000B00134Q00040009000B4Q002C00073Q000200202D0007000700142Q003E000900013Q001222000A00153Q001222000B00164Q00040009000B4Q002C00073Q00022Q0028000600073Q0006460006005800013Q00042F3Q0058000100204B00070006001700202D0007000700182Q0028000900024Q003E000A00013Q001222000B00193Q001222000C001A4Q0004000A000C4Q002B00073Q000100042F3Q0058000100042F3Q002D000100042F3Q005800010006460004005000013Q00042F3Q0050000100202D00050004001B2Q0028000700024Q001B00050007000100042F3Q00580001001253000500054Q003E000600013Q0012220007001C3Q0012220008001D4Q0004000600084Q002B00053Q000100042F3Q0058000100042F3Q000200012Q003D3Q00017Q00053Q0003073Q004B6579436F646503043Q00456E756D03013Q005403023Q005F47030B3Q0072692Q7A456E61626C6564020F3Q00064F0001000E0001000100042F3Q000E000100204B00023Q0001001253000300023Q00204B00030003000100204B0003000300030006130002000E0001000300042F3Q000E0001001253000200043Q00204B0002000200050006460002000E00013Q00042F3Q000E00012Q003E00026Q000B0002000100012Q003D3Q00017Q00",v17(),...);
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
