--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v8,v9) local v10={};for v11=1, #v8 do v6(v10,v0(v4(v1(v2(v8,v11,v11 + 1 )),v1(v2(v9,1 + (v11% #v9) ,1 + (v11% #v9) + 1 )))%256 ));end return v5(v10);end if (_G.spinBotInitialized==nil) then _G.spinBotInitialized=false;end if _G.spinBotInitialized then local v12=0 -0 ;local v13;local v14;local v15;local v16;while true do if ((1 + 0)==v12) then game.StarterGui:SetCore(v7("\226\198\213\33\200\180\211\23\215\202\216\36\242\178\200\16","\126\177\163\187\69\134\219\167"),{[v7("\23\196\62\201\249","\156\67\173\74\165")]=v7("\7\167\64\24\158\41\82\116\132\93\25\172\54\67\48","\38\84\215\41\118\220\70"),[v7("\100\19\58\6","\158\48\118\66\114")]="🎭  Hexploit 🎭",[v7("\143\49\2\55\103\172\244\165","\155\203\68\112\86\19\197")]=8 -3 });v13=game:GetService(v7("\118\209\55\229\69\106\246","\152\38\189\86\156\32\24\133")).LocalPlayer;v12=2;end if (v12==4) then if v16 then v16:Destroy();end break;end if (v12==(1080 -(1020 + 60))) then _G.spinBotActive=false;_G.spinBotInitialized=false;v12=1424 -(630 + 793) ;end if (v12==(6 -4)) then v14=v13.Character;if v14 then local v31=v14:FindFirstChild(v7("\212\66\170\71\242\88\174\66\206\88\168\82\204\86\181\82","\38\156\55\199"));local v32=v14:FindFirstChildOfClass(v7("\128\104\113\41\29\123\243\71","\35\200\29\28\72\115\20\154"));if (v31 and v32) then v31.CFrame=CFrame.new(v31.Position);v32.AutoRotate=true;end end v12=14 -11 ;end if (v12==(2 + 1)) then local v24=0;while true do if (v24==1) then v12=13 -9 ;break;end if (v24==0) then v15=v13.Character:WaitForChild(v7("\49\170\220\222\131\35\61\29\141\222\208\153\28\53\11\171","\84\121\223\177\191\237\76"));v16=v15:FindFirstChild(v7("\136\70\192\174\56\95\36","\161\219\54\169\192\90\48\80"));v24=1748 -(760 + 987) ;end end end end else local v17=1913 -(1789 + 124) ;local v18;local v19;local v20;local v21;while true do if (v17==(768 -(745 + 21))) then v20=v19.Character:WaitForChild(v7("\36\219\83\115\112\120\250\227\62\193\81\102\78\118\225\243","\135\108\174\62\18\30\23\147"));v19.Character:WaitForChild(v7("\158\252\39\202\22\161\58\195","\167\214\137\74\171\120\206\83")).AutoRotate=false;v21=Instance.new(v7("\170\254\53\72\244\166\153\198\55\81\247\164\130\228\43","\199\235\144\82\61\152"));v17=2 + 1 ;end if (v17==(7 -4)) then local v26=0 -0 ;while true do if (v26==(1 + 0)) then v21.AngularVelocity=Vector3.new(0,v18,0 + 0 );v17=4;break;end if ((1055 -(87 + 968))==v26) then v21.Attachment0=v20:WaitForChild(v7("\53\25\182\63\38\2\173\42\4\30\180\46\9\2","\75\103\118\217"));v21.MaxTorque=math.huge;v26=4 -3 ;end end end if (v17==(0 + 0)) then local v27=0 -0 ;while true do if (v27==(1413 -(447 + 966))) then _G.spinBotActive=true;_G.spinBotInitialized=true;v27=2 -1 ;end if (v27==(1818 -(1703 + 114))) then game.StarterGui:SetCore(v7("\122\71\14\33\103\77\20\44\79\75\3\36\93\75\15\43","\69\41\34\96"),{[v7("\136\202\195\6\7","\75\220\163\183\106\98")]=v7("\49\170\130\57\251\13\174\203\22\218\22\179\157\54\205\7\190","\185\98\218\235\87"),[v7("\255\57\63\242","\202\171\92\71\134\190")]="🎭  Hexploit 🎭",[v7("\13\212\62\137\61\200\35\134","\232\73\161\76")]=706 -(376 + 325) });v17=1;break;end end end if (v17==(5 -1)) then v21.Parent=v20;v21.Name=v7("\244\68\121\26\187\17\211","\126\167\52\16\116\217");break;end if (v17==(2 -1)) then v18=15 + 35 ;v19=game:GetService(v7("\139\213\67\68\27\169\202","\126\219\185\34\61")).LocalPlayer;repeat task.wait();until v19.Character v17=2;end end end
