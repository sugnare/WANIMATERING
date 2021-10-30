//Maya ASCII 2022 scene
//Name: UFOLights.ma
//Last modified: Sat, Oct 30, 2021 02:28:51 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
requires -nodeType "aiSkyDomeLight" -nodeType "aiAreaLight" "mtoa" "4.2.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19042)";
fileInfo "UUID" "7410475A-4173-25A9-6C39-01BCA1B2C085";
createNode transform -n "UFO_control:UFO_controller";
	rename -uid "C10E4B26-46F7-E3EB-FF9A-EE99C499005A";
createNode transform -n "Key" -p "UFO_control:UFO_controller";
	rename -uid "202E48C1-4207-B454-C5B9-D780F51D03E9";
	setAttr ".t" -type "double3" 0.91183558052200286 1.1791366074812328 -1.9878823264799845 ;
	setAttr ".r" -type "double3" 171.24070873448994 27.232547384881304 -157.65891009394389 ;
	setAttr ".s" -type "double3" 2.3070224189718873 2.3070224189718864 2.3070224189718873 ;
createNode aiAreaLight -n "KeyShape" -p "Key";
	rename -uid "6522581C-4DD0-B0C7-F0EF-45BEAE325B05";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_exposure" 13.5;
	setAttr ".ai_aov" -type "string" "KeyLightGRP";
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 5521.7392578125;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "Fill" -p "UFO_control:UFO_controller";
	rename -uid "10D69D38-400F-BE3E-6C4F-8993A83A1BCC";
	setAttr ".t" -type "double3" 1.3410874627035487 0.87657932239960823 1.7045839837747601 ;
	setAttr ".r" -type "double3" -8.8669538642182673 35.493129155970756 -353.65852895884206 ;
	setAttr ".s" -type "double3" 2.9090314759445111 2.9090314759445088 2.9090314759445111 ;
createNode aiAreaLight -n "FillShape" -p "Fill";
	rename -uid "2C0BF464-4D33-F571-993C-D88530A68EC7";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_exposure" 10.5;
	setAttr ".ai_aov" -type "string" "FillLightGRP";
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 5521.7392578125;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "Rim" -p "UFO_control:UFO_controller";
	rename -uid "2F343774-4F72-E930-1EAF-BDBEE0D18D69";
	setAttr ".t" -type "double3" -2.679137942797051 -0.097442370589075566 0.12450070040006324 ;
	setAttr ".r" -type "double3" -22.895665078715783 -81.548641057527718 -332.93170565453835 ;
	setAttr ".s" -type "double3" 2.3070224189718873 2.3070224189718864 2.3070224189718873 ;
createNode aiAreaLight -n "RimShape" -p "Rim";
	rename -uid "0E8AFCEA-42F9-0A79-79E1-4FBA54D37261";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_exposure" 9;
	setAttr ".ai_aov" -type "string" "RimLightGRP";
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 5521.7392578125;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "WorldLight";
	rename -uid "42A2213D-48C5-A42F-E426-2E91662E3444";
createNode aiSkyDomeLight -n "WorldLightShape" -p "WorldLight";
	rename -uid "AE365761-47B0-48E7-00AD-E096ABA2504F";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".camera" 0;
	setAttr ".ai_exposure" -1.5;
	setAttr ".ai_aov" -type "string" "WorldLightGRP";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode animCurveTL -n "UFO_controller_translateX";
	rename -uid "E9D44C32-4B64-44B3-9E40-70AB5C7CDDE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -22.966960854185942 8 -22.966960854185942
		 13 -22.966960854185942 18 -22.966960854185942 30 -22.966960854185942 42 -23.12388216342331
		 65 12.738459904152849 73 11.597669066130356 75 11.465255843859888 87 11.465255843859888
		 120 11.465255843859888 138 39.165725956961055;
	setAttr -s 12 ".kit[3:11]"  1 1 18 18 18 1 18 1 
		1;
	setAttr -s 12 ".kot[2:11]"  1 18 1 18 18 18 1 18 
		1 1;
	setAttr -s 12 ".kix[3:11]"  1 1 1 1 0.31102672266173048 1 1 1 0.044885548684583852;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 -0.95040116676606778 0 0 0 -0.99899213586458413;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 0.31102672266173043 1 1 1 0.044885558129169015;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 -0.95040116676606767 0 0 0 -0.99899213544023113;
createNode animCurveTL -n "UFO_controller_translateY";
	rename -uid "70F2276F-47C6-12AD-4FC1-7A94FE3AFA21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  42 8.4567830333731582 55 5.874757041279576
		 65 2.9046492668516883 73 2.9046492668516883 75 2.9046492668516883 87 2.9046492668516883
		 120 2.9046492668516883 138 2.9046492668516883;
	setAttr -s 8 ".kit[4:7]"  1 18 1 18;
	setAttr -s 8 ".kot[4:7]"  1 18 1 18;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTL -n "UFO_controller_translateZ";
	rename -uid "8E17F2FA-4966-265F-4E7B-2BB747218923";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 13 0 18 0 30 0 42 0 55 0 65 -0.31384261847474448
		 73 -0.31384261847474448 75 -0.31384261847474448 87 -0.31384261847474448 120 -0.31384261847474448
		 138 -0.31384261847474448;
	setAttr -s 13 ".kit[3:12]"  1 1 18 18 18 18 1 18 
		1 18;
	setAttr -s 13 ".kot[2:12]"  1 18 1 18 18 18 18 1 
		18 1 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "UFO_controller_visibility";
	rename -uid "A8BB1B81-4474-D63B-9FC0-668CC5AF5577";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 8 1 13 1 18 1 30 1 42 1 55 1 65 1 73 1
		 75 1 87 1 120 1 138 0.68615738152525552;
	setAttr -s 13 ".kit[0:12]"  9 9 9 1 1 9 9 9 
		9 1 9 1 9;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 0.92248955401947086;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 -0.38602204953209329;
createNode animCurveTA -n "UFO_controller_rotateX";
	rename -uid "24AB70A2-4CD0-F8DE-94F6-F2AEF20FFE27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 8 0 13 0 18 0 30 0 42 0 55 0 65 -0.31384261847474448
		 73 -0.32418124731597858 75 -0.38558623118823632 87 -0.22298305929687159 120 -0.31384261847474448
		 138 -0.31384261847474448;
	setAttr -s 13 ".kit[3:12]"  1 1 18 18 18 18 1 18 
		1 18;
	setAttr -s 13 ".kot[2:12]"  1 18 1 18 18 18 18 1 
		18 1 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 0.99999868133406244 0.99999868133406244 
		1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 -0.001623985879292945 -0.001623985879292945 
		0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 0.99999868133406244 0.99999868133406244 
		1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 -0.001623985879292945 -0.0016239858792929452 
		0 0 0 0;
createNode animCurveTA -n "UFO_controller_rotateY";
	rename -uid "F1884714-45BB-CF78-ECA6-CF926F001E49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -0.73486905229184885 8 -0.73486905229184885
		 13 -0.73486905229184885 18 -0.73486905229184885 33 -0.73486905229184885 42 0 55 0
		 65 -0.31384261847474448 73 -0.30870861452221715 75 -0.21981214930266252 87 -0.38111588951940339
		 120 -0.31384261847474448 138 -0.31384261847474448;
	setAttr -s 13 ".kit[3:12]"  1 1 18 18 18 18 1 18 
		1 18;
	setAttr -s 13 ".kot[2:12]"  1 18 1 18 18 18 18 1 
		18 1 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 0.99999967482140972 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0.00080644719279859801 0 0 0 
		0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 1 0.99999967482140972 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 0 0.0008064471927985979 0 0 0 
		0;
createNode animCurveTA -n "UFO_controller_rotateZ";
	rename -uid "7599952F-46D8-EE1D-8A56-D5A3BA97F9B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -0.18371726307296404 8 -0.18371726307296404
		 13 -0.18371726307296404 18 -0.18371726307296404 25 -0.18371726307296404 32 3.1231934722403958
		 42 -14.999999999999998 55 -30.156921309237383 65 -7.2391727143488982 73 2.1369245527068865
		 87 -15.000109053984055 120 -0.31384261847474448 138 -0.31384261847474448;
	setAttr -s 13 ".kit[3:12]"  1 18 1 18 18 18 1 18 
		1 18;
	setAttr -s 13 ".kot[2:12]"  1 18 18 1 18 18 18 1 
		18 1 18;
	setAttr -s 13 ".kix[3:12]"  1 1 0.6825147268414824 0.85518220826448177 
		1 0.79941947085176035 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0.73087184077955603 -0.51832749364459219 
		0 0.60077325974371676 0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 0.68251488299614238 0.85518220826448155 
		1 0.79941947085176035 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0.73087169495661974 -0.51832749364459207 
		0 0.60077325974371676 0 0 0 0;
createNode animCurveTU -n "UFO_controller_scaleX";
	rename -uid "08AA0363-49EB-51B1-58EB-CB97C05FD927";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 10.297080687868498 8 10.297080687868498
		 13 10.297080687868498 18 10.297080687868498 30 10.297080687868498 42 10.297080687868498
		 55 10.297080687868498 65 9.983238069393753 73 9.983238069393753 75 9.983238069393753
		 87 9.983238069393753 120 9.983238069393753 138 9.983238069393753;
	setAttr -s 13 ".kit[3:12]"  1 1 18 18 18 18 1 18 
		1 18;
	setAttr -s 13 ".kot[2:12]"  1 18 1 18 18 18 18 1 
		18 1 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "UFO_controller_scaleY";
	rename -uid "F88AC303-485C-CD39-A9E3-A1A79F8FCDEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 10.297080687868498 8 10.297080687868498
		 13 10.297080687868498 18 10.297080687868498 30 10.297080687868498 42 10.297080687868498
		 55 10.297080687868498 65 9.983238069393753 73 9.983238069393753 75 9.983238069393753
		 87 9.983238069393753 120 9.983238069393753 138 9.983238069393753;
	setAttr -s 13 ".kit[3:12]"  1 1 18 18 18 18 1 18 
		1 18;
	setAttr -s 13 ".kot[2:12]"  1 18 1 18 18 18 18 1 
		18 1 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "UFO_controller_scaleZ";
	rename -uid "53646E1D-4172-6B3D-E3D8-9AAE6502B128";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 10.297080687868498 8 10.297080687868498
		 13 10.297080687868498 18 10.297080687868498 30 10.297080687868498 42 10.297080687868498
		 55 10.297080687868498 65 9.983238069393753 73 9.983238069393753 75 9.983238069393753
		 87 9.983238069393753 120 9.983238069393753 138 9.983238069393753;
	setAttr -s 13 ".kit[3:12]"  1 1 18 18 18 18 1 18 
		1 18;
	setAttr -s 13 ".kot[2:12]"  1 18 1 18 18 18 18 1 
		18 1 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
select -ne :time1;
	setAttr ".o" 43;
	setAttr ".unw" 43;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 17 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 14 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 12 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 4 ".l";
select -ne :defaultTextureList1;
	setAttr -s 11 ".tx";
select -ne :initialShadingGroup;
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ro" yes;
	setAttr -s 11 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA_KeyLightGRP";
	setAttr ".aovs[1].aov_name" -type "string" "RGBA_FillLightGRP";
	setAttr ".aovs[2].aov_name" -type "string" "RGBA_RimLightGRP";
	setAttr ".aovs[3].aov_name" -type "string" "ID";
	setAttr ".aovs[4].aov_name" -type "string" "N";
	setAttr ".aovs[5].aov_name" -type "string" "P";
	setAttr ".aovs[6].aov_name" -type "string" "Z";
	setAttr ".aovs[7].aov_name" -type "string" "direct";
	setAttr ".aovs[8].aov_name" -type "string" "emission";
	setAttr ".aovs[9].aov_name" -type "string" "indirect";
	setAttr ".aovs[10].aov_name" -type "string" "RGBA_WorldLightGRP";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA_KeyLightGRP","aiCustomAOVs[0].aovName"
		,"ai_aov_RGBA_WorldLightGRP","aiCustomAOVs[10].aovName","ai_aov_RGBA_FillLightGRP"
		,"aiCustomAOVs[1].aovName","ai_aov_RGBA_RimLightGRP","aiCustomAOVs[2].aovName","ai_aov_ID"
		,"aiCustomAOVs[3].aovName","ai_aov_N","aiCustomAOVs[4].aovName","ai_aov_P","aiCustomAOVs[5].aovName"
		,"ai_aov_Z","aiCustomAOVs[6].aovName","ai_aov_direct","aiCustomAOVs[7].aovName","ai_aov_emission"
		,"aiCustomAOVs[8].aovName","ai_aov_indirect","aiCustomAOVs[9].aovName"} ;
select -ne :initialParticleSE;
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ro" yes;
	setAttr -s 11 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA_KeyLightGRP";
	setAttr ".aovs[1].aov_name" -type "string" "RGBA_FillLightGRP";
	setAttr ".aovs[2].aov_name" -type "string" "RGBA_RimLightGRP";
	setAttr ".aovs[3].aov_name" -type "string" "ID";
	setAttr ".aovs[4].aov_name" -type "string" "N";
	setAttr ".aovs[5].aov_name" -type "string" "P";
	setAttr ".aovs[6].aov_name" -type "string" "Z";
	setAttr ".aovs[7].aov_name" -type "string" "direct";
	setAttr ".aovs[8].aov_name" -type "string" "emission";
	setAttr ".aovs[9].aov_name" -type "string" "indirect";
	setAttr ".aovs[10].aov_name" -type "string" "RGBA_WorldLightGRP";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA_KeyLightGRP","aiCustomAOVs[0].aovName"
		,"ai_aov_RGBA_WorldLightGRP","aiCustomAOVs[10].aovName","ai_aov_RGBA_FillLightGRP"
		,"aiCustomAOVs[1].aovName","ai_aov_RGBA_RimLightGRP","aiCustomAOVs[2].aovName","ai_aov_ID"
		,"aiCustomAOVs[3].aovName","ai_aov_N","aiCustomAOVs[4].aovName","ai_aov_P","aiCustomAOVs[5].aovName"
		,"ai_aov_Z","aiCustomAOVs[6].aovName","ai_aov_direct","aiCustomAOVs[7].aovName","ai_aov_emission"
		,"aiCustomAOVs[8].aovName","ai_aov_indirect","aiCustomAOVs[9].aovName"} ;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".an" yes;
	setAttr ".fs" 42;
	setAttr ".ef" 102;
	setAttr ".pff" yes;
	setAttr ".ifp" -type "string" "Shot4RenderV1";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :defaultLightSet;
	setAttr -s 4 ".dsm";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "UFO_controller_translateX.o" "UFO_control:UFO_controller.tx";
connectAttr "UFO_controller_translateY.o" "UFO_control:UFO_controller.ty";
connectAttr "UFO_controller_translateZ.o" "UFO_control:UFO_controller.tz";
connectAttr "UFO_controller_visibility.o" "UFO_control:UFO_controller.v";
connectAttr "UFO_controller_rotateX.o" "UFO_control:UFO_controller.rx";
connectAttr "UFO_controller_rotateY.o" "UFO_control:UFO_controller.ry";
connectAttr "UFO_controller_rotateZ.o" "UFO_control:UFO_controller.rz";
connectAttr "UFO_controller_scaleX.o" "UFO_control:UFO_controller.sx";
connectAttr "UFO_controller_scaleY.o" "UFO_control:UFO_controller.sy";
connectAttr "UFO_controller_scaleZ.o" "UFO_control:UFO_controller.sz";
connectAttr "WorldLightShape.ltd" ":lightList1.l" -na;
connectAttr "KeyShape.ltd" ":lightList1.l" -na;
connectAttr "FillShape.ltd" ":lightList1.l" -na;
connectAttr "RimShape.ltd" ":lightList1.l" -na;
connectAttr "WorldLight.iog" ":defaultLightSet.dsm" -na;
connectAttr "Key.iog" ":defaultLightSet.dsm" -na;
connectAttr "Fill.iog" ":defaultLightSet.dsm" -na;
connectAttr "Rim.iog" ":defaultLightSet.dsm" -na;
// End of UFOLights.ma
