# function for connecting to Purdue CS servers
function hankinsj
    if count $argv > /dev/null
        ssh hankinsj@$argv[1].cs.purdue.edu
    else
        ssh hankinsj@xinu10.cs.purdue.edu
    end
end

