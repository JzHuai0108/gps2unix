% Convert GPS Time to Unix Time
function unixTime = gps2unix(gpsTime)
% code adapted from https://www.andrews.edu/~tzs/timeconv/timealgorithm.html
    % Add offset in seconds
    unixTime = gpsTime + 315964800;
    nleaps = countleaps(gpsTime, 'gps2unix');
    unixTime = unixTime - nleaps;
    if (isleap(gpsTime))
    unixTime = unixTime + 0.5;
    end
end
