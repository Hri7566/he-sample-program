-- premake5 build file
-- https://premake.github.io/

---@diagnostic disable
-- stylua: ignore start

require "premake-ninja.ninja"

workspace "Hengine"
	configurations { "Debug", "Release" }
	platforms { "Linux", "Win64" }

	project "HengineTest2"
		kind "ConsoleApp"
		language "C++"
		targetdir "bin/test/%{cfg.buildcfg}"
		links { "hengine", "raylib" }

		files { "src/test/**.hpp", "src/test/**.cpp" }

		filter "platforms:Linux"
			system "Linux"
			architecture "x86_64"

		filter "platforms:Win64"
			system "Windows"
			architecture "x86_64"

		filter "configurations:Debug"
			defines { "DEBUG" }
			symbols "On"

		filter "configurations:Release"
			defines { "NDEBUG" }
			optimize "On"

-- stylua: ignore end
