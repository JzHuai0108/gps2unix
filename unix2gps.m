
% Convert Unix Time to GPS Time
function gpsTime = unix2gps(unixTime)
% code adapted from https://www.andrews.edu/~tzs/timeconv/timealgorithm.html
    % Add offset in seconds
    if (fmod(unixTime, 1) != 0)
        unixTime = unixTime - 0.5;
        isLeap = 1;
    else
        isLeap = 0;
    end
    gpsTime = unixTime - 315964800;
    nleaps = countleaps(gpsTime, 'unix2gps');
    gpsTime = gpsTime + nleaps + isLeap;
end
