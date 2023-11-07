function test_gps2unix()
    gpsweek = 2285;
    gpssec = 294055.24;
    gpstime = gpsweek * 7 * 24 * 3600 + gpssec;
    fprintf('gps time %.9f\n', gpstime);
    unix = gps2unix(gpstime);
    gps2 = unix2gps(unix);
    assert(gpstime - gps2 == 0);
    unix2 = gpstime + 315964800 - 18;
    unix3 = 1698226837.24; % per https://www.andrews.edu/~tzs/timeconv/timeconvert.php
    fprintf('unix %.9f, unix - unix2 = %.9f, unix - unix3 = %.9f\n', ...
        unix, unix - unix2, unix- unix3);
    assert(unix - unix2 == 0);
    assert(unix - unix3 == 0);

    unix = 1662203356.64;
    gps = unix2gps(unix);
    unix2 = gps + 315964800 - 18;
    unix3 = gps2unix(gps);
    assert(unix - unix2 == 0);
    assert(unix2 - unix3 == 0);

    gpsweek = 2287;
    gpssec = 31929.7;
    gpstime = gpsweek * 7 * 24 * 3600 + gpssec;
    unix = gps2unix(gpstime);
    gps2 = unix2gps(unix);
    assert(gpstime - gps2 == 0);
    unix2 = gpstime + 315964800 - 18;
    assert(unix - unix2 == 0);
end
