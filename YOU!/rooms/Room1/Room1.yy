{
  "$GMRoom":"",
  "%Name":"Room1",
  "creationCodeFile":"",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_33E18A9","path":"rooms/Room1/Room1.yy",},
    {"name":"inst_579527A9","path":"rooms/Room1/Room1.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMREffectLayer":"","%Name":"Effect_1","depth":0,"effectEnabled":true,"effectType":"_filter_vignette","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Effect_1","properties":[
        {"name":"g_VignetteEdges","type":0,"value":"0.35",},
        {"name":"g_VignetteEdges","type":0,"value":"0.9",},
        {"name":"g_VignetteSharpness","type":0,"value":"1",},
        {"name":"g_VignetteTexture","type":2,"value":"_filter_vignette_texture",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMREffectLayer":"","%Name":"Effect_2","depth":100,"effectEnabled":true,"effectType":"_effect_glow","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Effect_2","properties":[
        {"name":"g_GlowRadius","type":0,"value":"40",},
        {"name":"g_GlowQuality","type":0,"value":"5",},
        {"name":"g_GlowIntensity","type":0,"value":"0.05",},
        {"name":"g_GlowGamma","type":0,"value":"0",},
        {"name":"g_GlowAlpha","type":0,"value":"1",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMREffectLayer":"","%Name":"Effect_3","depth":200,"effectEnabled":true,"effectType":"_filter_tintfilter","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Effect_3","properties":[
        {"name":"g_TintCol","type":1,"value":"#FFFF2167",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMREffectLayer":"","%Name":"Effect_4","depth":300,"effectEnabled":true,"effectType":"_filter_whitenoise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Effect_4","properties":[
        {"name":"g_WhiteNoiseIntensity","type":0,"value":"0.1",},
        {"name":"g_WhiteNoiseAnimation","type":0,"value":"1",},
        {"name":"g_WhiteNoiseTexture","type":2,"value":"_filter_whitenoise_noise",},
      ],"resourceType":"GMREffectLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":false,},
    {"$GMRInstanceLayer":"","%Name":"Instances","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"","%Name":"inst_33E18A9","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_33E18A9","objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":352.0,"y":160.0,},
        {"$GMRInstance":"","%Name":"inst_579527A9","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_579527A9","objectId":{"name":"obj_map","path":"objects/obj_map/obj_map.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":128.0,"y":64.0,},
      ],"layers":[],"name":"Instances","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"WallsTiles","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"WallsTiles","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[-240,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"walls_tiles","path":"tilesets/walls_tiles/walls_tiles.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "name":"Room1",
  "parent":{
    "name":"Rooms",
    "path":"folders/Rooms.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":768,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":1280,
  },
  "sequenceId":null,
  "views":[
    {"hborder":32,"hport":768,"hspeed":-1,"hview":320,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1366,"wview":640,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":false,
    "enableViews":false,
    "inheritViewSettings":false,
  },
  "volume":1.0,
}