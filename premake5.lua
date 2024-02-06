project "optick"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	conformancemode "true"
	staticruntime "off"

	targetdir ("%{wks.location}/.build/" .. OutputDir .. "/%{prj.name}")
	objdir ("%{wks.location}/.build/temp/" .. OutputDir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp",
	}

	defines
	{
		"OPTICK_EXPORTS",
		"OPTICK_ENABLE_GPU_D3D12=0",
		"OPTICK_ENABLE_GPU_VULKAN=0"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Shipping"
		runtime "Release"
		optimize "speed"