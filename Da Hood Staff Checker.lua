local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\152\107","\56\182\69\73\191\182"),function(v42) if (v9(v42,2)==81) then local v93=0;while true do if (0==v93) then v30=v8(v11(v42,1,2 -1 ));return "";end end else local v94=0;local v95;while true do if (v94==0) then v95=v10(v8(v42,16));if v30 then local v124=0;local v125;while true do if (0==v124) then v125=v13(v95,v30);v30=nil;v124=1;end if (v124==1) then return v125;end end else return v95;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v96=0;local v97;while true do if (v96==0) then v97=(v43/(2^(v44-1)))%((5 -3)^(((v45-1) -(v44-1)) + (1 -0))) ;return v97-(v97%1) ;end end else local v98=0;local v99;while true do if (0==v98) then v99=2^(v44-1) ;return (((v43%(v99 + v99))>=v99) and 1) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end if (v46==1) then return v47;end end end local function v33() local v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;return (v49 * 256) + v48 ;end local function v34() local v50=0;local v51;local v52;local v53;local v54;while true do if (v50==1) then return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end if (0==v50) then v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;v50=1;end end end local function v35() local v55=0;local v56;local v57;local v58;local v59;local v60;local v61;while true do if (v55==0) then v56=v34();v57=v34();v55=1;end if (v55==3) then if (v60==0) then if (v59==0) then return v61 * 0 ;else local v126=0;while true do if (v126==0) then v60=932 -(857 + 74) ;v58=0;break;end end end elseif (v60==2047) then return ((v59==(568 -(367 + 201))) and (v61 * (1/(927 -(214 + 713))))) or (v61 * NaN) ;end return v16(v61,v60-1023 ) * (v58 + (v59/(2^52))) ;end if (v55==2) then v60=v31(v57,21,31);v61=((v31(v57,32)==1) and  -(620 -(555 + 64))) or 1 ;v55=3;end if (1==v55) then v58=1;v59=(v31(v57,2 -1 ,20) * (2^32)) + v56 ;v55=2;end end end local function v36(v62) local v63=0;local v64;local v65;while true do if (v63==3) then return v14(v65);end if (1==v63) then v64=v11(v27,v29,(v29 + v62) -1 );v29=v29 + v62 ;v63=2;end if (v63==2) then v65={};for v103=1 + 0 , #v64 do v65[v103]=v10(v9(v11(v64,v103,v103)));end v63=3;end if (v63==0) then v64=nil;if  not v62 then local v117=0;while true do if (v117==0) then v62=v34();if (v62==0) then return "";end break;end end end v63=1;end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v66=0;local v67;local v68;local v69;local v70;local v71;local v72;while true do if (v66==2) then for v105=1,v34() do local v106=v32();if (v31(v106,1638 -(1523 + 114) ,1)==0) then local v120=0;local v121;local v122;local v123;while true do if (1==v120) then v123={v33(),v33(),nil,nil};if (v121==0) then v123[3]=v33();v123[4]=v33();elseif (v121==(1066 -(68 + 997))) then v123[3]=v34();elseif (v121==2) then v123[3]=v34() -(2^(1286 -(226 + 1044))) ;elseif (v121==3) then local v139=0;while true do if (v139==0) then v123[3]=v34() -(2^16) ;v123[4]=v33();break;end end end v120=2;end if (3==v120) then if (v31(v122,3,3)==1) then v123[4]=v72[v123[4]];end v67[v105]=v123;break;end if (0==v120) then v121=v31(v106,2,3 + 0 );v122=v31(v106,5 -1 ,6);v120=1;end if (v120==2) then if (v31(v122,1,1)==1) then v123[2]=v72[v123[2]];end if (v31(v122,2,2)==1) then v123[3]=v72[v123[3]];end v120=3;end end end end for v107=1,v34() do v68[v107-1 ]=v39();end return v70;end if (v66==1) then v71=v34();v72={};for v109=1,v71 do local v110=0;local v111;local v112;while true do if (v110==0) then v111=v32();v112=nil;v110=1;end if (v110==1) then if (v111==1) then v112=v32()~=(877 -(282 + 595)) ;elseif (v111==2) then v112=v35();elseif (v111==3) then v112=v36();end v72[v109]=v112;break;end end end v70[3]=v32();v66=2;end if (v66==0) then v67={};v68={};v69={};v70={v67,v68,nil,v69};v66=1;end end end local function v40(v73,v74,v75) local v76=v73[1];local v77=v73[2];local v78=v73[3];return function(...) local v79=v76;local v80=v77;local v81=v78;local v82=v38;local v83=1;local v84= -1;local v85={};local v86={...};local v87=v20("#",...) -(4 -3) ;local v88={};local v89={};for v100=117 -(32 + 85) ,v87 do if (v100>=v81) then v85[v100-v81 ]=v86[v100 + 1 + 0 ];else v89[v100]=v86[v100 + 1 ];end end local v90=(v87-v81) + 1 + 0 ;local v91;local v92;while true do local v101=0;while true do if (v101==1) then if (v92<=50) then if (v92<=24) then if (v92<=11) then if (v92<=5) then if (v92<=2) then if (v92<=0) then v89[v91[2]][v89[v91[3]]]=v91[4];elseif (v92>1) then v89[v91[2]][v89[v91[3]]]=v89[v91[961 -(892 + 65) ]];else local v192=0;local v193;local v194;local v195;local v196;while true do if (v192==2) then for v436=v193,v84 do local v437=0;while true do if (v437==0) then v196=v196 + 1 ;v89[v436]=v194[v196];break;end end end break;end if (v192==1) then v84=(v195 + v193) -(2 -1) ;v196=0;v192=2;end if (v192==0) then v193=v91[2];v194,v195=v82(v89[v193](v21(v89,v193 + 1 ,v91[3])));v192=1;end end end elseif (v92<=3) then v74[v91[3]]=v89[v91[2]];elseif (v92==4) then do return v89[v91[3 -1 ]]();end else v89[v91[2]]=v91[3] + v89[v91[4]] ;end elseif (v92<=8) then if (v92<=6) then v89[v91[2]]=v89[v91[3]] + v91[7 -3 ] ;elseif (v92>(357 -(87 + 263))) then local v198=v91[2];v89[v198](v21(v89,v198 + 1 ,v84));else v89[v91[2]]= not v89[v91[3]];end elseif (v92<=9) then local v145=0;local v146;local v147;while true do if (v145==0) then v146=v91[3];v147=v89[v146];v145=1;end if (v145==1) then for v369=v146 + 1 ,v91[4] do v147=v147   .. v89[v369] ;end v89[v91[182 -(67 + 113) ]]=v147;break;end end elseif (v92==10) then v89[v91[2]]=v89[v91[3]];else v89[v91[2]]=v89[v91[3 + 0 ]]%v91[4] ;end elseif (v92<=17) then if (v92<=14) then if (v92<=12) then v74[v91[3]]=v89[v91[2]];elseif (v92==13) then do return v89[v91[2]];end else v89[v91[2]]={};end elseif (v92<=(36 -21)) then local v150=v91[2];v89[v150]=v89[v150](v21(v89,v150 + 1 ,v91[3]));elseif (v92==16) then local v204=v91[2];v89[v204](v89[v204 + 1 ]);else v89[v91[2]]= #v89[v91[3]];end elseif (v92<=20) then if (v92<=18) then v89[v91[2]]=v89[v91[3 + 0 ]][v91[4]];elseif (v92==19) then v89[v91[2]][v91[11 -8 ]]=v91[4];else local v208=0;local v209;local v210;local v211;local v212;while true do if (v208==2) then for v438=v209,v84 do local v439=0;while true do if (0==v439) then v212=v212 + 1 ;v89[v438]=v210[v212];break;end end end break;end if (1==v208) then v84=(v211 + v209) -1 ;v212=952 -(802 + 150) ;v208=2;end if (0==v208) then v209=v91[2];v210,v211=v82(v89[v209](v21(v89,v209 + 1 ,v91[3])));v208=1;end end end elseif (v92<=22) then if (v92==21) then v89[v91[2]]=v91[3] + v89[v91[10 -6 ]] ;else local v214=0;local v215;local v216;local v217;while true do if (0==v214) then v215=v91[2];v216={v89[v215](v21(v89,v215 + 1 ,v84))};v214=1;end if (1==v214) then v217=0;for v440=v215,v91[4] do local v441=0;while true do if (v441==0) then v217=v217 + 1 ;v89[v440]=v216[v217];break;end end end break;end end end elseif (v92>23) then v89[v91[2]]=v89[v91[3]] + v91[4] ;else v89[v91[2]]=v91[5 -2 ]~=0 ;end elseif (v92<=37) then if (v92<=30) then if (v92<=27) then if (v92<=25) then local v154=0;local v155;local v156;local v157;while true do if (v154==2) then if (v156>0) then if (v157<=v89[v155 + 1 ]) then local v481=0;while true do if (v481==0) then v83=v91[3 + 0 ];v89[v155 + 3 ]=v157;break;end end end elseif (v157>=v89[v155 + 1 ]) then local v482=0;while true do if (0==v482) then v83=v91[3];v89[v155 + (1000 -(915 + 82)) ]=v157;break;end end end break;end if (v154==0) then v155=v91[2];v156=v89[v155 + 2 ];v154=1;end if (v154==1) then v157=v89[v155] + v156 ;v89[v155]=v157;v154=2;end end elseif (v92>26) then v89[v91[2]]=v74[v91[8 -5 ]];else local v222=0;local v223;while true do if (v222==0) then v223=v91[2];do return v89[v223](v21(v89,v223 + 1 ,v91[2 + 1 ]));end break;end end end elseif (v92<=28) then v89[v91[2]]=v89[v91[3]][v91[4]];elseif (v92>29) then local v224=v91[2];local v225={v89[v224](v89[v224 + (1 -0) ])};local v226=0;for v347=v224,v91[4] do local v348=0;while true do if (v348==0) then v226=v226 + 1 ;v89[v347]=v225[v226];break;end end end elseif  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=(1220 -(1069 + 118))) then if (v92<=31) then v89[v91[2]][v91[3]]=v91[4];elseif (v92==(72 -40)) then local v227=0;local v228;while true do if (v227==0) then v228=v91[2];do return v21(v89,v228,v84);end break;end end else local v229=0;local v230;local v231;while true do if (v229==1) then for v444=v230 + 1 ,v91[4] do v231=v231   .. v89[v444] ;end v89[v91[3 -1 ]]=v231;break;end if (v229==0) then v230=v91[3];v231=v89[v230];v229=1;end end end elseif (v92<=(7 + 28)) then if (v92>34) then local v232=0;local v233;local v234;while true do if (1==v232) then for v445=v233 + 1 ,v84 do v15(v234,v89[v445]);end break;end if (v232==0) then v233=v91[2];v234=v89[v233];v232=1;end end else local v235=v91[2];v89[v235]=v89[v235](v21(v89,v235 + 1 ,v91[3]));end elseif (v92==36) then v83=v91[4 -1 ];else local v238=0;local v239;local v240;local v241;while true do if (v238==1) then v241=0;for v446=v239,v91[4] do local v447=0;while true do if (v447==0) then v241=v241 + 1 ;v89[v446]=v240[v241];break;end end end break;end if (v238==0) then v239=v91[2];v240={v89[v239](v89[v239 + 1 ])};v238=1;end end end elseif (v92<=43) then if (v92<=40) then if (v92<=(38 + 0)) then local v162=v91[2];local v163=v91[4];local v164=v162 + 2 ;local v165={v89[v162](v89[v162 + (792 -(368 + 423)) ],v89[v164])};for v187=1,v163 do v89[v164 + v187 ]=v165[v187];end local v166=v165[1];if v166 then local v242=0;while true do if (v242==0) then v89[v164]=v166;v83=v91[3];break;end end else v83=v83 + 1 ;end elseif (v92==39) then do return v89[v91[2]]();end else v89[v91[2]]= #v89[v91[3]];end elseif (v92<=41) then do return;end elseif (v92>42) then v89[v91[2]][v89[v91[3]]]=v91[4];else v89[v91[2]][v89[v91[3]]]=v89[v91[4]];end elseif (v92<=46) then if (v92<=44) then local v167=0;local v168;local v169;while true do if (1==v167) then v89[v168 + 1 ]=v169;v89[v168]=v169[v91[4]];break;end if (v167==0) then v168=v91[2];v169=v89[v91[3]];v167=1;end end elseif (v92>45) then v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;else local v249=0;local v250;local v251;local v252;while true do if (v249==0) then v250=v91[6 -4 ];v251={v89[v250](v21(v89,v250 + 1 ,v84))};v249=1;end if (v249==1) then v252=18 -(10 + 8) ;for v448=v250,v91[4] do v252=v252 + 1 ;v89[v448]=v251[v252];end break;end end end elseif (v92<=48) then if (v92==47) then local v253=0;local v254;local v255;local v256;while true do if (v253==1) then v256=v89[v254] + v255 ;v89[v254]=v256;v253=2;end if (v253==2) then if (v255>0) then if (v256<=v89[v254 + 1 ]) then local v500=0;while true do if (v500==0) then v83=v91[3];v89[v254 + 3 ]=v256;break;end end end elseif (v256>=v89[v254 + 1 ]) then v83=v91[3];v89[v254 + 3 ]=v256;end break;end if (v253==0) then v254=v91[7 -5 ];v255=v89[v254 + 2 ];v253=1;end end else v89[v91[444 -(416 + 26) ]]();end elseif (v92>(156 -107)) then local v257=0;local v258;local v259;local v260;while true do if (v257==1) then v260=v89[v258 + 2 ];if (v260>0) then if (v259>v89[v258 + 1 ]) then v83=v91[3];else v89[v258 + 3 ]=v259;end elseif (v259<v89[v258 + 1 ]) then v83=v91[3];else v89[v258 + 3 ]=v259;end break;end if (v257==0) then v258=v91[2];v259=v89[v258];v257=1;end end else v89[v91[2]]={};end elseif (v92<=(33 + 43)) then if (v92<=63) then if (v92<=56) then if (v92<=53) then if (v92<=51) then do return v89[v91[2]];end elseif (v92>52) then v89[v91[2]]= not v89[v91[3]];else for v354=v91[2],v91[3] do v89[v354]=nil;end end elseif (v92<=54) then v89[v91[2]]=v91[3]~=0 ;elseif (v92==55) then v89[v91[2]]=v75[v91[4 -1 ]];else v89[v91[2]]=v74[v91[3]];end elseif (v92<=59) then if (v92<=57) then local v171=0;local v172;while true do if (0==v171) then v172=v91[2];do return v21(v89,v172,v172 + v91[3] );end break;end end elseif (v92==58) then if (v89[v91[2]]<=v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end else v83=v91[3];end elseif (v92<=61) then if (v92>60) then local v268=0;local v269;while true do if (v268==0) then v269=v89[v91[442 -(145 + 293) ]];if  not v269 then v83=v83 + 1 ;else local v483=0;while true do if (v483==0) then v89[v91[2]]=v269;v83=v91[3];break;end end end break;end end else local v270=v91[2];v89[v270]=v89[v270](v21(v89,v270 + 1 ,v84));end elseif (v92==62) then v89[v91[2]]();else local v272=0;local v273;while true do if (0==v272) then v273=v91[2];v89[v273](v21(v89,v273 + 1 ,v91[3]));break;end end end elseif (v92<=69) then if (v92<=66) then if (v92<=64) then v89[v91[432 -(44 + 386) ]]=v91[3];elseif (v92==65) then local v274=0;local v275;local v276;local v277;local v278;while true do if (2==v274) then for v451=v275,v84 do v278=v278 + 1 ;v89[v451]=v276[v278];end break;end if (v274==1) then v84=(v277 + v275) -1 ;v278=0;v274=2;end if (v274==0) then v275=v91[2];v276,v277=v82(v89[v275](v21(v89,v275 + 1 ,v84)));v274=1;end end elseif v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=67) then local v175=v91[2];v89[v175](v21(v89,v175 + (1487 -(998 + 488)) ,v84));elseif (v92==68) then v89[v91[2]]=v89[v91[3]]%v91[4] ;elseif  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=72) then if (v92<=70) then v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;elseif (v92==71) then local v280=0;local v281;while true do if (v280==0) then v281=v91[2];do return v21(v89,v281,v84);end break;end end else v89[v91[2]][v91[3]]=v89[v91[4]];end elseif (v92<=74) then if (v92==73) then if (v89[v91[1 + 1 ]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end else local v284=0;local v285;while true do if (v284==0) then v285=v89[v91[4]];if  not v285 then v83=v83 + 1 ;else local v484=0;while true do if (0==v484) then v89[v91[2]]=v285;v83=v91[3];break;end end end break;end end end elseif (v92>75) then local v286=0;local v287;local v288;local v289;while true do if (v286==0) then v287=v80[v91[3]];v288=nil;v286=1;end if (v286==2) then for v454=1,v91[4] do v83=v83 + 1 ;local v455=v79[v83];if (v455[1]==10) then v289[v454-1 ]={v89,v455[3]};else v289[v454-1 ]={v74,v455[3]};end v88[ #v88 + 1 ]=v289;end v89[v91[2]]=v40(v287,v288,v75);break;end if (1==v286) then v289={};v288=v18({},{[v7("\118\253\203\37\22\45\77","\159\41\162\162\75\114\72\53")]=function(v457,v458) local v459=0;local v460;while true do if (v459==0) then v460=v289[v458];return v460[1 + 0 ][v460[774 -(201 + 571) ]];end end end,[v7("\43\61\130\57\83\235\93\131\17\26","\231\116\98\236\92\36\130\51")]=function(v461,v462,v463) local v464=0;local v465;while true do if (v464==0) then v465=v289[v462];v465[1][v465[2]]=v463;break;end end end});v286=2;end end else local v290=0;local v291;local v292;while true do if (v290==0) then v291=v91[2];v292={};v290=1;end if (v290==1) then for v466=1, #v88 do local v467=0;local v468;while true do if (v467==0) then v468=v88[v466];for v526=0, #v468 do local v527=0;local v528;local v529;local v530;while true do if (v527==1) then v530=v528[2];if ((v529==v89) and (v530>=v291)) then local v544=0;while true do if (v544==0) then v292[v530]=v529[v530];v528[1]=v292;break;end end end break;end if (v527==0) then v528=v468[v526];v529=v528[1];v527=1;end end end break;end end end break;end end end elseif (v92<=89) then if (v92<=82) then if (v92<=79) then if (v92<=77) then local v177=0;local v178;while true do if (v177==0) then v178=v91[2];v89[v178](v89[v178 + 1 ]);break;end end elseif (v92==78) then local v293=0;local v294;local v295;while true do if (v293==1) then for v469=v294 + 1 ,v84 do v15(v295,v89[v469]);end break;end if (0==v293) then v294=v91[2];v295=v89[v294];v293=1;end end else do return;end end elseif (v92<=80) then v89[v91[2]]=v91[3];elseif (v92>81) then local v296=0;local v297;local v298;local v299;local v300;while true do if (v296==0) then v297=v91[1140 -(116 + 1022) ];v298,v299=v82(v89[v297](v89[v297 + 1 ]));v296=1;end if (v296==2) then for v470=v297,v84 do local v471=0;while true do if (v471==0) then v300=v300 + 1 ;v89[v470]=v298[v300];break;end end end break;end if (v296==1) then v84=(v299 + v297) -1 ;v300=0;v296=2;end end else local v301=v91[2];local v302,v303=v82(v89[v301](v21(v89,v301 + 1 ,v84)));v84=(v303 + v301) -1 ;local v304=0;for v358=v301,v84 do local v359=0;while true do if (v359==0) then v304=v304 + 1 ;v89[v358]=v302[v304];break;end end end end elseif (v92<=85) then if (v92<=83) then local v181=0;local v182;local v183;local v184;while true do if (v181==1) then v184={};v183=v18({},{[v7("\155\38\5\180\65\173\173","\80\196\121\108\218\37\200\213")]=function(v375,v376) local v377=0;local v378;while true do if (v377==0) then v378=v184[v376];return v378[1][v378[8 -6 ]];end end end,[v7("\63\76\12\122\92\7\132\4\118\26","\234\96\19\98\31\43\110")]=function(v379,v380,v381) local v382=0;local v383;while true do if (v382==0) then v383=v184[v380];v383[1 + 0 ][v383[2]]=v381;break;end end end});v181=2;end if (v181==2) then for v384=3 -2 ,v91[4] do v83=v83 + 1 ;local v385=v79[v83];if (v385[3 -2 ]==10) then v184[v384-(860 -(814 + 45)) ]={v89,v385[3]};else v184[v384-(2 -1) ]={v74,v385[1 + 2 ]};end v88[ #v88 + 1 ]=v184;end v89[v91[2]]=v40(v182,v183,v75);break;end if (v181==0) then v182=v80[v91[3]];v183=nil;v181=1;end end elseif (v92>84) then v89[v91[2]]=v89[v91[3]];else local v307=v91[2];local v308=v91[4];local v309=v307 + 1 + 1 ;local v310={v89[v307](v89[v307 + 1 ],v89[v309])};for v362=1,v308 do v89[v309 + v362 ]=v310[v362];end local v311=v310[1];if v311 then local v387=0;while true do if (v387==0) then v89[v309]=v311;v83=v91[3];break;end end else v83=v83 + 1 ;end end elseif (v92<=(972 -(261 + 624))) then if (v92==86) then local v312=v91[2];v89[v312]=v89[v312](v89[v312 + 1 ]);else local v314=0;local v315;while true do if (v314==0) then v315=v91[2];v89[v315]=v89[v315](v21(v89,v315 + (1 -0) ,v84));break;end end end elseif (v92==88) then local v316=v91[2];local v317,v318=v82(v89[v316](v89[v316 + 1 ]));v84=(v318 + v316) -(1081 -(1020 + 60)) ;local v319=1423 -(630 + 793) ;for v365=v316,v84 do local v366=0;while true do if (0==v366) then v319=v319 + (3 -2) ;v89[v365]=v317[v319];break;end end end else local v320=0;local v321;while true do if (0==v320) then v321=v91[2];v89[v321]=v89[v321](v89[v321 + 1 ]);break;end end end elseif (v92<=95) then if (v92<=92) then if (v92<=90) then if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end elseif (v92>91) then local v323=0;local v324;local v325;local v326;while true do if (v323==1) then v326=v89[v324 + 2 ];if (v326>0) then if (v325>v89[v324 + (4 -3) ]) then v83=v91[3];else v89[v324 + 3 ]=v325;end elseif (v325<v89[v324 + 1 ]) then v83=v91[3];else v89[v324 + 3 ]=v325;end break;end if (v323==0) then v324=v91[2];v325=v89[v324];v323=1;end end else local v327=0;local v328;local v329;while true do if (1==v327) then v89[v328 + 1 ]=v329;v89[v328]=v329[v91[4]];break;end if (v327==0) then v328=v91[2];v329=v89[v91[3]];v327=1;end end end elseif (v92<=93) then if v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92==94) then local v331=0;local v332;while true do if (v331==0) then v332=v91[2];v89[v332](v21(v89,v332 + 1 ,v91[3]));break;end end elseif (v91[2]==v89[v91[4]]) then v83=v83 + 1 + 0 ;else v83=v91[9 -6 ];end elseif (v92<=98) then if (v92<=96) then v89[v91[2]][v91[3]]=v89[v91[4]];elseif (v92>97) then if (v89[v91[2]]<=v89[v91[1751 -(760 + 987) ]]) then v83=v83 + 1 ;else v83=v91[3];end else local v333=0;local v334;local v335;while true do if (v333==0) then v334=v91[1915 -(1789 + 124) ];v335={};v333=1;end if (v333==1) then for v478=1, #v88 do local v479=0;local v480;while true do if (v479==0) then v480=v88[v478];for v531=0, #v480 do local v532=0;local v533;local v534;local v535;while true do if (v532==0) then v533=v480[v531];v534=v533[1];v532=1;end if (v532==1) then v535=v533[2];if ((v534==v89) and (v535>=v334)) then local v545=0;while true do if (v545==0) then v335[v535]=v534[v535];v533[1]=v335;break;end end end break;end end end break;end end end break;end end end elseif (v92<=100) then if (v92==99) then for v367=v91[2],v91[3] do v89[v367]=nil;end else local v336=v91[2];do return v89[v336](v21(v89,v336 + 1 ,v91[3]));end end elseif (v92==(867 -(745 + 21))) then if (v91[2]==v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end else v89[v91[1 + 1 ]]=v75[v91[3]];end v83=v83 + 1 ;break;end if (0==v101) then v91=v79[v83];v92=v91[1];v101=1;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012663Q00013Q0020125Q0002001266000100013Q002012000100010003001266000200013Q002012000200020004001266000300053Q00061D0003000A000100010004243Q000A0001001266000300063Q002012000400030007001266000500083Q002012000500050009001266000600083Q00201200060006000A00064C00073Q000100062Q000A3Q00064Q000A8Q000A3Q00044Q000A3Q00014Q000A3Q00024Q000A3Q00053Q001266000800013Q00201200080008000B0012660009000C3Q001266000A000D3Q00064C000B0001000100052Q000A3Q00074Q000A3Q00094Q000A3Q00084Q000A3Q000A4Q000A3Q000B4Q0055000C000B4Q0027000C00014Q0047000C6Q004F3Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q003100025Q001250000300014Q001100045Q001250000500013Q00045C0003002100012Q001B00076Q0055000800024Q001B000900014Q001B000A00024Q001B000B00034Q001B000C00044Q0055000D6Q0055000E00063Q002006000F000600012Q0014000C000F4Q0057000B3Q00022Q001B000C00034Q001B000D00044Q0055000E00014Q0011000F00014Q002E000F0006000F001005000F0001000F2Q0011001000014Q002E0010000600100010050010000100100020060010001000012Q0014000D00104Q0041000C6Q0057000A3Q0002002044000A000A00022Q00520009000A4Q004300073Q00010004190003000500012Q001B000300054Q0055000400024Q001A000300044Q004700036Q004F3Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q00064C5Q000100012Q00388Q001B000100014Q001B000200024Q001B000300024Q003100046Q001B000500034Q005500066Q0034000700074Q0014000500074Q004E00043Q0001002012000400040001001250000500024Q0022000300050002001250000400034Q0014000200044Q005700013Q000200265A00010018000100040004243Q001800012Q005500016Q003100026Q001A000100024Q004700015Q0004243Q001B00012Q001B000100044Q0027000100014Q004700016Q004F3Q00013Q00013Q00303Q0003023Q005F4703133Q007374612Q66436865636B6572456E61626C656400010003043Q0067616D65030A3Q004765745365727669636503073Q00903651D0A5284303043Q00A9C05A3003053Q00046D6F297B03053Q00354529226003053Q0093D4D90F1003063Q004BDCA3B76A6203043Q0026BF9D2403053Q00B962DAEB57030B3Q00E83329F2CCA3C92933E3DA03063Q00CAAB5C4786BE030C3Q0004CE228D3DC836893DC8238603043Q00E849A14C030A3Q0096D646580CBACD4D4F0D03053Q007EDBB9223D023Q0040CAEC5141027Q0040028Q00030A3Q005374617274657247756903073Q00536574436F726503103Q008BECD5C096E6CFCDBEE0D8C5ACE0D4CA03043Q00A4D889BB03053Q00E6EF25BEA303073Q006BB28651D2C69E03143Q000B1A83C0AC782D8AC3A9330B902Q86370F86C3AE03053Q00CA586EE2A603043Q00F70A9AE303053Q00AAA36FE29703133Q00F09F8EAD2Q20486578706C6F697420F09F8EAD03083Q003525A0395A3E261F03073Q00497150D2582E57026Q00144003103Q00B229C316C98E38C414EE822DD91BE88F03053Q0087E14CAD7203053Q002EE4ACBCA903073Q00C77A8DD8D0CCDD03163Q009EC911F67EB68ED515F373F3BF9D25FE74F9ACD915F403063Q0096CDBD70901803043Q001181A75803083Q007045E4DF2C64E87103083Q00F00A15D2A27589DA03073Q00E6B47F67B3D61C026Q00F03F019A3Q0006423Q009800013Q0004243Q00980001001266000100013Q00201200010001000200265A00010008000100030004243Q00080001001266000100013Q00301F000100020004001266000100013Q001266000200013Q0020120002000200022Q0035000200023Q001060000100020002001266000100053Q00205B0001000100062Q001B00035Q001250000400073Q001250000500084Q0014000300054Q005700013Q00022Q0031000200054Q001B00035Q001250000400093Q0012500005000A4Q00220003000500022Q001B00045Q0012500005000B3Q0012500006000C4Q00220004000600022Q001B00055Q0012500006000D3Q0012500007000E4Q00220005000700022Q001B00065Q0012500007000F3Q001250000800104Q00220006000800022Q001B00075Q001250000800113Q001250000900124Q00220007000900022Q001B00085Q001250000900133Q001250000A00144Q00140008000A4Q004E00023Q0001001250000300153Q001250000400164Q003100055Q00064C00063Q000100012Q00387Q00064C00070001000100052Q000A3Q00024Q000A3Q00064Q00388Q000A3Q00034Q000A3Q00043Q00064C00080002000100032Q000A3Q00054Q000A3Q00014Q000A3Q00073Q00064C00090003000100012Q000A3Q00053Q001266000A00013Q002012000A000A0002000642000A006D00013Q0004243Q006D0001001250000A00174Q0034000B000B3Q00265A000A0045000100170004243Q00450001001250000B00173Q00265A000B0048000100170004243Q00480001001266000C00053Q002012000C000C001800205B000C000C00192Q001B000E5Q001250000F001A3Q0012500010001B4Q0022000E001000022Q0031000F3Q00032Q001B00105Q0012500011001C3Q0012500012001D4Q00220010001200022Q001B00115Q0012500012001E3Q0012500013001F4Q00220011001300022Q0002000F001000112Q001B00105Q001250001100203Q001250001200214Q002200100012000200202Q000F001000222Q001B00105Q001250001100233Q001250001200244Q002200100012000200202Q000F001000252Q003F000C000F00012Q0055000C00084Q0030000C000100010004243Q009600010004243Q004800010004243Q009600010004243Q004500010004243Q00960001001250000A00174Q0034000B000B3Q00265A000A006F000100170004243Q006F0001001250000B00173Q00265A000B0072000100170004243Q00720001001266000C00053Q002012000C000C001800205B000C000C00192Q001B000E5Q001250000F00263Q001250001000274Q0022000E001000022Q0031000F3Q00032Q001B00105Q001250001100283Q001250001200294Q00220010001200022Q001B00115Q0012500012002A3Q0012500013002B4Q00220011001300022Q0002000F001000112Q001B00105Q0012500011002C3Q0012500012002D4Q002200100012000200202Q000F001000222Q001B00105Q0012500011002E3Q0012500012002F4Q002200100012000200202Q000F001000252Q003F000C000F00012Q0055000C00094Q0030000C000100010004243Q009600010004243Q007200010004243Q009600010004243Q006F00012Q004B00015Q0004243Q0099000100201200013Q00302Q004F3Q00013Q00043Q000C3Q0003043Q0067616D65030A3Q005374617274657247756903073Q00536574436F726503103Q003FCB50765078E7EE0AC75D736A7EFCE903083Q00876CAE3E121E179303053Q0082E03EC71D03083Q00A7D6894AAB78CE5303043Q00BFF52A4903063Q00C7EB90523D9803083Q002303AB2A131FB62503043Q004B6776D9026Q001440031C3Q001266000300013Q00201200030003000200205B0003000300032Q001B00055Q001250000600043Q001250000700054Q00220005000700022Q003100063Q00032Q001B00075Q001250000800063Q001250000900074Q00220007000900022Q0002000600074Q001B00075Q001250000800083Q001250000900094Q00220007000900022Q00020006000700012Q001B00075Q0012500008000A3Q0012500009000B4Q002200070009000200064A00080019000100020004243Q001900010012500008000C4Q00020006000700082Q003F0003000600012Q004F3Q00017Q001C3Q00028Q0003023Q005F4703133Q007374612Q66436865636B6572456E61626C656403063Q0069706169727303063Q00737472696E6703053Q006D6174636803053Q006C6F77657203043Q004E616D6503013Q005E03013Q0024026Q00F03F030D3Q00F4407112BF5EE45C7517B21BD503063Q007EA7341074D903133Q00882733C0B559EFDC2F2686F414F9C52C2592F503073Q009CA84E40E0D47903053Q007072696E7403213Q003CDD91EF21C8E5EA22DA80ED33CB81F347DBB6CB15E0A4C302AEA8CF13EDAD944703043Q00AE678EC503053Q007063612Q6C030E3Q0047657452616E6B496E47726F7570030D3Q00653C5E3E231EDB5E2D5C33204C03073Q009836483F58453E031A3Q0094CDFD1CD584FD48D5C2E81CD9C1E35ED1D6AF1CE6C5E0578E8403043Q003CB4A48E030E3Q00476574526F6C65496E47726F7570031E3Q00636D310801CB527C7B310C04D9377C63450E35E207481E082833EE1A021E03073Q0072383E6549478D027Q004001BB3Q001250000100014Q0034000200033Q00265A00010055000100010004243Q00550001001266000400023Q00201200040004000300061D00040009000100010004243Q000900012Q004F3Q00013Q001266000400044Q001B00056Q001E0004000200060004243Q00520001001266000900053Q002012000900090006001266000A00053Q002012000A000A0007002012000B3Q00082Q0056000A00020002001250000B00093Q001266000C00053Q002012000C000C00072Q0055000D00084Q0056000C00020002001250000D000A4Q0009000B000B000D2Q00220009000B00020006420009005200013Q0004243Q00520001001250000900014Q0034000A000B3Q00265A00090024000100010004243Q00240001001250000A00014Q0034000B000B3Q0012500009000B3Q00265A0009001F0001000B0004243Q001F0001001250000C00013Q00265A000C0027000100010004243Q0027000100265A000A00340001000B0004243Q003400012Q001B000D00014Q001B000E00023Q001250000F000C3Q0012500010000D4Q0022000E001000022Q0055000F000B4Q003F000D000F00012Q0036000D00014Q000D000D00023Q00265A000A0026000100010004243Q00260001001250000D00013Q00265A000D003B0001000B0004243Q003B0001001250000A000B3Q0004243Q0026000100265A000D0037000100010004243Q00370001002012000E3Q00082Q001B000F00023Q0012500010000E3Q0012500011000F4Q0022000F001100022Q0009000B000E000F001266000E00104Q001B000F00023Q001250001000113Q001250001100124Q0022000F001100022Q00550010000B4Q0009000F000F00102Q004D000E00020001001250000D000B3Q0004243Q003700010004243Q002600010004243Q002700010004243Q002600010004243Q005200010004243Q001F00010006540004000D000100020004243Q000D00010012500001000B3Q00265A000100B50001000B0004243Q00B50001001266000400133Q00064C00053Q000100022Q000A8Q00383Q00034Q001E0004000200052Q0055000300054Q0055000200043Q000642000200B400013Q0004243Q00B40001000642000300B400013Q0004243Q00B40001001250000400014Q0034000500063Q00265A000400AE0001000B0004243Q00AE000100265A00050066000100010004243Q0066000100205B00073Q00142Q001B000900034Q00220007000900022Q0055000600074Q001B000700043Q000662000700B4000100060004243Q00B40001001250000700014Q0034000800093Q00265A000700A50001000B0004243Q00A50001001250000A00013Q00265A000A0074000100010004243Q0074000100265A000800850001000B0004243Q00850001001250000B00013Q00265A000B0079000100010004243Q007900012Q001B000C00014Q001B000D00023Q001250000E00153Q001250000F00164Q0022000D000F00022Q0055000E00094Q003F000C000E00012Q0036000C00014Q000D000C00023Q0004243Q0079000100265A00080073000100010004243Q00730001001250000B00013Q000E5F000B008C0001000B0004243Q008C00010012500008000B3Q0004243Q0073000100265A000B0088000100010004243Q00880001002012000C3Q00082Q001B000D00023Q001250000E00173Q001250000F00184Q0022000D000F000200205B000E3Q00192Q001B001000034Q0022000E001000022Q00090009000C000E001266000C00104Q001B000D00023Q001250000E001A3Q001250000F001B4Q0022000D000F00022Q0055000E00094Q0009000D000D000E2Q004D000C00020001001250000B000B3Q0004243Q008800010004243Q007300010004243Q007400010004243Q007300010004243Q00B4000100265A00070071000100010004243Q00710001001250000800014Q0034000900093Q0012500007000B3Q0004243Q007100010004243Q00B400010004243Q006600010004243Q00B4000100265A00040064000100010004243Q00640001001250000500014Q0034000600063Q0012500004000B3Q0004243Q006400010012500001001C3Q00265A000100020001001C0004243Q000200012Q003600046Q000D000400023Q0004243Q000200012Q004F3Q00013Q00013Q00013Q0003093Q004973496E47726F757000064Q001B7Q00205B5Q00012Q001B000200014Q001A3Q00024Q00478Q004F3Q00017Q00073Q00028Q0003053Q007461626C6503063Q00696E73657274030B3Q00506C61796572412Q64656403073Q00436F2Q6E65637403063Q00697061697273030A3Q00476574506C6179657273001B3Q0012503Q00013Q00265A3Q0001000100010004243Q00010001001266000100023Q0020120001000100032Q001B00026Q001B000300013Q00201200030003000400205B00030003000500064C00053Q000100012Q00383Q00024Q0014000300054Q004300013Q0001001266000100064Q001B000200013Q00205B0002000200072Q0052000200034Q001600013Q00030004243Q001600012Q001B000600024Q0055000700054Q004D00060002000100065400010013000100020004243Q001300010004243Q001A00010004243Q000100012Q004F3Q00013Q00017Q0001044Q001B00016Q005500026Q004D0001000200012Q004F3Q00017Q00033Q00028Q0003063Q00697061697273030A3Q00446973636F2Q6E65637400103Q0012503Q00013Q00265A3Q0001000100010004243Q00010001001266000100024Q001B00026Q001E0001000200030004243Q0009000100205B0006000500032Q004D00060002000100065400010007000100020004243Q000700012Q003100016Q000C00015Q0004243Q000F00010004243Q000100012Q004F3Q00017Q00",v17(),...);
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
