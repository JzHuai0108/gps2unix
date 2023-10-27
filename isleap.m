
% Test to see if a GPS second is a leap second
function isLeap = isleap(gpsTime)
% code adapted from https://www.andrews.edu/~tzs/timeconv/timealgorithm.html
    isLeap = false;
    leaps = getleaps();
    lenLeaps = length(leaps);
    for i = 1:lenLeaps
        if gpsTime == leaps(i)
        isLeap = true;
        end
    end
end