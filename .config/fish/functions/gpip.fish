# Defined in - @ line 1
function gpip --description 'alias gpip env PIP_REQUIRE_VIRTUALENV=false pip'
	env PIP_REQUIRE_VIRTUALENV=false pip $argv;
end
