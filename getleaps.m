% Define GPS leap seconds
function leaps = getleaps()
% code adapted from https://www.andrews.edu/~tzs/timeconv/timealgorithm.html
    leaps = [46828800, 78364801, 109900802, 173059203, 252028804, 315187205, 346723206, 393984007, 425520008, 457056009, 504489610, 551750411, 599184012, 820108813, 914803214, 1025136015, 1119744016, 1167264017];
end
