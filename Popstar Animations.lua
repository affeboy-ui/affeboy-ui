local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\183\90","\95\153\116\215\157"),function(v42) if (v9(v42,2)==81) then local v93=0;while true do if (v93==0) then v30=v8(v11(v42,1,1));return "";end end else local v94=0;local v95;while true do if (v94==0) then v95=v10(v8(v42,16));if v30 then local v118=0;local v119;while true do if (v118==0) then v119=v13(v95,v30);v30=nil;v118=1;end if (v118==1) then return v119;end end else return v95;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v96=0;local v97;while true do if (0==v96) then v97=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v97-(v97%1) ;end end else local v98=0;local v99;while true do if (v98==0) then v99=2^(v44-1) ;return (((v43%(v99 + v99))>=v99) and 1) or 0 ;end end end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33() local v47=0;local v48;local v49;while true do if (0==v47) then v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v47=1;end if (v47==1) then return (v49 * 256) + v48 ;end end end local function v34() local v50,v51,v52,v53=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v53 * 16777216) + (v52 * 65536) + (v51 * 256) + v50 ;end local function v35() local v54=0;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (v54==3) then if (v59==0) then if (v58==0) then return v60 * 0 ;else local v120=0;while true do if (v120==0) then v59=1;v57=0;break;end end end elseif (v59==2047) then return ((v58==0) and (v60 * (1/0))) or (v60 * NaN) ;end return v16(v60,v59-1023 ) * (v57 + (v58/(2^52))) ;end if (v54==0) then v55=v34();v56=v34();v54=1;end if (v54==2) then v59=v31(v56,21,31);v60=((v31(v56,32)==1) and  -1) or 1 ;v54=3;end if (v54==1) then v57=1;v58=(v31(v56,1,20) * (2^32)) + v55 ;v54=2;end end end local function v36(v61) local v62;if  not v61 then local v100=0;while true do if (v100==0) then v61=v34();if (v61==0) then return "";end break;end end end v62=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;local v63={};for v77=1, #v62 do v63[v77]=v10(v9(v11(v62,v77,v77)));end return v14(v63);end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v64=0;local v65;local v66;local v67;local v68;local v69;local v70;while true do if (v64==0) then v65={};v66={};v67={};v68={v65,v66,nil,v67};v64=1;end if (v64==1) then v69=v34();v70={};for v105=1,v69 do local v106=v32();local v107;if (v106==1) then v107=v32()~=0 ;elseif (v106==2) then v107=v35();elseif (v106==3) then v107=v36();end v70[v105]=v107;end v68[3]=v32();v64=2;end if (2==v64) then for v109=1,v34() do local v110=0;local v111;while true do if (0==v110) then v111=v32();if (v31(v111,1,1)==0) then local v121=0;local v122;local v123;local v124;while true do if (v121==3) then if (v31(v123,8 -5 ,3)==1) then v124[4]=v70[v124[7 -3 ]];end v65[v109]=v124;break;end if (0==v121) then v122=v31(v111,2,3);v123=v31(v111,4,6);v121=1;end if (v121==2) then if (v31(v123,1,1)==1) then v124[2]=v70[v124[2]];end if (v31(v123,2,2)==1) then v124[3]=v70[v124[3]];end v121=3;end if (v121==1) then v124={v33(),v33(),nil,nil};if (v122==0) then v124[3]=v33();v124[4]=v33();elseif (v122==1) then v124[3]=v34();elseif (v122==2) then v124[3]=v34() -(2^16) ;elseif (v122==3) then local v379=0;while true do if (v379==0) then v124[3]=v34() -(2^(49 -33)) ;v124[4]=v33();break;end end end v121=2;end end end break;end end end for v112=1,v34() do v66[v112-1 ]=v39();end return v68;end end end local function v40(v71,v72,v73) local v74=v71[1];local v75=v71[2];local v76=v71[7 -4 ];return function(...) local v79=v74;local v80=v75;local v81=v76;local v82=v38;local v83=620 -(555 + 64) ;local v84= -1;local v85={};local v86={...};local v87=v20("#",...) -1 ;local v88={};local v89={};for v101=0,v87 do if (v101>=v81) then v85[v101-v81 ]=v86[v101 + (932 -(857 + 74)) ];else v89[v101]=v86[v101 + 1 ];end end local v90=(v87-v81) + 1 ;local v91;local v92;while true do v91=v79[v83];v92=v91[1];if (v92<=(608 -(367 + 201))) then if (v92<=19) then if (v92<=9) then if (v92<=4) then if (v92<=(928 -(214 + 713))) then if (v92==0) then if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end else v89[v91[2]]= not v89[v91[1 + 2 ]];end elseif (v92<=2) then v89[v91[2]]();elseif (v92==3) then v89[v91[1 + 1 ]]=v89[v91[3]];else local v232=v91[2];v89[v232]=v89[v232](v21(v89,v232 + 1 ,v91[3]));end elseif (v92<=(883 -(282 + 595))) then if (v92==5) then local v135=0;local v136;while true do if (v135==0) then v136=v91[2];v89[v136]=v89[v136](v89[v136 + (1638 -(1523 + 114)) ]);break;end end else v89[v91[2]]=v73[v91[3]];end elseif (v92<=7) then v89[v91[2 + 0 ]][v91[3]]=v89[v91[4]];elseif (v92>8) then do return v89[v91[2]]();end else local v234=0;local v235;while true do if (0==v234) then v235=v91[2];v89[v235](v21(v89,v235 + 1 ,v84));break;end end end elseif (v92<=14) then if (v92<=11) then if (v92==10) then for v221=v91[2],v91[3] do v89[v221]=nil;end else local v141=0;local v142;while true do if (0==v141) then v142=v91[2];v89[v142]=v89[v142](v21(v89,v142 + (1 -0) ,v91[3]));break;end end end elseif (v92<=12) then v89[v91[2]]=v72[v91[3]];elseif (v92==13) then local v236=v91[2];local v237={};for v296=1, #v88 do local v297=0;local v298;while true do if (0==v297) then v298=v88[v296];for v390=0, #v298 do local v391=0;local v392;local v393;local v394;while true do if (v391==1) then v394=v392[1067 -(68 + 997) ];if ((v393==v89) and (v394>=v236)) then local v438=0;while true do if (v438==0) then v237[v394]=v393[v394];v392[1]=v237;break;end end end break;end if (v391==0) then v392=v298[v390];v393=v392[1];v391=1;end end end break;end end end else local v238=v91[2];local v239=v89[v91[1273 -(226 + 1044) ]];v89[v238 + 1 ]=v239;v89[v238]=v239[v91[17 -13 ]];end elseif (v92<=16) then if (v92==15) then local v145=0;local v146;local v147;local v148;local v149;while true do if (0==v145) then v146=v91[2];v147,v148=v82(v89[v146](v21(v89,v146 + 1 ,v91[3])));v145=1;end if (v145==1) then v84=(v148 + v146) -1 ;v149=0;v145=2;end if (v145==2) then for v331=v146,v84 do local v332=0;while true do if (v332==0) then v149=v149 + 1 ;v89[v331]=v147[v149];break;end end end break;end end else local v150=0;local v151;local v152;while true do if (v150==1) then for v333=v151 + 1 ,v84 do v15(v152,v89[v333]);end break;end if (v150==0) then v151=v91[119 -(32 + 85) ];v152=v89[v151];v150=1;end end end elseif (v92<=17) then v89[v91[2]]=v89[v91[3 + 0 ]];elseif (v92>18) then local v243=v91[2];local v244,v245=v82(v89[v243](v21(v89,v243 + 1 ,v91[3])));v84=(v245 + v243) -1 ;local v246=0;for v302=v243,v84 do local v303=0;while true do if (v303==0) then v246=v246 + 1 ;v89[v302]=v244[v246];break;end end end else local v247=0;local v248;while true do if (v247==0) then v248=v91[2];v89[v248](v21(v89,v248 + 1 + 0 ,v91[3]));break;end end end elseif (v92<=29) then if (v92<=(981 -(892 + 65))) then if (v92<=(49 -28)) then if (v92==20) then v89[v91[2]][v89[v91[5 -2 ]]]=v89[v91[4]];else v89[v91[2]][v91[3]]=v89[v91[4]];end elseif (v92<=22) then v89[v91[2]]=v72[v91[3]];elseif (v92==23) then if v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end else do return;end end elseif (v92<=26) then if (v92==25) then local v161=0;local v162;local v163;local v164;while true do if (v161==1) then v164={};v163=v18({},{[v7("\234\113\32\212\49\177\12","\116\181\46\73\186\85\212")]=function(v335,v336) local v337=0;local v338;while true do if (0==v337) then v338=v164[v336];return v338[1][v338[2]];end end end,[v7("\230\103\204\132\1\247\55\246\220\64","\146\185\56\162\225\118\158\89")]=function(v339,v340,v341) local v342=0;local v343;while true do if (v342==0) then v343=v164[v340];v343[1][v343[2]]=v341;break;end end end});v161=2;end if (v161==2) then for v344=1,v91[4] do local v345=0;local v346;while true do if (v345==0) then v83=v83 + 1 ;v346=v79[v83];v345=1;end if (v345==1) then if (v346[1]==(4 -1)) then v164[v344-1 ]={v89,v346[183 -(67 + 113) ]};else v164[v344-1 ]={v72,v346[7 -4 ]};end v88[ #v88 + 1 ]=v164;break;end end end v89[v91[2]]=v40(v162,v163,v73);break;end if (v161==0) then v162=v80[v91[3]];v163=nil;v161=1;end end else v89[v91[2]]=v89[v91[3]]%v91[4] ;end elseif (v92<=27) then local v166=0;local v167;while true do if (v166==0) then v167=v91[2];v89[v167]=v89[v167](v21(v89,v167 + 1 ,v84));break;end end elseif (v92==28) then v89[v91[2]]=v73[v91[3]];else v89[v91[2]]=v89[v91[3]][v91[3 + 1 ]];end elseif (v92<=34) then if (v92<=31) then if (v92>30) then local v168=0;local v169;while true do if (v168==0) then v169=v91[2];v89[v169](v89[v169 + 1 ]);break;end end else local v170=0;local v171;local v172;while true do if (v170==0) then v171=v91[2];v172=v89[v91[3]];v170=1;end if (v170==1) then v89[v171 + 1 ]=v172;v89[v171]=v172[v91[4]];break;end end end elseif (v92<=32) then local v173=0;local v174;local v175;local v176;while true do if (v173==0) then v174=v91[2];v175=v89[v174];v173=1;end if (v173==1) then v176=v89[v174 + 2 ];if (v176>0) then if (v175>v89[v174 + 1 ]) then v83=v91[3];else v89[v174 + 3 ]=v175;end elseif (v175<v89[v174 + 1 ]) then v83=v91[3];else v89[v174 + 3 ]=v175;end break;end end elseif (v92==33) then local v253=v91[2];local v254,v255=v82(v89[v253](v89[v253 + 1 ]));v84=(v255 + v253) -1 ;local v256=0;for v317=v253,v84 do local v318=0;while true do if (v318==0) then v256=v256 + 1 ;v89[v317]=v254[v256];break;end end end else do return v89[v91[2]]();end end elseif (v92<=37) then if (v92<=35) then v83=v91[3];elseif (v92==36) then v89[v91[2]]= #v89[v91[3]];elseif  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=(151 -113)) then local v178=0;local v179;while true do if (v178==0) then v179=v91[2];v89[v179](v21(v89,v179 + 1 ,v91[3]));break;end end elseif (v92>(991 -(802 + 150))) then if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[7 -4 ];end else v89[v91[2]]= #v89[v91[3]];end elseif (v92<=60) then if (v92<=50) then if (v92<=45) then if (v92<=42) then if (v92==41) then local v180=v91[2];v89[v180](v89[v180 + 1 ]);else local v181=0;local v182;while true do if (v181==0) then v182=v91[3 -1 ];do return v89[v182](v21(v89,v182 + 1 ,v91[3]));end break;end end end elseif (v92<=43) then local v183=0;local v184;local v185;local v186;local v187;while true do if (1==v183) then v84=(v186 + v184) -1 ;v187=0;v183=2;end if (v183==2) then for v349=v184,v84 do v187=v187 + 1 ;v89[v349]=v185[v187];end break;end if (v183==0) then v184=v91[2 + 0 ];v185,v186=v82(v89[v184](v89[v184 + 1 ]));v183=1;end end elseif (v92>44) then local v259=0;local v260;local v261;while true do if (v259==0) then v260=v91[999 -(915 + 82) ];v261=v89[v260];v259=1;end if (v259==1) then for v385=v260 + 1 ,v84 do v15(v261,v89[v385]);end break;end end else v89[v91[2]][v89[v91[3]]]=v89[v91[4]];end elseif (v92<=(133 -86)) then if (v92>46) then local v188=v91[2];v89[v188]=v89[v188](v21(v89,v188 + 1 ,v84));else v89[v91[2]][v89[v91[2 + 1 ]]]=v91[4];end elseif (v92<=48) then v89[v91[2]]={};elseif (v92>49) then do return;end else v89[v91[2]]= not v89[v91[3]];end elseif (v92<=55) then if (v92<=(68 -16)) then if (v92==51) then v83=v91[1190 -(1069 + 118) ];else v89[v91[2]]={};end elseif (v92<=53) then v89[v91[2]]=v91[3];elseif (v92==54) then v89[v91[2]]=v91[3] + v89[v91[4]] ;elseif  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=57) then if (v92>56) then if (v91[2]==v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end else local v197=v91[2];local v198,v199=v82(v89[v197](v21(v89,v197 + (2 -1) ,v84)));v84=(v199 + v197) -1 ;local v200=0;for v223=v197,v84 do v200=v200 + 1 ;v89[v223]=v198[v200];end end elseif (v92<=(126 -68)) then local v201=0;local v202;local v203;local v204;while true do if (v201==2) then for v353=1,v91[4] do local v354=0;local v355;while true do if (v354==1) then if (v355[1]==3) then v204[v353-1 ]={v89,v355[3]};else v204[v353-1 ]={v72,v355[3]};end v88[ #v88 + 1 ]=v204;break;end if (v354==0) then v83=v83 + 1 ;v355=v79[v83];v354=1;end end end v89[v91[2]]=v40(v202,v203,v73);break;end if (v201==1) then v204={};v203=v18({},{[v7("\231\99\12\206\171\15\192","\106\184\60\101\160\207")]=function(v356,v357) local v358=0;local v359;while true do if (v358==0) then v359=v204[v357];return v359[1 + 0 ][v359[3 -1 ]];end end end,[v7("\131\14\140\121\97\181\63\134\121\110","\22\220\81\226\28")]=function(v360,v361,v362) local v363=0;local v364;while true do if (v363==0) then v364=v204[v361];v364[1][v364[2]]=v362;break;end end end});v201=2;end if (v201==0) then v202=v80[v91[3]];v203=nil;v201=1;end end elseif (v92>59) then v89[v91[2]]();else local v267=0;local v268;while true do if (v267==0) then v268=v91[2];do return v21(v89,v268,v84);end break;end end end elseif (v92<=70) then if (v92<=65) then if (v92<=(62 + 0)) then if (v92==61) then local v205=0;local v206;local v207;local v208;while true do if (v205==0) then v206=v91[2];v207=v89[v206 + 2 ];v205=1;end if (v205==1) then v208=v89[v206] + v207 ;v89[v206]=v208;v205=2;end if (v205==2) then if (v207>(791 -(368 + 423))) then if (v208<=v89[v206 + 1 ]) then local v411=0;while true do if (0==v411) then v83=v91[3];v89[v206 + 3 ]=v208;break;end end end elseif (v208>=v89[v206 + 1 ]) then local v412=0;while true do if (v412==0) then v83=v91[3];v89[v206 + 3 ]=v208;break;end end end break;end end elseif (v91[2]==v89[v91[4]]) then v83=v83 + (3 -2) ;else v83=v91[3];end elseif (v92<=63) then local v209=0;local v210;while true do if (v209==0) then v210=v91[2];v89[v210]=v89[v210](v89[v210 + 1 ]);break;end end elseif (v92>(82 -(10 + 8))) then local v270=v91[2];v89[v270](v21(v89,v270 + 1 ,v84));else v89[v91[2]]=v89[v91[3]]%v91[4] ;end elseif (v92<=67) then if (v92==66) then for v226=v91[2],v91[3] do v89[v226]=nil;end else local v211=0;local v212;while true do if (v211==0) then v212=v91[2];do return v21(v89,v212,v84);end break;end end end elseif (v92<=68) then v89[v91[2]]=v89[v91[3]] + v91[4] ;elseif (v92>69) then v89[v91[2]]=v89[v91[11 -8 ]][v91[4]];else local v274=0;local v275;local v276;local v277;local v278;while true do if (v274==1) then v84=(v277 + v275) -1 ;v278=0 -0 ;v274=2;end if (v274==0) then v275=v91[444 -(416 + 26) ];v276,v277=v82(v89[v275](v21(v89,v275 + 1 ,v84)));v274=1;end if (v274==2) then for v386=v275,v84 do local v387=0;while true do if (v387==0) then v278=v278 + 1 ;v89[v386]=v276[v278];break;end end end break;end end end elseif (v92<=75) then if (v92<=72) then if (v92>(31 + 40)) then v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;elseif v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=73) then local v215=v91[2];local v216=v89[v215];local v217=v89[v215 + 2 ];if (v217>0) then if (v216>v89[v215 + (1 -0) ]) then v83=v91[3];else v89[v215 + 3 ]=v216;end elseif (v216<v89[v215 + 1 ]) then v83=v91[3];else v89[v215 + 3 ]=v216;end elseif (v92==74) then local v280=v91[2];do return v89[v280](v21(v89,v280 + 1 ,v91[3]));end else v89[v91[2]]=v91[3];end elseif (v92<=78) then if (v92<=76) then v89[v91[2]]=v91[441 -(145 + 293) ] + v89[v91[434 -(44 + 386) ]] ;elseif (v92==77) then v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;else local v284=0;local v285;local v286;while true do if (v284==0) then v285=v91[2];v286={};v284=1;end if (v284==1) then for v388=1487 -(998 + 488) , #v88 do local v389=v88[v388];for v413=0 + 0 , #v389 do local v414=0;local v415;local v416;local v417;while true do if (v414==1) then v417=v415[2];if ((v416==v89) and (v417>=v285)) then local v439=0;while true do if (v439==0) then v286[v417]=v416[v417];v415[1]=v286;break;end end end break;end if (v414==0) then v415=v389[v413];v416=v415[1];v414=1;end end end end break;end end end elseif (v92<=79) then v89[v91[2]][v89[v91[3]]]=v91[4 + 0 ];elseif (v92>80) then v89[v91[774 -(201 + 571) ]]=v89[v91[1141 -(116 + 1022) ]] + v91[4] ;else local v288=0;local v289;local v290;local v291;while true do if (v288==2) then if (v290>0) then if (v291<=v89[v289 + 1 ]) then local v426=0;while true do if (v426==0) then v83=v91[3];v89[v289 + (12 -9) ]=v291;break;end end end elseif (v291>=v89[v289 + 1 ]) then local v427=0;while true do if (0==v427) then v83=v91[3];v89[v289 + 3 ]=v291;break;end end end break;end if (v288==1) then v291=v89[v289] + v290 ;v89[v289]=v291;v288=2;end if (v288==0) then v289=v91[2];v290=v89[v289 + 2 ];v288=1;end end end v83=v83 + 1 ;end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q00121C3Q00013Q0020465Q000200121C000100013Q00204600010001000300121C000200013Q00204600020002000400121C000300053Q0006370003000A000100010004233Q000A000100121C000300063Q00204600040003000700121C000500083Q00204600050005000900121C000600083Q00204600060006000A00061900073Q000100062Q00033Q00064Q00038Q00033Q00044Q00033Q00014Q00033Q00024Q00033Q00053Q00121C000800013Q00204600080008000B00121C0009000C3Q00121C000A000D3Q000619000B0001000100052Q00033Q00074Q00033Q00094Q00033Q00084Q00033Q000A4Q00033Q000B4Q0011000C000B4Q0022000C00014Q003B000C6Q00323Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q003400025Q001235000300014Q002400045Q001235000500013Q0004200003002100012Q000C00076Q0011000800024Q000C000900014Q000C000A00024Q000C000B00034Q000C000C00044Q0011000D6Q0011000E00063Q002051000F000600012Q0013000C000F4Q001B000B3Q00022Q000C000C00034Q000C000D00044Q0011000E00014Q0024000F00014Q0048000F0006000F001036000F0001000F2Q0024001000014Q00480010000600100010360010000100100020510010001000012Q0013000D00104Q0038000C6Q001B000A3Q000200201A000A000A00022Q002B0009000A4Q000800073Q00010004500003000500012Q000C000300054Q0011000400024Q004A000300044Q003B00036Q00323Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006195Q000100012Q00168Q000C000100014Q000C000200024Q000C000300024Q003400046Q000C000500034Q001100066Q0042000700074Q0013000500074Q002D00043Q0001002046000400040001001235000500024Q0004000300050002001235000400034Q0013000200044Q001B00013Q000200262800010018000100040004233Q001800012Q001100016Q003400026Q004A000100024Q003B00015Q0004233Q001B00012Q000C000100044Q0022000100014Q003B00016Q00323Q00013Q00013Q00093Q0003023Q005F4703113Q00616E696D506F707374617241637469766503043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C6179657203093Q00436861726163746572030E3Q00436861726163746572412Q64656403043Q0057616974026Q00F03F01223Q0006173Q002000013Q0004233Q0020000100121C000100013Q00121C000200013Q0020460002000200022Q0031000200023Q00101500010002000200121C000100033Q00204600010001000400204600010001000500204600020001000600063700020010000100010004233Q0010000100204600020001000700201E0002000200082Q000500020002000200061900033Q000100012Q00167Q00061900040001000100012Q00167Q00061900050002000100012Q00167Q00061900060003000100052Q00033Q00024Q00168Q00033Q00044Q00033Q00034Q00033Q00054Q0011000700064Q003C0007000100012Q000D00015Q0004233Q0021000100204600013Q00092Q00323Q00013Q00043Q000C3Q0003043Q0067616D65030A3Q005374617274657247756903073Q00536574436F726503103Q0047FFD2303D7BEED5321A77FBC83D1C7A03053Q0073149ABC5403053Q00E5D699208403063Q00DFB1BFED4CE103043Q0062CCB82E03073Q00DB36A9C05A305003083Q006D5712245D4B0F2B03043Q0045292260026Q00144002193Q00121C000200013Q00204600020002000200201E0002000200032Q000C00045Q001235000500043Q001235000600054Q00040004000600022Q003400053Q00032Q000C00065Q001235000700063Q001235000800074Q00040006000800022Q0014000500064Q000C00065Q001235000700083Q001235000800094Q00040006000800022Q00140005000600012Q000C00065Q0012350007000A3Q0012350008000B4Q000400060008000200202E00050006000C2Q00120002000500012Q00323Q00017Q00203Q00028Q00027Q004003043Q006A756D7003083Q004A756D70416E696D030B3Q00416E696D6174696F6E4964032A3Q00B4D7C31A5864F3D4C01D4C39B3C1DB051A65BFCCDA450338AFC6C3455D22B89E86585379E596835C567903063Q004BDCA3B76A6203053Q00636C696D6203093Q00436C696D62416E696D032A3Q000AAE9F27834DF59C20CE4CA88435D50DA2C534D60FF58A24CA07AEC468D006E7DA658851EADF638057E903053Q00B962DAEB57026Q000840026Q00F03F03043Q0077616C6B03083Q0057616C6B416E696D032A3Q00C32833F684E5842B30F190B8C43E2BE9C6E4C8332AA9DFB9D83933A981A3CF6176B48FF8926477B58DF203063Q00CAAB5C4786BE2Q033Q0072756E03073Q0052756E416E696D032A3Q0021D53898738E639F3ED6629A26C32087318F2F87248E2D9B3AC438C776C828D578937DDA70997CDB7D9903043Q00E849A14C03043Q0069646C65030A3Q00416E696D6174696F6E31032A3Q00B3CD564D44F496554A09F5CB4D5F12B4C10C5E11B696434E0DBECD0D0217BF84130F4FE980120D47E38C03053Q007EDBB9223D030A3Q00416E696D6174696F6E32032A3Q0004DA4A622438BCF01BD910607175FFE814805D7D7338F2F41FCB4A3D217EF7BA5D9F0B222623A1B55E9F03083Q00876CAE3E121E179303043Q0066612Q6C03083Q0046612Q6C416E696D032A3Q00BEFD3EDB42E17CD0A1FE64D917AC3FC8AEA729C415E132D4A5EC3E8447A7379AE7BB7B9941FE639EEFBC03083Q00A7D6894AAB78CE53014E3Q001235000100014Q0042000200023Q00262800010002000100010004233Q00020001001235000200013Q00262800020016000100020004233Q0016000100204600033Q00030020460003000300042Q000C00045Q001235000500063Q001235000600074Q000400040006000200101500030005000400204600033Q00080020460003000300092Q000C00045Q0012350005000A3Q0012350006000B4Q00040004000600020010150003000500040012350002000C3Q000E39000D0027000100020004233Q0027000100204600033Q000E00204600030003000F2Q000C00045Q001235000500103Q001235000600114Q000400040006000200101500030005000400204600033Q00120020460003000300132Q000C00045Q001235000500143Q001235000600154Q0004000400060002001015000300050004001235000200023Q00262800020040000100010004233Q00400001001235000300013Q0026280003002E0001000D0004233Q002E00010012350002000D3Q0004233Q004000010026280003002A000100010004233Q002A000100204600043Q00160020460004000400172Q000C00055Q001235000600183Q001235000700194Q000400050007000200101500040005000500204600043Q001600204600040004001A2Q000C00055Q0012350006001B3Q0012350007001C4Q00040005000700020010150004000500050012350003000D3Q0004233Q002A0001002628000200050001000C0004233Q0005000100204600033Q001D00204600030003001E2Q000C00045Q0012350005001F3Q001235000600204Q00040004000600020010150003000500040004233Q004D00010004233Q000500010004233Q004D00010004233Q000200012Q00323Q00017Q00203Q00028Q00027Q004003043Q006A756D7003083Q004A756D70416E696D030B3Q00416E696D6174696F6E4964032A3Q0083E4264DA2E8C4E7254AB6B584F23E52E0E988FF3F12F9B498F52612A7AE8FAD6008A9F7DAA96505ABF703063Q00C7EB90523D9803043Q0066612Q6C03083Q0046612Q6C416E696D032A3Q000F02AD3B5D59F63C1001F7390814B5241F58BA240A59B8381413AD64581FBD765543E87B564FEC735E4403043Q004B6776D9026Q00F03F026Q00084003043Q0069646C65030A3Q00416E696D6174696F6E31032A3Q00CF406404E35188436703F70CC8567C1BA150C45B7D5BB80DD451645BE617C3092241E84E960D264DEC4F03063Q007EA7341074D9030A3Q00416E696D6174696F6E32032A3Q00C03A3490EE56B3DF3937CEA616FEC42138CEB716F1872F3393B10DB3972724DDE64CAD987F79D7E64CAB03073Q009CA84E40E0D47903053Q00636C696D6203093Q00436C696D62416E696D032A3Q000FFAB1DE5DA1EAD910F9EBDC08ECA9C11FA0A6C10AA1A4DD14EBB18158E7A19355BBF49E56B7F79950B603043Q00AE678EC503043Q0077616C6B03083Q0057616C6B416E696D032A3Q005E3C4B287F11B7413F48763751FA5A2747762651F519294C2B204AB709215B65770BA9067A0F6A7009AF03073Q009836483F58453E2Q033Q0072756E03073Q0052756E416E696D032A3Q00DCD0FA4C8E8BA14BC3D3A04EDBC6E253CC8AED53D98BEF4FC7C1FA138BCDEA018691BF0C859DB608839103043Q003CB4A48E014E3Q001235000100014Q0042000200023Q00262800010002000100010004233Q00020001001235000200013Q0026280002001E000100020004233Q001E0001001235000300013Q00262800030019000100010004233Q0019000100204600043Q00030020460004000400042Q000C00055Q001235000600063Q001235000700074Q000400050007000200101500040005000500204600043Q00080020460004000400092Q000C00055Q0012350006000A3Q0012350007000B4Q00040005000700020010150004000500050012350003000C3Q002628000300080001000C0004233Q000800010012350002000D3Q0004233Q001E00010004233Q000800010026280002002F000100010004233Q002F000100204600033Q000E00204600030003000F2Q000C00045Q001235000500103Q001235000600114Q000400040006000200101500030005000400204600033Q000E0020460003000300122Q000C00045Q001235000500133Q001235000600144Q00040004000600020010150003000500040012350002000C3Q002628000200390001000D0004233Q0039000100204600033Q00150020460003000300162Q000C00045Q001235000500173Q001235000600184Q00040004000600020010150003000500040004233Q004D0001002628000200050001000C0004233Q0005000100204600033Q001900204600030003001A2Q000C00045Q0012350005001B3Q0012350006001C4Q000400040006000200101500030005000400204600033Q001D00204600030003001E2Q000C00045Q0012350005001F3Q001235000600204Q0004000400060002001015000300050004001235000200023Q0004233Q000500010004233Q004D00010004233Q000200012Q00323Q00017Q00123Q00028Q00030C3Q0057616974466F724368696C6403073Q0079500C2426F91703073Q0072383E6549478D03023Q005F4703113Q00616E696D506F7073746172416374697665026Q00F03F03053Q007072696E74031E3Q0099F9CBC8A1E0D5C3F8D92QD4ABFDDAD6F8E8D5CDB5E8CFCDB7E7C88AF6A703043Q00A4D889BB03193Q00E2E921A1B2FF1992C73FBBABFF1FDBE93FA1E6D204D3E234B603073Q006BB28651D2C69E03123Q00F09F8EAD20486578706C6F697420F09F8EAD03223Q000A0B91C3BE2C078CC1EA39008BCBAB2C078DC8B9781A8D86AE3D0883D3A62C40CC8803053Q00CA586EE2A603173Q00F10A91F2DE832E8CFEC7C21B8BF8C4D04FB6F88AF15ED703053Q00AAA36FE29703133Q00F09F8EAD2Q20486578706C6F697420F09F8EAD00603Q0012353Q00014Q0042000100013Q0026283Q0002000100010004233Q000200012Q000C00025Q00201E0002000200022Q000C000400013Q001235000500033Q001235000600044Q0013000400064Q001B00023Q00022Q0011000100023Q00121C000200053Q0020460002000200060006170002003700013Q0004233Q00370001001235000200014Q0042000300033Q00262800020012000100010004233Q00120001001235000300013Q00262800030029000100010004233Q00290001001235000400013Q0026280004001C000100070004233Q001C0001001235000300073Q0004233Q0029000100262800040018000100010004233Q0018000100121C000500084Q000C000600013Q001235000700093Q0012350008000A4Q0013000600084Q000800053Q00012Q000C000500024Q0011000600014Q001F000500020001001235000400073Q0004233Q0018000100262800030015000100070004233Q001500012Q000C000400034Q000C000500013Q0012350006000B3Q0012350007000C4Q00040005000700020012350006000D4Q00120004000600010004233Q005F00010004233Q001500010004233Q005F00010004233Q001200010004233Q005F0001001235000200014Q0042000300033Q000E3900010039000100020004233Q00390001001235000300013Q00262800030050000100010004233Q00500001001235000400013Q0026280004004B000100010004233Q004B000100121C000500084Q000C000600013Q0012350007000E3Q0012350008000F4Q0013000600084Q000800053Q00012Q000C000500044Q0011000600014Q001F000500020001001235000400073Q0026280004003F000100070004233Q003F0001001235000300073Q0004233Q005000010004233Q003F00010026280003003C000100070004233Q003C00012Q000C000400034Q000C000500013Q001235000600103Q001235000700114Q0004000500070002001235000600124Q00120004000600010004233Q005F00010004233Q003C00010004233Q005F00010004233Q003900010004233Q005F00010004233Q000200012Q00323Q00017Q00",v17(),...);
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
