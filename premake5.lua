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

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Shipping"
		runtime "Release"
		optimize "speed"