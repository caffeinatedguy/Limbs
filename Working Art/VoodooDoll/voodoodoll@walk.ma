//Maya ASCII 2014 scene
//Name: voodoodoll@walk.ma
//Last modified: Sat, Jan 30, 2016 01:40:04 AM
//Codeset: 1252
file -rdi 1 -ns "voodoo_doll_rig" -rfn "voodoo_doll_rigRN" "C:/git/ProjectLimbs/Working Art/VoodooDoll/VoodooDoll_Rig.ma";
file -r -ns "voodoo_doll_rig" -dr 1 -rfn "voodoo_doll_rigRN" "C:/git/ProjectLimbs/Working Art/VoodooDoll/VoodooDoll_Rig.ma";
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t ntscf;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -226.15030203152287 324.26878053086023 279.89077339257329 ;
	setAttr ".r" -type "double3" -34.538352729607006 -398.99999999998892 2.0463045806094176e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 442.69916280585892;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 9.3393082165321122 39.79645073696819 -17.661396886674549 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1001.5383742756276 64.81130572873829 11.373340169538803 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 375.71648593174359;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "bottom";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -157.25138244628906 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -n "bottomShape" -p "bottom";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 157.25138244628906;
	setAttr ".ow" 252.5667922544161;
	setAttr ".imn" -type "string" "bottom1";
	setAttr ".den" -type "string" "bottom1_depth";
	setAttr ".man" -type "string" "bottom1_mask";
	setAttr ".hc" -type "string" "viewSet -bo %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "voodoo_doll_rigRN";
	setAttr -s 120 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"voodoo_doll_rigRN"
		"voodoo_doll_rigRN" 0
		"voodoo_doll_rigRN" 159
		2 "|voodoo_doll_rig:Geo|voodoo_doll_rig:Body|voodoo_doll_rig:BodyShape" "visibility" 
		" -k 0 1"
		2 "|voodoo_doll_rig:Geo|voodoo_doll_rig:Head|voodoo_doll_rig:HeadShape" "visibility" 
		" -k 0 1"
		2 "|voodoo_doll_rig:Geo|voodoo_doll_rig:L_Arm|voodoo_doll_rig:L_ArmShape" 
		"visibility" " -k 0 1"
		2 "|voodoo_doll_rig:Geo|voodoo_doll_rig:R_Arm|voodoo_doll_rig:L_ArmShape" 
		"visibility" " -k 0 1"
		2 "|voodoo_doll_rig:Geo|voodoo_doll_rig:L_Leg|voodoo_doll_rig:L_LegShape" 
		"visibility" " -k 0 1"
		2 "|voodoo_doll_rig:Geo|voodoo_doll_rig:R_Leg|voodoo_doll_rig:L_LegShape" 
		"visibility" " -k 0 1"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm" 
		"rotateX" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm" 
		"rotateY" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm" 
		"rotateZ" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm" 
		"segmentScaleCompensate" " 1"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"visibility" " -av 1"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"translate" " -type \"double3\" 0 31.467825 0"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"translateX" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"translateY" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"translateZ" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"rotateX" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"rotateY" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"rotateZ" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"scaleX" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"scaleY" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head" 
		"scaleZ" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm" 
		"rotateX" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm" 
		"rotateY" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm" 
		"rotateZ" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm" 
		"segmentScaleCompensate" " 1"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg" 
		"rotate" " -type \"double3\" -15 0 0"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg" 
		"rotateX" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg" 
		"rotateY" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg" 
		"rotateZ" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg" 
		"segmentScaleCompensate" " 1"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg" 
		"rotate" " -type \"double3\" 20 0 0"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg" 
		"rotateX" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg" 
		"rotateY" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg" 
		"rotateZ" " -av"
		2 "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg" 
		"segmentScaleCompensate" " 1"
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton.visibility" "voodoo_doll_rigRN.placeHolderList[1]" 
		""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton.translateX" "voodoo_doll_rigRN.placeHolderList[2]" 
		""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton.translateY" "voodoo_doll_rigRN.placeHolderList[3]" 
		""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton.translateZ" "voodoo_doll_rigRN.placeHolderList[4]" 
		""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton.rotateX" "voodoo_doll_rigRN.placeHolderList[5]" 
		""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton.rotateY" "voodoo_doll_rigRN.placeHolderList[6]" 
		""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton.rotateZ" "voodoo_doll_rigRN.placeHolderList[7]" 
		""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton.scaleX" "voodoo_doll_rigRN.placeHolderList[8]" 
		""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton.scaleY" "voodoo_doll_rigRN.placeHolderList[9]" 
		""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton.scaleZ" "voodoo_doll_rigRN.placeHolderList[10]" 
		""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis.scaleX" 
		"voodoo_doll_rigRN.placeHolderList[11]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis.scaleY" 
		"voodoo_doll_rigRN.placeHolderList[12]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis.scaleZ" 
		"voodoo_doll_rigRN.placeHolderList[13]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis.translateY" 
		"voodoo_doll_rigRN.placeHolderList[14]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis.translateX" 
		"voodoo_doll_rigRN.placeHolderList[15]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis.translateZ" 
		"voodoo_doll_rigRN.placeHolderList[16]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis.visibility" 
		"voodoo_doll_rigRN.placeHolderList[17]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis.rotateX" 
		"voodoo_doll_rigRN.placeHolderList[18]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis.rotateY" 
		"voodoo_doll_rigRN.placeHolderList[19]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis.rotateZ" 
		"voodoo_doll_rigRN.placeHolderList[20]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest.scaleX" 
		"voodoo_doll_rigRN.placeHolderList[21]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest.scaleY" 
		"voodoo_doll_rigRN.placeHolderList[22]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest.scaleZ" 
		"voodoo_doll_rigRN.placeHolderList[23]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest.visibility" 
		"voodoo_doll_rigRN.placeHolderList[24]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest.translateX" 
		"voodoo_doll_rigRN.placeHolderList[25]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest.translateY" 
		"voodoo_doll_rigRN.placeHolderList[26]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest.translateZ" 
		"voodoo_doll_rigRN.placeHolderList[27]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest.rotateX" 
		"voodoo_doll_rigRN.placeHolderList[28]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest.rotateY" 
		"voodoo_doll_rigRN.placeHolderList[29]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest.rotateZ" 
		"voodoo_doll_rigRN.placeHolderList[30]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm.scaleX" 
		"voodoo_doll_rigRN.placeHolderList[31]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm.scaleY" 
		"voodoo_doll_rigRN.placeHolderList[32]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm.scaleZ" 
		"voodoo_doll_rigRN.placeHolderList[33]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm.rotateX" 
		"voodoo_doll_rigRN.placeHolderList[34]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm.rotateY" 
		"voodoo_doll_rigRN.placeHolderList[35]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm.rotateZ" 
		"voodoo_doll_rigRN.placeHolderList[36]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm.visibility" 
		"voodoo_doll_rigRN.placeHolderList[37]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm.translateX" 
		"voodoo_doll_rigRN.placeHolderList[38]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm.translateY" 
		"voodoo_doll_rigRN.placeHolderList[39]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm.translateZ" 
		"voodoo_doll_rigRN.placeHolderList[40]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm|voodoo_doll_rig:L_Arm_Tip.visibility" 
		"voodoo_doll_rigRN.placeHolderList[41]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm|voodoo_doll_rig:L_Arm_Tip.translateX" 
		"voodoo_doll_rigRN.placeHolderList[42]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm|voodoo_doll_rig:L_Arm_Tip.translateY" 
		"voodoo_doll_rigRN.placeHolderList[43]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm|voodoo_doll_rig:L_Arm_Tip.translateZ" 
		"voodoo_doll_rigRN.placeHolderList[44]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm|voodoo_doll_rig:L_Arm_Tip.rotateX" 
		"voodoo_doll_rigRN.placeHolderList[45]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm|voodoo_doll_rig:L_Arm_Tip.rotateY" 
		"voodoo_doll_rigRN.placeHolderList[46]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm|voodoo_doll_rig:L_Arm_Tip.rotateZ" 
		"voodoo_doll_rigRN.placeHolderList[47]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm|voodoo_doll_rig:L_Arm_Tip.scaleX" 
		"voodoo_doll_rigRN.placeHolderList[48]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm|voodoo_doll_rig:L_Arm_Tip.scaleY" 
		"voodoo_doll_rigRN.placeHolderList[49]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:L_Arm|voodoo_doll_rig:L_Arm_Tip.scaleZ" 
		"voodoo_doll_rigRN.placeHolderList[50]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head.rotateX" 
		"voodoo_doll_rigRN.placeHolderList[51]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head.rotateY" 
		"voodoo_doll_rigRN.placeHolderList[52]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head.rotateZ" 
		"voodoo_doll_rigRN.placeHolderList[53]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head.visibility" 
		"voodoo_doll_rigRN.placeHolderList[54]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head.translateX" 
		"voodoo_doll_rigRN.placeHolderList[55]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head.translateY" 
		"voodoo_doll_rigRN.placeHolderList[56]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head.translateZ" 
		"voodoo_doll_rigRN.placeHolderList[57]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head.scaleX" 
		"voodoo_doll_rigRN.placeHolderList[58]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head.scaleY" 
		"voodoo_doll_rigRN.placeHolderList[59]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:Head.scaleZ" 
		"voodoo_doll_rigRN.placeHolderList[60]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm.scaleX" 
		"voodoo_doll_rigRN.placeHolderList[61]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm.scaleY" 
		"voodoo_doll_rigRN.placeHolderList[62]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm.scaleZ" 
		"voodoo_doll_rigRN.placeHolderList[63]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm.rotateX" 
		"voodoo_doll_rigRN.placeHolderList[64]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm.rotateY" 
		"voodoo_doll_rigRN.placeHolderList[65]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm.rotateZ" 
		"voodoo_doll_rigRN.placeHolderList[66]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm.visibility" 
		"voodoo_doll_rigRN.placeHolderList[67]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm.translateX" 
		"voodoo_doll_rigRN.placeHolderList[68]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm.translateY" 
		"voodoo_doll_rigRN.placeHolderList[69]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm.translateZ" 
		"voodoo_doll_rigRN.placeHolderList[70]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm|voodoo_doll_rig:R_Arm_Tip.visibility" 
		"voodoo_doll_rigRN.placeHolderList[71]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm|voodoo_doll_rig:R_Arm_Tip.translateX" 
		"voodoo_doll_rigRN.placeHolderList[72]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm|voodoo_doll_rig:R_Arm_Tip.translateY" 
		"voodoo_doll_rigRN.placeHolderList[73]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm|voodoo_doll_rig:R_Arm_Tip.translateZ" 
		"voodoo_doll_rigRN.placeHolderList[74]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm|voodoo_doll_rig:R_Arm_Tip.rotateX" 
		"voodoo_doll_rigRN.placeHolderList[75]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm|voodoo_doll_rig:R_Arm_Tip.rotateY" 
		"voodoo_doll_rigRN.placeHolderList[76]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm|voodoo_doll_rig:R_Arm_Tip.rotateZ" 
		"voodoo_doll_rigRN.placeHolderList[77]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm|voodoo_doll_rig:R_Arm_Tip.scaleX" 
		"voodoo_doll_rigRN.placeHolderList[78]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm|voodoo_doll_rig:R_Arm_Tip.scaleY" 
		"voodoo_doll_rigRN.placeHolderList[79]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:Chest|voodoo_doll_rig:R_Arm|voodoo_doll_rig:R_Arm_Tip.scaleZ" 
		"voodoo_doll_rigRN.placeHolderList[80]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg.scaleX" 
		"voodoo_doll_rigRN.placeHolderList[81]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg.scaleY" 
		"voodoo_doll_rigRN.placeHolderList[82]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg.scaleZ" 
		"voodoo_doll_rigRN.placeHolderList[83]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg.rotateX" 
		"voodoo_doll_rigRN.placeHolderList[84]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg.rotateY" 
		"voodoo_doll_rigRN.placeHolderList[85]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg.rotateZ" 
		"voodoo_doll_rigRN.placeHolderList[86]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg.visibility" 
		"voodoo_doll_rigRN.placeHolderList[87]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg.translateX" 
		"voodoo_doll_rigRN.placeHolderList[88]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg.translateY" 
		"voodoo_doll_rigRN.placeHolderList[89]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg.translateZ" 
		"voodoo_doll_rigRN.placeHolderList[90]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg|voodoo_doll_rig:L_Leg_Tip.visibility" 
		"voodoo_doll_rigRN.placeHolderList[91]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg|voodoo_doll_rig:L_Leg_Tip.translateX" 
		"voodoo_doll_rigRN.placeHolderList[92]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg|voodoo_doll_rig:L_Leg_Tip.translateY" 
		"voodoo_doll_rigRN.placeHolderList[93]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg|voodoo_doll_rig:L_Leg_Tip.translateZ" 
		"voodoo_doll_rigRN.placeHolderList[94]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg|voodoo_doll_rig:L_Leg_Tip.rotateX" 
		"voodoo_doll_rigRN.placeHolderList[95]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg|voodoo_doll_rig:L_Leg_Tip.rotateY" 
		"voodoo_doll_rigRN.placeHolderList[96]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg|voodoo_doll_rig:L_Leg_Tip.rotateZ" 
		"voodoo_doll_rigRN.placeHolderList[97]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg|voodoo_doll_rig:L_Leg_Tip.scaleX" 
		"voodoo_doll_rigRN.placeHolderList[98]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg|voodoo_doll_rig:L_Leg_Tip.scaleY" 
		"voodoo_doll_rigRN.placeHolderList[99]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:L_Leg|voodoo_doll_rig:L_Leg_Tip.scaleZ" 
		"voodoo_doll_rigRN.placeHolderList[100]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg.scaleX" 
		"voodoo_doll_rigRN.placeHolderList[101]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg.scaleY" 
		"voodoo_doll_rigRN.placeHolderList[102]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg.scaleZ" 
		"voodoo_doll_rigRN.placeHolderList[103]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg.rotateX" 
		"voodoo_doll_rigRN.placeHolderList[104]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg.rotateY" 
		"voodoo_doll_rigRN.placeHolderList[105]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg.rotateZ" 
		"voodoo_doll_rigRN.placeHolderList[106]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg.visibility" 
		"voodoo_doll_rigRN.placeHolderList[107]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg.translateX" 
		"voodoo_doll_rigRN.placeHolderList[108]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg.translateY" 
		"voodoo_doll_rigRN.placeHolderList[109]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg.translateZ" 
		"voodoo_doll_rigRN.placeHolderList[110]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg|voodoo_doll_rig:R_Leg_Tip.visibility" 
		"voodoo_doll_rigRN.placeHolderList[111]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg|voodoo_doll_rig:R_Leg_Tip.translateX" 
		"voodoo_doll_rigRN.placeHolderList[112]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg|voodoo_doll_rig:R_Leg_Tip.translateY" 
		"voodoo_doll_rigRN.placeHolderList[113]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg|voodoo_doll_rig:R_Leg_Tip.translateZ" 
		"voodoo_doll_rigRN.placeHolderList[114]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg|voodoo_doll_rig:R_Leg_Tip.rotateX" 
		"voodoo_doll_rigRN.placeHolderList[115]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg|voodoo_doll_rig:R_Leg_Tip.rotateY" 
		"voodoo_doll_rigRN.placeHolderList[116]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg|voodoo_doll_rig:R_Leg_Tip.rotateZ" 
		"voodoo_doll_rigRN.placeHolderList[117]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg|voodoo_doll_rig:R_Leg_Tip.scaleX" 
		"voodoo_doll_rigRN.placeHolderList[118]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg|voodoo_doll_rig:R_Leg_Tip.scaleY" 
		"voodoo_doll_rigRN.placeHolderList[119]" ""
		5 4 "voodoo_doll_rigRN" "|voodoo_doll_rig:Skeleton|voodoo_doll_rig:Pelvis|voodoo_doll_rig:R_Leg|voodoo_doll_rig:R_Leg_Tip.scaleZ" 
		"voodoo_doll_rigRN.placeHolderList[120]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 0\n                -hulls 0\n                -grid 1\n                -imagePlane 0\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 1\n                -manipulators 1\n                -pluginShapes 0\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 1\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 2.5\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 2.5\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.6875\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n"
		+ "                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.6875\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 30 -ast 1 -aet 120 ";
	setAttr ".st" 6;
createNode animCurveTA -n "L_Leg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 20.000000000000011 2 19.4897958627731
		 3 18.061224489795926 4 15.867346515403868 5 13.061224147677423 6 9.7959181749052888
		 7 6.2244897959183705 8 2.4999985331669397 9 -1.2244910275449497 10 -4.7959193295551987
		 11 -8.0612251740329057 12 -10.867347362147145 13 -13.061224695067022 14 -14.489795973961604
		 15 -15.000000000000002 16 -14.554073347162037 17 -13.299259452113395 18 -11.359998397827006
		 19 -8.8607413934778148 20 -5.9259240715591437 21 -2.6800012016296222 22 0.7525942541051911
		 23 4.2474057458948158 24 7.6800012016296293 25 10.92592407155915 26 13.860741393477818
		 27 16.359998397827017 28 18.299259452113407 29 19.554073347162038 30 20.000000000000011;
createNode animCurveTA -n "L_Leg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "L_Leg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "R_Leg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 -14.999999999999996 2 -14.489795862773086
		 3 -13.061224489795915 4 -10.867346515403856 5 -8.0612241476774145 6 -4.7959181749052791
		 7 -1.2244897959183652 8 2.5000014668330612 9 6.2244910275449534 10 9.7959193295552058
		 11 13.061225174032906 12 15.867347362147139 13 18.061224695067011 14 19.489795973961598
		 15 20 16 19.554073347162035 17 18.299259452113393 18 16.359998397827002 19 13.860741393477817
		 20 10.925924071559145 21 7.6800012016296275 22 4.2474057458948131 23 0.75259425410518788
		 24 -2.6800012016296288 25 -5.9259240715591401 26 -8.8607413934778148 27 -11.359998397827006
		 28 -13.299259452113391 29 -14.554073347162035 30 -14.999999999999996;
createNode animCurveTA -n "R_Leg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "R_Leg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "L_Leg_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "L_Leg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 9.3393082165321122 2 9.3393082165321122
		 3 9.3393082165321122 4 9.3393082165321122 5 9.3393082165321122 6 9.3393082165321122
		 7 9.3393082165321122 8 9.3393082165321122 9 9.3393082165321122 10 9.3393082165321122
		 11 9.3393082165321122 12 9.3393082165321122 13 9.3393082165321122 14 9.3393082165321122
		 15 9.3393082165321122 16 9.3393082165321122 17 9.3393082165321122 18 9.3393082165321122
		 19 9.3393082165321122 20 9.3393082165321122 21 9.3393082165321122 22 9.3393082165321122
		 23 9.3393082165321122 24 9.3393082165321122 25 9.3393082165321122 26 9.3393082165321122
		 27 9.3393082165321122 28 9.3393082165321122 29 9.3393082165321122 30 9.3393082165321122;
createNode animCurveTL -n "L_Leg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 2.4416190467730843 2 2.4416190467730843
		 3 2.4416190467730843 4 2.4416190467730843 5 2.4416190467730843 6 2.4416190467730843
		 7 2.4416190467730843 8 2.4416190467730843 9 2.4416190467730843 10 2.4416190467730843
		 11 2.4416190467730843 12 2.4416190467730843 13 2.4416190467730843 14 2.4416190467730843
		 15 2.4416190467730843 16 2.4416190467730843 17 2.4416190467730843 18 2.4416190467730843
		 19 2.4416190467730843 20 2.4416190467730843 21 2.4416190467730843 22 2.4416190467730843
		 23 2.4416190467730843 24 2.4416190467730843 25 2.4416190467730843 26 2.4416190467730843
		 27 2.4416190467730843 28 2.4416190467730843 29 2.4416190467730843 30 2.4416190467730843;
createNode animCurveTL -n "L_Leg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "L_Leg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "L_Leg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "L_Leg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Leg_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "R_Leg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 -9.33931 2 -9.33931 3 -9.33931 4 -9.33931
		 5 -9.33931 6 -9.33931 7 -9.33931 8 -9.33931 9 -9.33931 10 -9.33931 11 -9.33931 12 -9.33931
		 13 -9.33931 14 -9.33931 15 -9.33931 16 -9.33931 17 -9.33931 18 -9.33931 19 -9.33931
		 20 -9.33931 21 -9.33931 22 -9.33931 23 -9.33931 24 -9.33931 25 -9.33931 26 -9.33931
		 27 -9.33931 28 -9.33931 29 -9.33931 30 -9.33931;
createNode animCurveTL -n "R_Leg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 2.4416061656613408 2 2.4416061656613408
		 3 2.4416061656613408 4 2.4416061656613408 5 2.4416061656613408 6 2.4416061656613408
		 7 2.4416061656613408 8 2.4416061656613408 9 2.4416061656613408 10 2.4416061656613408
		 11 2.4416061656613408 12 2.4416061656613408 13 2.4416061656613408 14 2.4416061656613408
		 15 2.4416061656613408 16 2.4416061656613408 17 2.4416061656613408 18 2.4416061656613408
		 19 2.4416061656613408 20 2.4416061656613408 21 2.4416061656613408 22 2.4416061656613408
		 23 2.4416061656613408 24 2.4416061656613408 25 2.4416061656613408 26 2.4416061656613408
		 27 2.4416061656613408 28 2.4416061656613408 29 2.4416061656613408 30 2.4416061656613408;
createNode animCurveTL -n "R_Leg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "R_Leg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Leg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Leg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "Head_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "Head_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTL -n "Head_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 31.467824813785512 2 31.467824813785512
		 3 31.467824813785512 4 31.467824813785512 5 31.467824813785512 6 31.467824813785512
		 7 31.467824813785512 8 31.467824813785512 9 31.467824813785512 10 31.467824813785512
		 11 31.467824813785512 12 31.467824813785512 13 31.467824813785512 14 31.467824813785512
		 15 31.467824813785512 16 31.467824813785512 17 31.467824813785512 18 31.467824813785512
		 19 31.467824813785512 20 31.467824813785512 21 31.467824813785512 22 31.467824813785512
		 23 31.467824813785512 24 31.467824813785512 25 31.467824813785512 26 31.467824813785512
		 27 31.467824813785512 28 31.467824813785512 29 31.467824813785512 30 31.467824813785512;
createNode animCurveTL -n "Head_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "Head_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "Head_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "Head_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "Skeleton_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "Skeleton_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTL -n "Skeleton_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTL -n "Skeleton_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "Skeleton_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "Skeleton_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "Skeleton_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "Skeleton_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "Skeleton_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "Skeleton_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Arm_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "R_Arm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 -24.318 2 -24.318 3 -24.318 4 -24.318
		 5 -24.318 6 -24.318 7 -24.318 8 -24.318 9 -24.318 10 -24.318 11 -24.318 12 -24.318
		 13 -24.318 14 -24.318 15 -24.318 16 -24.318 17 -24.318 18 -24.318 19 -24.318 20 -24.318
		 21 -24.318 22 -24.318 23 -24.318 24 -24.318 25 -24.318 26 -24.318 27 -24.318 28 -24.318
		 29 -24.318 30 -24.318;
createNode animCurveTL -n "R_Arm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0.6385333468065113 2 0.6385333468065113
		 3 0.6385333468065113 4 0.6385333468065113 5 0.6385333468065113 6 0.6385333468065113
		 7 0.6385333468065113 8 0.6385333468065113 9 0.6385333468065113 10 0.6385333468065113
		 11 0.6385333468065113 12 0.6385333468065113 13 0.6385333468065113 14 0.6385333468065113
		 15 0.6385333468065113 16 0.6385333468065113 17 0.6385333468065113 18 0.6385333468065113
		 19 0.6385333468065113 20 0.6385333468065113 21 0.6385333468065113 22 0.6385333468065113
		 23 0.6385333468065113 24 0.6385333468065113 25 0.6385333468065113 26 0.6385333468065113
		 27 0.6385333468065113 28 0.6385333468065113 29 0.6385333468065113 30 0.6385333468065113;
createNode animCurveTL -n "R_Arm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "R_Arm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "R_Arm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "R_Arm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "R_Arm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Arm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Arm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Arm_Tip_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "R_Arm_Tip_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTL -n "R_Arm_Tip_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 -48.7037 2 -48.7037 3 -48.7037 4 -48.7037
		 5 -48.7037 6 -48.7037 7 -48.7037 8 -48.7037 9 -48.7037 10 -48.7037 11 -48.7037 12 -48.7037
		 13 -48.7037 14 -48.7037 15 -48.7037 16 -48.7037 17 -48.7037 18 -48.7037 19 -48.7037
		 20 -48.7037 21 -48.7037 22 -48.7037 23 -48.7037 24 -48.7037 25 -48.7037 26 -48.7037
		 27 -48.7037 28 -48.7037 29 -48.7037 30 -48.7037;
createNode animCurveTL -n "R_Arm_Tip_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "R_Arm_Tip_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "R_Arm_Tip_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "R_Arm_Tip_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "R_Arm_Tip_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Arm_Tip_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Arm_Tip_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "Chest_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "Chest_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTL -n "Chest_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 37.54367281885483 2 37.54367281885483
		 3 37.54367281885483 4 37.54367281885483 5 37.54367281885483 6 37.54367281885483 7 37.54367281885483
		 8 37.54367281885483 9 37.54367281885483 10 37.54367281885483 11 37.54367281885483
		 12 37.54367281885483 13 37.54367281885483 14 37.54367281885483 15 37.54367281885483
		 16 37.54367281885483 17 37.54367281885483 18 37.54367281885483 19 37.54367281885483
		 20 37.54367281885483 21 37.54367281885483 22 37.54367281885483 23 37.54367281885483
		 24 37.54367281885483 25 37.54367281885483 26 37.54367281885483 27 37.54367281885483
		 28 37.54367281885483 29 37.54367281885483 30 37.54367281885483;
createNode animCurveTL -n "Chest_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "Chest_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "Chest_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "Chest_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "Chest_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "Chest_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "Chest_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "L_Arm_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "L_Arm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 24.318042906463219 2 24.318042906463219
		 3 24.318042906463219 4 24.318042906463219 5 24.318042906463219 6 24.318042906463219
		 7 24.318042906463219 8 24.318042906463219 9 24.318042906463219 10 24.318042906463219
		 11 24.318042906463219 12 24.318042906463219 13 24.318042906463219 14 24.318042906463219
		 15 24.318042906463219 16 24.318042906463219 17 24.318042906463219 18 24.318042906463219
		 19 24.318042906463219 20 24.318042906463219 21 24.318042906463219 22 24.318042906463219
		 23 24.318042906463219 24 24.318042906463219 25 24.318042906463219 26 24.318042906463219
		 27 24.318042906463219 28 24.318042906463219 29 24.318042906463219 30 24.318042906463219;
createNode animCurveTL -n "L_Arm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0.63819142882229585 2 0.63819142882229585
		 3 0.63819142882229585 4 0.63819142882229585 5 0.63819142882229585 6 0.63819142882229585
		 7 0.63819142882229585 8 0.63819142882229585 9 0.63819142882229585 10 0.63819142882229585
		 11 0.63819142882229585 12 0.63819142882229585 13 0.63819142882229585 14 0.63819142882229585
		 15 0.63819142882229585 16 0.63819142882229585 17 0.63819142882229585 18 0.63819142882229585
		 19 0.63819142882229585 20 0.63819142882229585 21 0.63819142882229585 22 0.63819142882229585
		 23 0.63819142882229585 24 0.63819142882229585 25 0.63819142882229585 26 0.63819142882229585
		 27 0.63819142882229585 28 0.63819142882229585 29 0.63819142882229585 30 0.63819142882229585;
createNode animCurveTL -n "L_Arm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "L_Arm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "L_Arm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "L_Arm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "L_Arm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "L_Arm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "L_Arm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "L_Leg_Tip_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "L_Leg_Tip_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTL -n "L_Leg_Tip_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 -71.462609547020875 2 -71.462609547020875
		 3 -71.462609547020875 4 -71.462609547020875 5 -71.462609547020875 6 -71.462609547020875
		 7 -71.462609547020875 8 -71.462609547020875 9 -71.462609547020875 10 -71.462609547020875
		 11 -71.462609547020875 12 -71.462609547020875 13 -71.462609547020875 14 -71.462609547020875
		 15 -71.462609547020875 16 -71.462609547020875 17 -71.462609547020875 18 -71.462609547020875
		 19 -71.462609547020875 20 -71.462609547020875 21 -71.462609547020875 22 -71.462609547020875
		 23 -71.462609547020875 24 -71.462609547020875 25 -71.462609547020875 26 -71.462609547020875
		 27 -71.462609547020875 28 -71.462609547020875 29 -71.462609547020875 30 -71.462609547020875;
createNode animCurveTL -n "L_Leg_Tip_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "L_Leg_Tip_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "L_Leg_Tip_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "L_Leg_Tip_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "L_Leg_Tip_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "L_Leg_Tip_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "L_Leg_Tip_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "Pelvis_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "Pelvis_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTL -n "Pelvis_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 68.59479383433866 2 68.59479383433866
		 3 68.59479383433866 4 68.59479383433866 5 68.59479383433866 6 68.59479383433866 7 68.59479383433866
		 8 68.59479383433866 9 68.59479383433866 10 68.59479383433866 11 68.59479383433866
		 12 68.59479383433866 13 68.59479383433866 14 68.59479383433866 15 68.59479383433866
		 16 68.59479383433866 17 68.59479383433866 18 68.59479383433866 19 68.59479383433866
		 20 68.59479383433866 21 68.59479383433866 22 68.59479383433866 23 68.59479383433866
		 24 68.59479383433866 25 68.59479383433866 26 68.59479383433866 27 68.59479383433866
		 28 68.59479383433866 29 68.59479383433866 30 68.59479383433866;
createNode animCurveTL -n "Pelvis_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0.5 2 0.5 3 0.5 4 0.5 5 0.5 6 0.5 7 0.5
		 8 0.5 9 0.5 10 0.5 11 0.5 12 0.5 13 0.5 14 0.5 15 0.5 16 0.5 17 0.5 18 0.5 19 0.5
		 20 0.5 21 0.5 22 0.5 23 0.5 24 0.5 25 0.5 26 0.5 27 0.5 28 0.5 29 0.5 30 0.5;
createNode animCurveTA -n "Pelvis_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "Pelvis_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "Pelvis_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "Pelvis_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "Pelvis_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "Pelvis_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "L_Arm_Tip_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "L_Arm_Tip_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 3.5527136788005009e-015 2 3.5527136788005009e-015
		 3 3.5527136788005009e-015 4 3.5527136788005009e-015 5 3.5527136788005009e-015 6 3.5527136788005009e-015
		 7 3.5527136788005009e-015 8 3.5527136788005009e-015 9 3.5527136788005009e-015 10 3.5527136788005009e-015
		 11 3.5527136788005009e-015 12 3.5527136788005009e-015 13 3.5527136788005009e-015
		 14 3.5527136788005009e-015 15 3.5527136788005009e-015 16 3.5527136788005009e-015
		 17 3.5527136788005009e-015 18 3.5527136788005009e-015 19 3.5527136788005009e-015
		 20 3.5527136788005009e-015 21 3.5527136788005009e-015 22 3.5527136788005009e-015
		 23 3.5527136788005009e-015 24 3.5527136788005009e-015 25 3.5527136788005009e-015
		 26 3.5527136788005009e-015 27 3.5527136788005009e-015 28 3.5527136788005009e-015
		 29 3.5527136788005009e-015 30 3.5527136788005009e-015;
createNode animCurveTL -n "L_Arm_Tip_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 -48.703339007482086 2 -48.703339007482086
		 3 -48.703339007482086 4 -48.703339007482086 5 -48.703339007482086 6 -48.703339007482086
		 7 -48.703339007482086 8 -48.703339007482086 9 -48.703339007482086 10 -48.703339007482086
		 11 -48.703339007482086 12 -48.703339007482086 13 -48.703339007482086 14 -48.703339007482086
		 15 -48.703339007482086 16 -48.703339007482086 17 -48.703339007482086 18 -48.703339007482086
		 19 -48.703339007482086 20 -48.703339007482086 21 -48.703339007482086 22 -48.703339007482086
		 23 -48.703339007482086 24 -48.703339007482086 25 -48.703339007482086 26 -48.703339007482086
		 27 -48.703339007482086 28 -48.703339007482086 29 -48.703339007482086 30 -48.703339007482086;
createNode animCurveTL -n "L_Arm_Tip_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "L_Arm_Tip_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "L_Arm_Tip_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "L_Arm_Tip_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "L_Arm_Tip_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "L_Arm_Tip_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "L_Arm_Tip_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Leg_Tip_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTL -n "R_Leg_Tip_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTL -n "R_Leg_Tip_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 -71.462597 2 -71.462597 3 -71.462597 4 -71.462597
		 5 -71.462597 6 -71.462597 7 -71.462597 8 -71.462597 9 -71.462597 10 -71.462597 11 -71.462597
		 12 -71.462597 13 -71.462597 14 -71.462597 15 -71.462597 16 -71.462597 17 -71.462597
		 18 -71.462597 19 -71.462597 20 -71.462597 21 -71.462597 22 -71.462597 23 -71.462597
		 24 -71.462597 25 -71.462597 26 -71.462597 27 -71.462597 28 -71.462597 29 -71.462597
		 30 -71.462597;
createNode animCurveTL -n "R_Leg_Tip_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "R_Leg_Tip_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "R_Leg_Tip_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTA -n "R_Leg_Tip_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0;
createNode animCurveTU -n "R_Leg_Tip_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Leg_Tip_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
createNode animCurveTU -n "R_Leg_Tip_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1;
select -ne :time1;
	setAttr ".o" 15;
	setAttr ".unw" 15;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 30;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 30;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "Skeleton_visibility.o" "voodoo_doll_rigRN.phl[1]";
connectAttr "Skeleton_translateX.o" "voodoo_doll_rigRN.phl[2]";
connectAttr "Skeleton_translateY.o" "voodoo_doll_rigRN.phl[3]";
connectAttr "Skeleton_translateZ.o" "voodoo_doll_rigRN.phl[4]";
connectAttr "Skeleton_rotateX.o" "voodoo_doll_rigRN.phl[5]";
connectAttr "Skeleton_rotateY.o" "voodoo_doll_rigRN.phl[6]";
connectAttr "Skeleton_rotateZ.o" "voodoo_doll_rigRN.phl[7]";
connectAttr "Skeleton_scaleX.o" "voodoo_doll_rigRN.phl[8]";
connectAttr "Skeleton_scaleY.o" "voodoo_doll_rigRN.phl[9]";
connectAttr "Skeleton_scaleZ.o" "voodoo_doll_rigRN.phl[10]";
connectAttr "Pelvis_scaleX.o" "voodoo_doll_rigRN.phl[11]";
connectAttr "Pelvis_scaleY.o" "voodoo_doll_rigRN.phl[12]";
connectAttr "Pelvis_scaleZ.o" "voodoo_doll_rigRN.phl[13]";
connectAttr "Pelvis_translateY.o" "voodoo_doll_rigRN.phl[14]";
connectAttr "Pelvis_translateX.o" "voodoo_doll_rigRN.phl[15]";
connectAttr "Pelvis_translateZ.o" "voodoo_doll_rigRN.phl[16]";
connectAttr "Pelvis_visibility.o" "voodoo_doll_rigRN.phl[17]";
connectAttr "Pelvis_rotateX.o" "voodoo_doll_rigRN.phl[18]";
connectAttr "Pelvis_rotateY.o" "voodoo_doll_rigRN.phl[19]";
connectAttr "Pelvis_rotateZ.o" "voodoo_doll_rigRN.phl[20]";
connectAttr "Chest_scaleX.o" "voodoo_doll_rigRN.phl[21]";
connectAttr "Chest_scaleY.o" "voodoo_doll_rigRN.phl[22]";
connectAttr "Chest_scaleZ.o" "voodoo_doll_rigRN.phl[23]";
connectAttr "Chest_visibility.o" "voodoo_doll_rigRN.phl[24]";
connectAttr "Chest_translateX.o" "voodoo_doll_rigRN.phl[25]";
connectAttr "Chest_translateY.o" "voodoo_doll_rigRN.phl[26]";
connectAttr "Chest_translateZ.o" "voodoo_doll_rigRN.phl[27]";
connectAttr "Chest_rotateX.o" "voodoo_doll_rigRN.phl[28]";
connectAttr "Chest_rotateY.o" "voodoo_doll_rigRN.phl[29]";
connectAttr "Chest_rotateZ.o" "voodoo_doll_rigRN.phl[30]";
connectAttr "L_Arm_scaleX.o" "voodoo_doll_rigRN.phl[31]";
connectAttr "L_Arm_scaleY.o" "voodoo_doll_rigRN.phl[32]";
connectAttr "L_Arm_scaleZ.o" "voodoo_doll_rigRN.phl[33]";
connectAttr "L_Arm_rotateX.o" "voodoo_doll_rigRN.phl[34]";
connectAttr "L_Arm_rotateY.o" "voodoo_doll_rigRN.phl[35]";
connectAttr "L_Arm_rotateZ.o" "voodoo_doll_rigRN.phl[36]";
connectAttr "L_Arm_visibility.o" "voodoo_doll_rigRN.phl[37]";
connectAttr "L_Arm_translateX.o" "voodoo_doll_rigRN.phl[38]";
connectAttr "L_Arm_translateY.o" "voodoo_doll_rigRN.phl[39]";
connectAttr "L_Arm_translateZ.o" "voodoo_doll_rigRN.phl[40]";
connectAttr "L_Arm_Tip_visibility.o" "voodoo_doll_rigRN.phl[41]";
connectAttr "L_Arm_Tip_translateX.o" "voodoo_doll_rigRN.phl[42]";
connectAttr "L_Arm_Tip_translateY.o" "voodoo_doll_rigRN.phl[43]";
connectAttr "L_Arm_Tip_translateZ.o" "voodoo_doll_rigRN.phl[44]";
connectAttr "L_Arm_Tip_rotateX.o" "voodoo_doll_rigRN.phl[45]";
connectAttr "L_Arm_Tip_rotateY.o" "voodoo_doll_rigRN.phl[46]";
connectAttr "L_Arm_Tip_rotateZ.o" "voodoo_doll_rigRN.phl[47]";
connectAttr "L_Arm_Tip_scaleX.o" "voodoo_doll_rigRN.phl[48]";
connectAttr "L_Arm_Tip_scaleY.o" "voodoo_doll_rigRN.phl[49]";
connectAttr "L_Arm_Tip_scaleZ.o" "voodoo_doll_rigRN.phl[50]";
connectAttr "Head_rotateX.o" "voodoo_doll_rigRN.phl[51]";
connectAttr "Head_rotateY.o" "voodoo_doll_rigRN.phl[52]";
connectAttr "Head_rotateZ.o" "voodoo_doll_rigRN.phl[53]";
connectAttr "Head_visibility.o" "voodoo_doll_rigRN.phl[54]";
connectAttr "Head_translateX.o" "voodoo_doll_rigRN.phl[55]";
connectAttr "Head_translateY.o" "voodoo_doll_rigRN.phl[56]";
connectAttr "Head_translateZ.o" "voodoo_doll_rigRN.phl[57]";
connectAttr "Head_scaleX.o" "voodoo_doll_rigRN.phl[58]";
connectAttr "Head_scaleY.o" "voodoo_doll_rigRN.phl[59]";
connectAttr "Head_scaleZ.o" "voodoo_doll_rigRN.phl[60]";
connectAttr "R_Arm_scaleX.o" "voodoo_doll_rigRN.phl[61]";
connectAttr "R_Arm_scaleY.o" "voodoo_doll_rigRN.phl[62]";
connectAttr "R_Arm_scaleZ.o" "voodoo_doll_rigRN.phl[63]";
connectAttr "R_Arm_rotateX.o" "voodoo_doll_rigRN.phl[64]";
connectAttr "R_Arm_rotateY.o" "voodoo_doll_rigRN.phl[65]";
connectAttr "R_Arm_rotateZ.o" "voodoo_doll_rigRN.phl[66]";
connectAttr "R_Arm_visibility.o" "voodoo_doll_rigRN.phl[67]";
connectAttr "R_Arm_translateX.o" "voodoo_doll_rigRN.phl[68]";
connectAttr "R_Arm_translateY.o" "voodoo_doll_rigRN.phl[69]";
connectAttr "R_Arm_translateZ.o" "voodoo_doll_rigRN.phl[70]";
connectAttr "R_Arm_Tip_visibility.o" "voodoo_doll_rigRN.phl[71]";
connectAttr "R_Arm_Tip_translateX.o" "voodoo_doll_rigRN.phl[72]";
connectAttr "R_Arm_Tip_translateY.o" "voodoo_doll_rigRN.phl[73]";
connectAttr "R_Arm_Tip_translateZ.o" "voodoo_doll_rigRN.phl[74]";
connectAttr "R_Arm_Tip_rotateX.o" "voodoo_doll_rigRN.phl[75]";
connectAttr "R_Arm_Tip_rotateY.o" "voodoo_doll_rigRN.phl[76]";
connectAttr "R_Arm_Tip_rotateZ.o" "voodoo_doll_rigRN.phl[77]";
connectAttr "R_Arm_Tip_scaleX.o" "voodoo_doll_rigRN.phl[78]";
connectAttr "R_Arm_Tip_scaleY.o" "voodoo_doll_rigRN.phl[79]";
connectAttr "R_Arm_Tip_scaleZ.o" "voodoo_doll_rigRN.phl[80]";
connectAttr "L_Leg_scaleX.o" "voodoo_doll_rigRN.phl[81]";
connectAttr "L_Leg_scaleY.o" "voodoo_doll_rigRN.phl[82]";
connectAttr "L_Leg_scaleZ.o" "voodoo_doll_rigRN.phl[83]";
connectAttr "L_Leg_rotateX.o" "voodoo_doll_rigRN.phl[84]";
connectAttr "L_Leg_rotateY.o" "voodoo_doll_rigRN.phl[85]";
connectAttr "L_Leg_rotateZ.o" "voodoo_doll_rigRN.phl[86]";
connectAttr "L_Leg_visibility.o" "voodoo_doll_rigRN.phl[87]";
connectAttr "L_Leg_translateX.o" "voodoo_doll_rigRN.phl[88]";
connectAttr "L_Leg_translateY.o" "voodoo_doll_rigRN.phl[89]";
connectAttr "L_Leg_translateZ.o" "voodoo_doll_rigRN.phl[90]";
connectAttr "L_Leg_Tip_visibility.o" "voodoo_doll_rigRN.phl[91]";
connectAttr "L_Leg_Tip_translateX.o" "voodoo_doll_rigRN.phl[92]";
connectAttr "L_Leg_Tip_translateY.o" "voodoo_doll_rigRN.phl[93]";
connectAttr "L_Leg_Tip_translateZ.o" "voodoo_doll_rigRN.phl[94]";
connectAttr "L_Leg_Tip_rotateX.o" "voodoo_doll_rigRN.phl[95]";
connectAttr "L_Leg_Tip_rotateY.o" "voodoo_doll_rigRN.phl[96]";
connectAttr "L_Leg_Tip_rotateZ.o" "voodoo_doll_rigRN.phl[97]";
connectAttr "L_Leg_Tip_scaleX.o" "voodoo_doll_rigRN.phl[98]";
connectAttr "L_Leg_Tip_scaleY.o" "voodoo_doll_rigRN.phl[99]";
connectAttr "L_Leg_Tip_scaleZ.o" "voodoo_doll_rigRN.phl[100]";
connectAttr "R_Leg_scaleX.o" "voodoo_doll_rigRN.phl[101]";
connectAttr "R_Leg_scaleY.o" "voodoo_doll_rigRN.phl[102]";
connectAttr "R_Leg_scaleZ.o" "voodoo_doll_rigRN.phl[103]";
connectAttr "R_Leg_rotateX.o" "voodoo_doll_rigRN.phl[104]";
connectAttr "R_Leg_rotateY.o" "voodoo_doll_rigRN.phl[105]";
connectAttr "R_Leg_rotateZ.o" "voodoo_doll_rigRN.phl[106]";
connectAttr "R_Leg_visibility.o" "voodoo_doll_rigRN.phl[107]";
connectAttr "R_Leg_translateX.o" "voodoo_doll_rigRN.phl[108]";
connectAttr "R_Leg_translateY.o" "voodoo_doll_rigRN.phl[109]";
connectAttr "R_Leg_translateZ.o" "voodoo_doll_rigRN.phl[110]";
connectAttr "R_Leg_Tip_visibility.o" "voodoo_doll_rigRN.phl[111]";
connectAttr "R_Leg_Tip_translateX.o" "voodoo_doll_rigRN.phl[112]";
connectAttr "R_Leg_Tip_translateY.o" "voodoo_doll_rigRN.phl[113]";
connectAttr "R_Leg_Tip_translateZ.o" "voodoo_doll_rigRN.phl[114]";
connectAttr "R_Leg_Tip_rotateX.o" "voodoo_doll_rigRN.phl[115]";
connectAttr "R_Leg_Tip_rotateY.o" "voodoo_doll_rigRN.phl[116]";
connectAttr "R_Leg_Tip_rotateZ.o" "voodoo_doll_rigRN.phl[117]";
connectAttr "R_Leg_Tip_scaleX.o" "voodoo_doll_rigRN.phl[118]";
connectAttr "R_Leg_Tip_scaleY.o" "voodoo_doll_rigRN.phl[119]";
connectAttr "R_Leg_Tip_scaleZ.o" "voodoo_doll_rigRN.phl[120]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of voodoodoll@walk.ma
