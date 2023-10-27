

% Count number of leap seconds that have passed
function nleaps = countleaps(gpsTime, dirFlag)
% code adapted from https://www.andrews.edu/~tzs/timeconv/timealgorithm.html
    leaps = getleaps();
    lenLeaps = length(leaps);
    nleaps = 0;  % number of leap seconds prior to gpsTime
    for i = 1:lenLeaps
        if (strcmp('unix2gps', dirFlag) == 1)
        if gpsTime >= leaps(i) - i
            nleaps = nleaps + 1;
        end
        elseif (strcmp('gps2unix', dirFlag) == 1)
        if gpsTime >= leaps(i)
            nleaps = nleaps + 1;
        end
        else
        echo "ERROR Invalid Flag!";
        end
    end
end
