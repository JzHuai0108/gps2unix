function test_gps2unix()
    gpsweek = 2285;
    gpssec = 294055.24;
    gpstime = gpsweek * 7 * 24 * 3600 + gpssec;
    fprintf('gps time %.9f\n', gpstime);
    unix = gps2unix(gpstime);
    unix2 = gpstime + 315964800 - 18;
    unix3 = 1698226837.24; % per https://www.andrews.edu/~tzs/timeconv/timeconvert.php
    fprintf('unix %.9f- unix2 %.9f = %.9f, unix - unix3 = %.9f\n', ...
        unix, unix2, unix - unix2, unix- unix3);
    assert(unix - unix2 == 0);
    assert(unix - unix3 == 0);
end
