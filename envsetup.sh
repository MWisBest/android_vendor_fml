# If we're MWisBest, set up our usual default exports (except for ccache)...
if [ $(whoami) == "kyle" -a $(hostname) == "M6" ]; then
	# ...unless we don't want to!
	if [ "$MW_FORCE_DEFAULTS" != "true" ]; then
		export MW_FORCE_DEFAULTS=false
		export TARGET_DUMMY_RECOVERY_PATCH=true
		export TARGET_DUMMY_RECOVERY_RESOURCES=true
		export ART_BUILD_TARGET_DEBUG=false
		export ART_BUILD_HOST_DEBUG=false
		export USE_DEX2OAT_DEBUG=false
	fi
fi
