local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\24\252","\212\54\210\144\112"),function(v42) if (v9(v42,2)==81) then v30=v8(v11(v42,1,1));return "";else local v102=0;local v103;while true do if (v102==0) then v103=v10(v8(v42,16));if v30 then local v122=v13(v103,v30);v30=nil;return v122;else return v103;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v104=(v43/(2^(v44-1)))%((5 -3)^(((v45-1) -(v44-1)) + 1)) ;return v104-(v104%1) ;else local v105=2^(v44-1) ;return (((v43%(v105 + v105))>=v105) and 1) or 0 ;end end local function v32() local v46=0;local v47;while true do if (0==v46) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end if (1==v46) then return v47;end end end local function v33() local v48=0;local v49;local v50;while true do if (v48==1) then return (v50 * 256) + v49 ;end if (v48==0) then v49,v50=v9(v27,v29,v29 + (5 -3) );v29=v29 + 2 ;v48=1;end end end local function v34() local v51=0;local v52;local v53;local v54;local v55;while true do if (v51==1) then return (v55 * 16777216) + (v54 * 65536) + (v53 * 256) + v52 ;end if (v51==0) then v52,v53,v54,v55=v9(v27,v29,v29 + (5 -2) );v29=v29 + 4 ;v51=1;end end end local function v35() local v56=v34();local v57=v34();local v58=1;local v59=(v31(v57,2 -1 ,20) * (2^(651 -(555 + 64)))) + v56 ;local v60=v31(v57,21,31);local v61=((v31(v57,32)==1) and  -1) or 1 ;if (v60==0) then if (v59==0) then return v61 * 0 ;else v60=1;v58=931 -(857 + 74) ;end elseif (v60==2047) then return ((v59==0) and (v61 * (1/0))) or (v61 * NaN) ;end return v16(v61,v60-1023 ) * (v58 + (v59/(2^(620 -(367 + 201))))) ;end local function v36(v62) local v63=0;local v64;local v65;while true do if (v63==0) then v64=nil;if  not v62 then local v115=0;while true do if (v115==0) then v62=v34();if (v62==(927 -(214 + 713))) then return "";end break;end end end v63=1;end if (3==v63) then return v14(v65);end if (v63==1) then v64=v11(v27,v29,(v29 + v62) -1 );v29=v29 + v62 ;v63=2;end if (v63==2) then v65={};for v108=1, #v64 do v65[v108]=v10(v9(v11(v64,v108,v108)));end v63=3;end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v66={};local v67={};local v68={};local v69={v66,v67,nil,v68};local v70=v34();local v71={};for v79=1638 -(1523 + 114) ,v70 do local v80=0;local v81;local v82;while true do if (v80==1) then if (v81==1) then v82=v32()~=0 ;elseif (v81==(2 + 0)) then v82=v35();elseif (v81==3) then v82=v36();end v71[v79]=v82;break;end if (0==v80) then v81=v32();v82=nil;v80=1;end end end v69[3 -0 ]=v32();for v83=1066 -(68 + 997) ,v34() do local v84=0;local v85;while true do if (v84==0) then v85=v32();if (v31(v85,1,1)==0) then local v118=v31(v85,1272 -(226 + 1044) ,3);local v119=v31(v85,4,6);local v120={v33(),v33(),nil,nil};if (v118==0) then v120[3]=v33();v120[4]=v33();elseif (v118==1) then v120[3]=v34();elseif (v118==2) then v120[3]=v34() -((8 -6)^16) ;elseif (v118==3) then local v133=0;while true do if (v133==0) then v120[3]=v34() -(2^16) ;v120[4]=v33();break;end end end if (v31(v119,1,1)==1) then v120[2]=v71[v120[2]];end if (v31(v119,2,2)==1) then v120[3]=v71[v120[3]];end if (v31(v119,3,120 -(32 + 85) )==1) then v120[4]=v71[v120[4]];end v66[v83]=v120;end break;end end end for v86=1,v34() do v67[v86-1 ]=v39();end return v69;end local function v40(v73,v74,v75) local v76=v73[1];local v77=v73[2];local v78=v73[3];return function(...) local v88=v76;local v89=v77;local v90=v78;local v91=v38;local v92=1 + 0 ;local v93= -1;local v94={};local v95={...};local v96=v20("#",...) -1 ;local v97={};local v98={};for v106=0,v96 do if (v106>=v90) then v94[v106-v90 ]=v95[v106 + 1 ];else v98[v106]=v95[v106 + 1 ];end end local v99=(v96-v90) + 1 ;local v100;local v101;while true do local v107=0;while true do if (v107==0) then v100=v88[v92];v101=v100[1];v107=1;end if (v107==1) then if (v101<=40) then if (v101<=19) then if (v101<=9) then if (v101<=4) then if (v101<=1) then if (v101>0) then v98[v100[2]]=v98[v100[1 + 2 ]] + v100[961 -(892 + 65) ] ;else local v137=v100[2];local v138,v139=v91(v98[v137](v21(v98,v137 + 1 ,v100[3])));v93=(v139 + v137) -1 ;local v140=0;for v213=v137,v93 do local v214=0;while true do if (v214==0) then v140=v140 + 1 ;v98[v213]=v138[v140];break;end end end end elseif (v101<=(4 -2)) then local v141=v100[2];do return v21(v98,v141,v93);end elseif (v101==3) then if v98[v100[2]] then v92=v92 + 1 ;else v92=v100[3];end else local v222=v100[2];v98[v222]=v98[v222](v98[v222 + 1 ]);end elseif (v101<=(10 -4)) then if (v101==5) then v98[v100[2]][v98[v100[3]]]=v98[v100[4]];else local v144=v100[2];v98[v144](v98[v144 + 1 ]);end elseif (v101<=7) then v98[v100[2]]=v74[v100[3]];elseif (v101==8) then v98[v100[2]][v98[v100[3]]]=v100[4];else v98[v100[2]]=v100[3];end elseif (v101<=(25 -11)) then if (v101<=11) then if (v101>10) then v98[v100[2]]=v98[v100[3]] + v100[4] ;else v98[v100[2]]=v98[v100[3]];end elseif (v101<=(362 -(87 + 263))) then v98[v100[2]]=v75[v100[3]];elseif (v101>13) then local v228=0;local v229;local v230;local v231;local v232;while true do if (1==v228) then v93=(v231 + v229) -1 ;v232=0;v228=2;end if (2==v228) then for v371=v229,v93 do local v372=0;while true do if (v372==0) then v232=v232 + 1 ;v98[v371]=v230[v232];break;end end end break;end if (v228==0) then v229=v100[182 -(67 + 113) ];v230,v231=v91(v98[v229](v21(v98,v229 + 1 ,v100[3 + 0 ])));v228=1;end end else v98[v100[2]]= not v98[v100[3]];end elseif (v101<=16) then if (v101==15) then local v152=0;local v153;while true do if (v152==0) then v153=v100[2];v98[v153](v21(v98,v153 + (2 -1) ,v100[3 + 0 ]));break;end end else v98[v100[2]]={};end elseif (v101<=17) then v98[v100[2]]=v98[v100[3]];elseif (v101>18) then local v234=v100[2];do return v98[v234](v21(v98,v234 + 1 ,v100[3]));end else v98[v100[2]]();end elseif (v101<=29) then if (v101<=24) then if (v101<=21) then if (v101>20) then v98[v100[2]]= #v98[v100[3]];else v98[v100[2]][v100[3]]=v98[v100[4]];end elseif (v101<=22) then do return v98[v100[2]]();end elseif (v101>23) then local v235=0;local v236;while true do if (v235==0) then v236=v100[7 -5 ];v98[v236](v21(v98,v236 + 1 ,v93));break;end end else v92=v100[3];end elseif (v101<=26) then if (v101==25) then local v160=0;local v161;local v162;while true do if (v160==0) then v161=v100[2];v162=v98[v100[3]];v160=1;end if (1==v160) then v98[v161 + 1 ]=v162;v98[v161]=v162[v100[4]];break;end end else v98[v100[2]][v98[v100[3]]]=v100[956 -(802 + 150) ];end elseif (v101<=27) then local v165=0;local v166;local v167;local v168;while true do if (v165==0) then v166=v89[v100[3]];v167=nil;v165=1;end if (v165==1) then v168={};v167=v18({},{[v7("\180\185\39\141\143\131\54","\227\235\230\78")]=function(v327,v328) local v329=v168[v328];return v329[1][v329[2]];end,[v7("\100\140\38\10\235\217\71\27\94\171","\127\59\211\72\111\156\176\41")]=function(v330,v331,v332) local v333=0;local v334;while true do if (v333==0) then v334=v168[v331];v334[1][v334[2]]=v332;break;end end end});v165=2;end if (2==v165) then for v335=1,v100[4] do local v336=0;local v337;while true do if (v336==0) then v92=v92 + (2 -1) ;v337=v88[v92];v336=1;end if (v336==1) then if (v337[1]==10) then v168[v335-(1 -0) ]={v98,v337[3 + 0 ]};else v168[v335-1 ]={v74,v337[3]};end v97[ #v97 + 1 ]=v168;break;end end end v98[v100[2]]=v40(v166,v167,v75);break;end end elseif (v101==28) then local v238=v100[2];local v239={};for v302=998 -(915 + 82) , #v97 do local v303=v97[v302];for v338=0, #v303 do local v339=0;local v340;local v341;local v342;while true do if (v339==0) then v340=v303[v338];v341=v340[1];v339=1;end if (v339==1) then v342=v340[2];if ((v341==v98) and (v342>=v238)) then local v403=0;while true do if (v403==0) then v239[v342]=v341[v342];v340[1]=v239;break;end end end break;end end end end else local v240=v100[5 -3 ];local v241=v98[v240];local v242=v98[v240 + 2 ];if (v242>0) then if (v241>v98[v240 + 1 ]) then v92=v100[3];else v98[v240 + 2 + 1 ]=v241;end elseif (v241<v98[v240 + (1 -0) ]) then v92=v100[3];else v98[v240 + 3 ]=v241;end end elseif (v101<=34) then if (v101<=31) then if (v101==(1217 -(1069 + 118))) then local v169=v100[2];local v170,v171=v91(v98[v169](v98[v169 + 1 ]));v93=(v171 + v169) -1 ;local v172=0;for v215=v169,v93 do v172=v172 + 1 ;v98[v215]=v170[v172];end else local v173=0;local v174;local v175;local v176;while true do if (v173==2) then for v343=2 -1 ,v100[4] do v92=v92 + 1 ;local v344=v88[v92];if (v344[1]==10) then v176[v343-1 ]={v98,v344[3]};else v176[v343-1 ]={v74,v344[3]};end v97[ #v97 + 1 ]=v176;end v98[v100[2]]=v40(v174,v175,v75);break;end if (v173==0) then v174=v89[v100[3]];v175=nil;v173=1;end if (1==v173) then v176={};v175=v18({},{[v7("\184\220\79\78\74\130\251","\46\231\131\38\32")]=function(v346,v347) local v348=0;local v349;while true do if (0==v348) then v349=v176[v347];return v349[1][v349[2]];end end end,[v7("\137\142\84\75\0\56\166\80\179\169","\52\214\209\58\46\119\81\200")]=function(v350,v351,v352) local v353=0;local v354;while true do if (v353==0) then v354=v176[v351];v354[1][v354[2]]=v352;break;end end end});v173=2;end end end elseif (v101<=32) then v98[v100[2]]();elseif (v101>33) then local v243=0;local v244;while true do if (0==v243) then v244=v100[2];do return v21(v98,v244,v93);end break;end end else local v245=v100[2];local v246,v247=v91(v98[v245](v21(v98,v245 + 1 ,v93)));v93=(v247 + v245) -1 ;local v248=0 -0 ;for v306=v245,v93 do v248=v248 + 1 ;v98[v306]=v246[v248];end end elseif (v101<=37) then if (v101<=35) then local v177=0;local v178;while true do if (v177==0) then v178=v100[2];v98[v178](v21(v98,v178 + 1 ,v100[3]));break;end end elseif (v101==36) then v98[v100[2]]=v100[3] + v98[v100[4]] ;else v98[v100[2]]= #v98[v100[3]];end elseif (v101<=38) then if  not v98[v100[2]] then v92=v92 + 1 ;else v92=v100[3];end elseif (v101==39) then do return;end else local v252=v100[2];local v253=v98[v252];for v310=v252 + 1 ,v93 do v15(v253,v98[v310]);end end elseif (v101<=60) then if (v101<=50) then if (v101<=45) then if (v101<=(8 + 34)) then if (v101==41) then local v179=0;local v180;local v181;local v182;while true do if (0==v179) then v180=v100[3 -1 ];v181=v98[v180 + 2 ];v179=1;end if (v179==1) then v182=v98[v180] + v181 ;v98[v180]=v182;v179=2;end if (v179==2) then if (v181>(0 + 0)) then if (v182<=v98[v180 + 1 ]) then local v393=0;while true do if (v393==0) then v92=v100[3];v98[v180 + 3 ]=v182;break;end end end elseif (v182>=v98[v180 + 1 ]) then local v394=0;while true do if (v394==0) then v92=v100[3];v98[v180 + 3 ]=v182;break;end end end break;end end else local v183=v100[2];v98[v183]=v98[v183](v21(v98,v183 + (792 -(368 + 423)) ,v93));end elseif (v101<=43) then if (v98[v100[2]]==v100[4]) then v92=v92 + 1 ;else v92=v100[3];end elseif (v101==44) then v98[v100[2]]=v100[3];else v98[v100[2]]=v98[v100[3]]%v100[4] ;end elseif (v101<=47) then if (v101==46) then local v185=0;local v186;while true do if (v185==0) then v186=v100[2];v98[v186]=v98[v186](v21(v98,v186 + 1 ,v100[9 -6 ]));break;end end elseif v98[v100[2]] then v92=v92 + (19 -(10 + 8)) ;else v92=v100[3];end elseif (v101<=48) then local v187=v100[2];local v188={};for v218=1, #v97 do local v219=v97[v218];for v259=0, #v219 do local v260=v219[v259];local v261=v260[3 -2 ];local v262=v260[444 -(416 + 26) ];if ((v261==v98) and (v262>=v187)) then v188[v262]=v261[v262];v260[3 -2 ]=v188;end end end elseif (v101==49) then local v263=v100[2];local v264,v265=v91(v98[v263](v98[v263 + 1 + 0 ]));v93=(v265 + v263) -1 ;local v266=0;for v316=v263,v93 do local v317=0;while true do if (v317==0) then v266=v266 + 1 ;v98[v316]=v264[v266];break;end end end else do return;end end elseif (v101<=55) then if (v101<=52) then if (v101>51) then do return v98[v100[2]]();end else v98[v100[2]]=v98[v100[3]]%v98[v100[4]] ;end elseif (v101<=(93 -40)) then v98[v100[440 -(145 + 293) ]]={};elseif (v101==54) then v98[v100[432 -(44 + 386) ]]=v100[3] + v98[v100[4]] ;else local v268=0;local v269;while true do if (v268==0) then v269=v100[2];v98[v269]=v98[v269](v21(v98,v269 + 1 ,v100[1489 -(998 + 488) ]));break;end end end elseif (v101<=57) then if (v101>(18 + 38)) then local v191=v100[2];local v192=v98[v191 + 2 ];local v193=v98[v191] + v192 ;v98[v191]=v193;if (v192>0) then if (v193<=v98[v191 + 1 + 0 ]) then local v358=0;while true do if (0==v358) then v92=v100[775 -(201 + 571) ];v98[v191 + (1141 -(116 + 1022)) ]=v193;break;end end end elseif (v193>=v98[v191 + 1 ]) then local v359=0;while true do if (v359==0) then v92=v100[3];v98[v191 + 3 ]=v193;break;end end end else v98[v100[2]]=v75[v100[3]];end elseif (v101<=58) then for v220=v100[8 -6 ],v100[3] do v98[v220]=nil;end elseif (v101>59) then for v318=v100[2],v100[3] do v98[v318]=nil;end else local v270=v100[2];v98[v270](v21(v98,v270 + 1 ,v93));end elseif (v101<=70) then if (v101<=65) then if (v101<=62) then if (v101>61) then local v197=v100[2 + 0 ];do return v98[v197](v21(v98,v197 + 1 ,v100[3]));end else local v198=v100[2];v98[v198]=v98[v198](v21(v98,v198 + 1 ,v93));end elseif (v101<=63) then v98[v100[2]]=v74[v100[3]];elseif (v101==(233 -169)) then v98[v100[2]]=v98[v100[3]]%v98[v100[4]] ;else v98[v100[2]][v98[v100[3]]]=v98[v100[4]];end elseif (v101<=67) then if (v101==(234 -168)) then local v202=0;local v203;while true do if (v202==0) then v203=v100[2];v98[v203](v98[v203 + 1 ]);break;end end elseif (v98[v100[2]]==v100[4]) then v92=v92 + 1 ;else v92=v100[3];end elseif (v101<=68) then local v204=v100[861 -(814 + 45) ];local v205=v98[v204];local v206=v98[v204 + 2 ];if (v206>(0 -0)) then if (v205>v98[v204 + 1 ]) then v92=v100[3];else v98[v204 + 3 ]=v205;end elseif (v205<v98[v204 + 1 ]) then v92=v100[3];else v98[v204 + 3 ]=v205;end elseif (v101==69) then local v275=v100[2];local v276=v98[v100[3]];v98[v275 + 1 ]=v276;v98[v275]=v276[v100[4]];else v98[v100[2]]=v98[v100[3]][v100[4]];end elseif (v101<=75) then if (v101<=72) then if (v101==71) then v98[v100[2]][v100[3]]=v98[v100[4]];elseif (v100[2]==v98[v100[4]]) then v92=v92 + 1 + 0 ;else v92=v100[3];end elseif (v101<=73) then if  not v98[v100[2]] then v92=v92 + 1 ;else v92=v100[3];end elseif (v101>74) then v98[v100[1 + 1 ]]= not v98[v100[3]];else v98[v100[2]]=v98[v100[888 -(261 + 624) ]]%v100[4] ;end elseif (v101<=78) then if (v101<=76) then v98[v100[2]]=v98[v100[3]][v100[4]];elseif (v101==77) then local v286=v100[2];local v287=v98[v286];for v321=v286 + 1 ,v93 do v15(v287,v98[v321]);end else local v288=0;local v289;local v290;local v291;local v292;while true do if (v288==2) then for v381=v289,v93 do local v382=0;while true do if (v382==0) then v292=v292 + 1 ;v98[v381]=v290[v292];break;end end end break;end if (v288==1) then v93=(v291 + v289) -1 ;v292=0 -0 ;v288=2;end if (v288==0) then v289=v100[2];v290,v291=v91(v98[v289](v21(v98,v289 + 1 ,v93)));v288=1;end end end elseif (v101<=79) then local v211=0;local v212;while true do if (v211==0) then v212=v100[2];v98[v212]=v98[v212](v98[v212 + 1 ]);break;end end elseif (v101>80) then v92=v100[3];elseif (v100[2]==v98[v100[4]]) then v92=v92 + 1 ;else v92=v100[3];end v92=v92 + 1 ;break;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q00120C3Q00013Q00204C5Q000200120C000100013Q00204C00010001000300120C000200013Q00204C00020002000400120C000300053Q0006490003000A000100010004173Q000A000100120C000300063Q00204C00040003000700120C000500083Q00204C00050005000900120C000600083Q00204C00060006000A00061B00073Q000100062Q000A3Q00064Q000A8Q000A3Q00044Q000A3Q00014Q000A3Q00024Q000A3Q00053Q00120C000800013Q00204C00080008000B00120C0009000C3Q00120C000A000D3Q00061B000B0001000100052Q000A3Q00074Q000A3Q00094Q000A3Q00084Q000A3Q000A4Q000A3Q000B4Q0011000C000B4Q0016000C00014Q0002000C6Q00323Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q001000025Q001209000300014Q001500045Q001209000500013Q00041D0003002100012Q000700076Q0011000800024Q0007000900014Q0007000A00024Q0007000B00034Q0007000C00044Q0011000D6Q0011000E00063Q00200B000F000600014Q000C000F4Q002A000B3Q00022Q0007000C00034Q0007000D00044Q0011000E00014Q0015000F00014Q0033000F0006000F001036000F0001000F2Q0015001000014Q003300100006001000103600100001001000200B0010001000014Q000D00104Q0021000C6Q002A000A3Q000200204A000A000A00022Q001E0009000A4Q001800073Q00010004390003000500012Q0007000300054Q0011000400024Q003E000300044Q000200036Q00323Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q00061B5Q000100012Q003F8Q0007000100014Q0007000200024Q0007000300024Q001000046Q0007000500034Q001100066Q003C000700076Q000500074Q002800043Q000100204C000400040001001209000500024Q002E000300050002001209000400036Q000200044Q002A00013Q000200264300010018000100040004173Q001800012Q001100016Q001000026Q003E000100024Q000200015Q0004173Q001B00012Q0007000100044Q0016000100014Q000200016Q00323Q00013Q00013Q00093Q0003023Q005F47030F3Q00616E696D4E696E6A6141637469766503043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C6179657203093Q00436861726163746572030E3Q00436861726163746572412Q64656403043Q0057616974026Q00F03F01223Q0006033Q002000013Q0004173Q0020000100120C000100013Q00120C000200013Q00204C0002000200022Q004B000200023Q00101400010002000200120C000100033Q00204C00010001000400204C00010001000500204C00020001000600064900020010000100010004173Q0010000100204C0002000100070020450002000200082Q000400020002000200061B00033Q000100012Q003F7Q00061B00040001000100012Q003F7Q00061B00050002000100012Q003F7Q00061B00060003000100052Q000A3Q00024Q003F8Q000A3Q00034Q000A3Q00044Q000A3Q00054Q0011000700064Q00120007000100012Q003000015Q0004173Q0021000100204C00013Q00092Q00323Q00013Q00043Q000C3Q0003043Q0067616D65030A3Q005374617274657247756903073Q00536574436F726503103Q0047FFD2303D7BEED5321A77FBC83D1C7A03053Q0073149ABC5403053Q00E5D699208403063Q00DFB1BFED4CE103043Q0062CCB82E03073Q00DB36A9C05A305003083Q006D5712245D4B0F2B03043Q0045292260026Q00144002193Q00120C000200013Q00204C0002000200020020450002000200032Q000700045Q001209000500043Q001209000600054Q002E0004000600022Q001000053Q00032Q000700065Q001209000700063Q001209000800074Q002E0006000800022Q0005000500064Q000700065Q001209000700083Q001209000800094Q002E0006000800022Q00050005000600012Q000700065Q0012090007000A3Q0012090008000B4Q002E00060008000200200800050006000C2Q00230002000500012Q00323Q00017Q00203Q00028Q00027Q004003043Q006A756D7003083Q004A756D70416E696D030B3Q00416E696D6174696F6E496403293Q00B4D7C31A5864F3D4C01D4C39B3C1DB051A65BFCCDA450338AFC6C3455D22B89E805A5573E99081535603063Q004BDCA3B76A6203053Q00636C696D6203093Q00436C696D62416E696D03293Q000AAE9F27834DF59C20CE4CA88435D50DA2C534D60FF58A24CA07AEC468D006E7DC678E5AE8DD678C5403053Q00B962DAEB57026Q000840026Q00F03F03043Q0077616C6B03083Q0057616C6B416E696D03293Q00C32833F684E5842B30F190B8C43E2BE9C6E4C8332AA9DFB9D83933A981A3CF6170B689F2926B74B68703063Q00CAAB5C4786BE2Q033Q0072756E03073Q0052756E416E696D03293Q0021D53898738E639F3ED6629A26C32087318F2F87248E2D9B3AC438C776C828D57E917BD07F907AD97A03043Q00E849A14C03043Q0066612Q6C03083Q0046612Q6C416E696D03293Q00B3CD564D44F496554A09F5CB4D5F12B4C10C5E11B696434E0DBECD0D0217BF84150D49E38B1B0A4FED03053Q007EDBB9223D03043Q0069646C65030A3Q00416E696D6174696F6E3103293Q0004DA4A622438BCF01BD910607175FFE814805D7D7338F2F41FCB4A3D217EF7BA5B9E09252A25A2B35E03083Q00876CAE3E121E1793030A3Q00416E696D6174696F6E3203293Q00BEFD3EDB42E17CD0A1FE64D917AC3FC8AEA729C415E132D4A5EC3E8447A7379AE1B97D934DFB6A97E103083Q00A7D6894AAB78CE5301403Q001209000100013Q00264300010012000100020004173Q0012000100204C00023Q000300204C0002000200042Q000700035Q001209000400063Q001209000500074Q002E00030005000200101400020005000300204C00023Q000800204C0002000200092Q000700035Q0012090004000A3Q0012090005000B4Q002E0003000500020010140002000500030012090001000C3Q002643000100230001000D0004173Q0023000100204C00023Q000E00204C00020002000F2Q000700035Q001209000400103Q001209000500114Q002E00030005000200101400020005000300204C00023Q001200204C0002000200132Q000700035Q001209000400143Q001209000500154Q002E000300050002001014000200050003001209000100023Q0026430001002D0001000C0004173Q002D000100204C00023Q001600204C0002000200172Q000700035Q001209000400183Q001209000500194Q002E0003000500020010140002000500030004173Q003F000100264300010001000100010004173Q0001000100204C00023Q001A00204C00020002001B2Q000700035Q0012090004001C3Q0012090005001D4Q002E00030005000200101400020005000300204C00023Q001A00204C00020002001E2Q000700035Q0012090004001F3Q001209000500204Q002E0003000500020010140002000500030012090001000D3Q0004173Q000100012Q00323Q00017Q00203Q00028Q00027Q004003043Q006A756D7003083Q004A756D70416E696D030B3Q00416E696D6174696F6E4964032A3Q0083E4264DA2E8C4E7254AB6B584F23E52E0E988FF3F12F9B498F52612A7AE8FAD6008A9F7DAA96505ABF703063Q00C7EB90523D9803043Q0066612Q6C03083Q0046612Q6C416E696D032A3Q000F02AD3B5D59F63C1001F7390814B5241F58BA240A59B8381413AD64581FBD765543E87B564FEC735E4403043Q004B6776D9026Q00F03F026Q00084003043Q0077616C6B03083Q0057616C6B416E696D032A3Q00CF406404E35188436703F70CC8567C1BA150C45B7D5BB80DD451645BE617C3092241E84E95042241EE4903063Q007EA7341074D92Q033Q0072756E03073Q0052756E416E696D032A3Q00C03A3490EE56B3DF3937CEA616FEC42138CEB716F1872F3393B10DB3972724DDE64CAD987F79D8E04EA903073Q009CA84E40E0D47903053Q00636C696D6203093Q00436C696D62416E696D032A3Q000FFAB1DE5DA1EAD910F9EBDC08ECA9C11FA0A6C10AA1A4DD14EBB18158E7A19355BBF49E56B7F79950B603043Q00AE678EC503043Q0069646C65030A3Q00416E696D6174696F6E31032A3Q005E3C4B287F11B7413F48763751FA5A2747762651F519294C2B204AB709215B65770BA90679066E7C0BA903073Q009836483F58453E030A3Q00416E696D6174696F6E32032A3Q00DCD0FA4C8E8BA14BC3D3A04EDBC6E253CC8AED53D98BEF4FC7C1FA138BCDEA018691BF0C859DB90E819303043Q003CB4A48E01563Q001209000100014Q003C000200023Q00264300010002000100010004173Q00020001001209000200013Q0026430002001E000100020004173Q001E0001001209000300013Q00264300030019000100010004173Q0019000100204C00043Q000300204C0004000400042Q000700055Q001209000600063Q001209000700074Q002E00050007000200101400040005000500204C00043Q000800204C0004000400092Q000700055Q0012090006000A3Q0012090007000B4Q002E0005000700020010140004000500050012090003000C3Q002643000300080001000C0004173Q000800010012090002000D3Q0004173Q001E00010004173Q00080001002643000200370001000C0004173Q00370001001209000300013Q00264300030032000100010004173Q0032000100204C00043Q000E00204C00040004000F2Q000700055Q001209000600103Q001209000700114Q002E00050007000200101400040005000500204C00043Q001200204C0004000400132Q000700055Q001209000600143Q001209000700154Q002E0005000700020010140004000500050012090003000C3Q002643000300210001000C0004173Q00210001001209000200023Q0004173Q003700010004173Q00210001002643000200410001000D0004173Q0041000100204C00033Q001600204C0003000300172Q000700045Q001209000500183Q001209000600194Q002E0004000600020010140003000500040004173Q0055000100264300020005000100010004173Q0005000100204C00033Q001A00204C00030003001B2Q000700045Q0012090005001C3Q0012090006001D4Q002E00040006000200101400030005000400204C00033Q001A00204C00030003001E2Q000700045Q0012090005001F3Q001209000600204Q002E0004000600020010140003000500040012090002000C3Q0004173Q000500010004173Q005500010004173Q000200012Q00323Q00017Q00123Q00028Q00026Q00F03F030C3Q0057616974466F724368696C6403073Q0079500C2426F91703073Q0072383E6549478D03023Q005F47030F3Q00616E696D4E696E6A6141637469766503173Q0096E0D5CEB9A9FACAB1E4DAD0B1E6D5D7F8C5D4C5BCECDF03043Q00A4D889BB03123Q00F09F8EAD20486578706C6F697420F09F8EAD03053Q007072696E74031C3Q00F3F621BEBFF705D5A61FBBA8F40A92E73FBBABFF1FDBE93FA1E8B04503073Q006BB28651D2C69E03173Q000A0B91C3BE782F8CCFA7391A8BC9A42B4EB6C9EA0A5FD703053Q00CA586EE2A603133Q00F09F8EAD2Q20486578706C6F697420F09F8EAD03223Q00F10A91F2DED7068CF08AC2018BFACBD7068DF9D9831B8DB7CEC60983E2C6D741CCB903053Q00AAA36FE29700553Q0012093Q00014Q003C000100023Q000E500002004E00013Q0004173Q004E000100264300010004000100010004173Q000400012Q000700035Q0020450003000300032Q0007000500013Q001209000600043Q001209000700056Q000500074Q002A00033Q00022Q0011000200033Q00120C000300063Q00204C0003000300070006030003003300013Q0004173Q00330001001209000300013Q000E500002001D000100030004173Q001D00012Q0007000400024Q0007000500013Q001209000600083Q001209000700094Q002E0005000700020012090006000A4Q00230004000600010004173Q0054000100264300030013000100010004173Q00130001001209000400013Q0026430004002C000100010004173Q002C000100120C0005000B4Q0007000600013Q0012090007000C3Q0012090008000D6Q000600084Q001800053Q00012Q0007000500034Q0011000600024Q0042000500020001001209000400023Q00264300040020000100020004173Q00200001001209000300023Q0004173Q001300010004173Q002000010004173Q001300010004173Q00540001001209000300013Q0026430003003E000100020004173Q003E00012Q0007000400024Q0007000500013Q0012090006000E3Q0012090007000F4Q002E000500070002001209000600104Q00230004000600010004173Q0054000100264300030034000100010004173Q0034000100120C0004000B4Q0007000500013Q001209000600113Q001209000700126Q000500074Q001800043Q00012Q0007000400044Q0011000500024Q0042000400020001001209000300023Q0004173Q003400010004173Q005400010004173Q000400010004173Q005400010026433Q0002000100010004173Q00020001001209000100014Q003C000200023Q0012093Q00023Q0004173Q000200012Q00323Q00017Q00",v17(),...);
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
