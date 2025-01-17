-- premake5.lua
workspace "3DMpGame-Client"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "3DMpGame-Client"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }  
    defines { "IMGUI_DEFINE_MATH_OPERATORS" }

-- Directories
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
WalnutNetworkingBinDir = "Walnut/Walnut-Modules/Walnut-Networking/vendor/GameNetworkingSockets/bin/%{cfg.system}/%{cfg.buildcfg}/"

include "Walnut/Build-Walnut-External.lua"

group "App"
    include "3DMpGame-Common/Build-3DMpGame-Common.lua"
    include "3DMpGame-Client/Build-3DMpGame-Client.lua"
group ""