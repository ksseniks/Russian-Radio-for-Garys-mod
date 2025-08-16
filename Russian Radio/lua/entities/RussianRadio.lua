---------------------------------INCLUDE-------------------------------- 
AddCSLuaFile()
---------------------------------LIST ENT.NAME_VARIABLES-------------------------------- 
ENT.Base = "base_anim"
ENT.Type = "anim"

ENT.PrintName = "Russian Radio"
ENT.Author = "kseniks"
ENT.Category = "Fun + Games"

ENT.Spawnable = true
ENT.AdminOnly = false
ENT.RenderGroup = RENDERGROUP_TRANSLUCENT
ENT.VolumeRadio = 15
---------------------------------END LIST ENT.NAME_VARIABLES-------------------------------- 
--==========================================================================================================--
---------------------------------CREATING A NETWORKVAR---------------------------------
function ENT:SetupDataTables()
	self:NetworkVar("Int", 0, "RadioStantion")
end
---------------------------------END CREATING A NETWORKVAR---------------------------------
--==========================================================================================================--
---------------------------------RADIO STANTION---------------------------------
local RadioStations = {
    {id = 2, name = "Радио Шансон"},
    {id = 3, name = "radio/3"},
    {id = 4, name = "Энерджи"},
    {id = 5, name = "Эхо Москвы"},
    {id = 30, name = "radio/30"},
    {id = 33, name = "Наше Радио"},
    {id = 34, name = "radio/34"},
    {id = 35, name = "radio/35"},
    {id = 36, name = "radio/36"},
    {id = 38, name = "radio/38"},
    {id = 42, name = "radio/42"},
    {id = 44, name = "radio/44"},
    {id = 50, name = "radio/50"},
    {id = 51, name = "radio/51"},
    {id = 55, name = "radio/55"},
    {id = 56, name = "radio/56"},
    {id = 57, name = "radio/57"},
    {id = 59, name = "radio/59"},
    {id = 60, name = "radio/60"},
    {id = 61, name = "radio/61"},
    {id = 63, name = "radio/63"},
    {id = 64, name = "radio/64"},
    {id = 67, name = "radio/67"},
    {id = 68, name = "radio/68"},
    {id = 76, name = "radio/76"},
    {id = 77, name = "radio/962"},
    {id = 78, name = "radio/78"},
    {id = 79, name = "radio/79"},
    {id = 80, name = "radio/80"},
    {id = 81, name = "radio/129"},
    {id = 82, name = "radio/82"},
    {id = 83, name = "radio/83"},
    {id = 85, name = "radio/85"},
    {id = 87, name = "radio/87"},
    {id = 88, name = "radio/88"},
    {id = 89, name = "radio/89"},
    {id = 91, name = "foreign"},
    {id = 92, name = "radio/92"},
    {id = 93, name = "radio/93"},
    {id = 94, name = "radio/94"},
    {id = 96, name = "radio/96"},
    {id = 100, name = "edm"},
    {id = 103, name = "radio/103"},
    {id = 104, name = "radio/104"},
    {id = 107, name = "kids"},
    {id = 110, name = "radio/110"},
    {id = 112, name = "radio/112"},
    {id = 118, name = "radio/118"},
    {id = 127, name = "radio/127"},
    {id = 129, name = "radio/129"},
    {id = 132, name = "edm"},
    {id = 133, name = "radio/133"},
    {id = 138, name = "radio/138"},
    {id = 142, name = "radio/142"},
    {id = 145, name = "radio/145"},
    {id = 147, name = "radio/147"},
    {id = 158, name = "radio/158"},
    {id = 162, name = "radio/162"},
    {id = 177, name = "radio/177"},
    {id = 184, name = "radio/184"},
    {id = 192, name = "radio/192"},
    {id = 195, name = "radio/64"},
    {id = 203, name = "radio/203"},
    {id = 205, name = "radio/205"},
    {id = 208, name = "radio/208"},
    {id = 221, name = "radio/221"},
    {id = 236, name = "radio/236"},
    {id = 257, name = "radio/257"},
    {id = 269, name = "radio/269"},
    {id = 291, name = "radio/291"},
    {id = 296, name = "radio/296"},
    {id = 308, name = "radio/308"},
    {id = 310, name = "radio/310"},
    {id = 316, name = "radio/316"},
    {id = 354, name = "radio/354"},
    {id = 361, name = "radio/361"},
    {id = 362, name = "radio/362"},
    {id = 364, name = "radio/364"},
    {id = 369, name = "radio/369"},
    {id = 373, name = "radio/373"},
    {id = 384, name = "radio/384"},
    {id = 400, name = "radio/400"},
    {id = 406, name = "radio/406"},
    {id = 420, name = "radio/420"},
    {id = 422, name = "radio/422"},
    {id = 423, name = "radio/423"},
    {id = 426, name = "radio/426"},
    {id = 427, name = "radio/427"},
    {id = 429, name = "radio/429"},
    {id = 436, name = "radio/436"},
    {id = 444, name = "radio/444"},
    {id = 457, name = "radio/457"},
    {id = 465, name = "radio/465"},
    {id = 469, name = "radio/469"},
    {id = 471, name = "radio/471"},
    {id = 472, name = "radio/472"},
    {id = 477, name = "radio/477"},
    {id = 478, name = "radio/478"},
    {id = 482, name = "radio/482"},
    {id = 485, name = "radio/485"},
    {id = 487, name = "radio/487"},
    {id = 488, name = "radio/488"},
    {id = 491, name = "radio/491"},
    {id = 495, name = "radio/495"},
    {id = 499, name = "chillout"},
    {id = 523, name = "radio/523"},
    {id = 524, name = "radio/524"},
    {id = 526, name = "radio/526"},
    {id = 541, name = "radio/541"},
    {id = 542, name = "radio/542"},
    {id = 543, name = "radio/543"},
    {id = 561, name = "radio/561"},
    {id = 597, name = "radio/597"},
    {id = 602, name = "radio/602"},
    {id = 603, name = "radio/603"},
    {id = 608, name = "radio/608"},
    {id = 609, name = "radio/609"},
    {id = 611, name = "radio/611"},
    {id = 612, name = "news"},
    {id = 614, name = "radio/614"},
    {id = 615, name = "radio/615"},
    {id = 616, name = "radio/616"},
    {id = 617, name = "radio/617"},
    {id = 620, name = "radio/620"},
    {id = 626, name = "radio/626"},
    {id = 637, name = "radio/637"},
    {id = 638, name = "radio/638"},
    {id = 639, name = "radio/639"},
    {id = 644, name = "radio/644"},
    {id = 646, name = "radio/646"},
    {id = 649, name = "radio/649"},
    {id = 650, name = "radio/650"},
    {id = 652, name = "radio/652"},
    {id = 657, name = "radio/657"},
    {id = 658, name = "radio/64"},
    {id = 659, name = "radio/177"},
    {id = 660, name = "energy"},
    {id = 666, name = "radio/666"},
    {id = 677, name = "radio/677"},
    {id = 679, name = "radio/679"},
    {id = 682, name = "radio/682"},
    {id = 687, name = "radio/687"},
    {id = 692, name = "radio/692"},
    {id = 708, name = "radio/708"},
    {id = 710, name = "radio/710"},
    {id = 715, name = "radio/715"},
    {id = 716, name = "radio/716"},
    {id = 721, name = "radio/721"},
    {id = 723, name = "radio/723"},
    {id = 724, name = "radio/724"},
    {id = 726, name = "radio/162"},
    {id = 729, name = "radio/729"},
    {id = 730, name = "radio/730"},
    {id = 742, name = "Красноярск"},
    {id = 751, name = "Екатеринбург"},
    {id = 760, name = "Новосибирск"},
    {id = 765, name = "Санкт-Петербург"},
    {id = 774, name = "Москва"},
    {id = 783, name = "Краснодар"},
    {id = 792, name = "Самара"},
    {id = 797, name = "Челябинск"},
    {id = 806, name = "Уфа"},
    {id = 811, name = "Ростов-на-Дону"},
    {id = 818, name = "Иркутск"},
    {id = 820, name = "Пермь"},
    {id = 835, name = "Кемерово"},
    {id = 839, name = "Воронеж"},
    {id = 843, name = "Казань"},
    {id = 847, name = "Барнаул"},
    {id = 850, name = "Саратов"},
    {id = 853, name = "Ставрополь"},
    {id = 855, name = "Оренбург"},
    {id = 1404, name = "Омск"},
    {id = 1405, name = "radio/1405"},
    {id = 1411, name = "pop"},
    {id = 1413, name = "radio/1413"},
    {id = 1414, name = "radio/1414"},
    {id = 1454, name = "radio/1454"},
    {id = 1456, name = "radio/1456"},
    {id = 1458, name = "radio/1458"},
    {id = 1459, name = "radio/1459"},
    {id = 1460, name = "radio/1460"},
    {id = 1461, name = "radio/1461"},
    {id = 1462, name = "ost"},
    {id = 1464, name = "radio/1464"},
    {id = 1465, name = "radio/1465"},
    {id = 1467, name = "audiobooks"},
    {id = 1468, name = "radio/1468"},
    {id = 1469, name = "radio/1469"},
    {id = 1470, name = "radio/1470"},
    {id = 1473, name = "radio/1473"},
    {id = 1476, name = "radio/1476"},
    {id = 1477, name = "radio/1477"},
    {id = 1478, name = "radio/1478"},
    {id = 1480, name = "radio/1480"},
    {id = 1481, name = "radio/1481"},
    {id = 1482, name = "radio/1482"},
    {id = 1483, name = "radio/1483"},
    {id = 1484, name = "radio/1484"},
    {id = 1485, name = "radio/1485"},
    {id = 1486, name = "radio/1486"},
    {id = 1487, name = "radio/1487"},
    {id = 1489, name = "radio/1489"},
    {id = 1490, name = "radio/1490"},
    {id = 1491, name = "radio/1491"},
    {id = 1492, name = "radio/1492"},
    {id = 1494, name = "radio/1494"},
    {id = 1496, name = "radio/1496"},
    {id = 1500, name = "radio/1500"},
    {id = 1504, name = "radio/1504"},
    {id = 1505, name = "radio/1505"},
    {id = 1506, name = "radio/1506"},
    {id = 1507, name = "radio/1507"},
    {id = 1508, name = "radio/1508"},
    {id = 1509, name = "radio/1509"},
    {id = 1510, name = "radio/1510"},
    {id = 1511, name = "radio/1511"},
    {id = 1512, name = "radio/1512"},
    {id = 1518, name = "radio/1518"},
    {id = 1519, name = "radio/1519"},
    {id = 1527, name = "radio/1527"},
    {id = 1528, name = "radio/1528"},
    {id = 1530, name = "radio/1530"},
    {id = 1532, name = "radio/1532"},
    {id = 1536, name = "radio/1536"},
    {id = 1539, name = "radio/1539"},
    {id = 1540, name = "radio/1540"},
    {id = 1543, name = "radio/1543"},
    {id = 1547, name = "radio/1547"},
    {id = 1549, name = "radio/1549"},
    {id = 1551, name = "radio/1551"},
    {id = 1554, name = "volnorez"},
    {id = 1556, name = "radio/1556"},
    {id = 1558, name = "radio/1558"},
    {id = 1561, name = "radio/1561"},
    {id = 1562, name = "radio/1562"},
    {id = 1599, name = "radio/1599"},
    {id = 1601, name = "radio/1601"},
    {id = 1606, name = "radio/1606"},
    {id = 1607, name = "radio/1607"},
    {id = 1608, name = "radio/1608"},
    {id = 1610, name = "radio/1610"},
    {id = 1614, name = "radio/1614"},
    {id = 1616, name = "radio/1616"},
    {id = 1617, name = "radio/1617"},
    {id = 1618, name = "radio/1618"},
    {id = 1620, name = "radio/1620"},
    {id = 1623, name = "radio/1623"},
    {id = 1626, name = "radio/1626"},
    {id = 1627, name = "radio/1627"},
    {id = 1631, name = "radio/1631"},
    {id = 1640, name = "radio/1640"},
    {id = 1641, name = "radio/1641"},
    {id = 1642, name = "radio/1642"},
    {id = 1643, name = "radio/1643"},
    {id = 1647, name = "radio/1647"},
    {id = 1649, name = "radio/1649"},
    {id = 1650, name = "radio/1650"},
    {id = 1651, name = "radio/1651"},
    {id = 1658, name = "radio/1658"},
    {id = 1664, name = "radio/1664"},
    {id = 1674, name = "radio/1674"},
    {id = 1675, name = "radio/1675"},
    {id = 1676, name = "radio/1676"},
    {id = 1677, name = "radio/1677"},
    {id = 1678, name = "radio/1678"},
    {id = 1681, name = "radio/1681"},
    {id = 1683, name = "radio/1683"},
    {id = 1685, name = "radio/1685"},
    {id = 1689, name = "radio/1689"},
    {id = 1690, name = "radio/1690"},
    {id = 1693, name = "radio/1693"},
    {id = 1696, name = "radio/1696"},
    {id = 1700, name = "radio/1700"},
    {id = 1701, name = "radio/1701"},
    {id = 1702, name = "radio/1702"},
    {id = 1704, name = "radio/1704"},
    {id = 1705, name = "radio/1705"},
    {id = 1706, name = "radio/1706"},
    {id = 1707, name = "radio/1707"},
    {id = 1708, name = "radio/1708"},
    {id = 1709, name = "radio/1709"},
    {id = 1710, name = "radio/1710"},
    {id = 1711, name = "radio/1711"},
    {id = 1712, name = "radio/1712"},
    {id = 1713, name = "radio/1713"},
    {id = 1715, name = "radio/1715"},
    {id = 1716, name = "radio/1716"},
    {id = 1717, name = "radio/1717"},
    {id = 1721, name = "radio/1721"},
    {id = 1722, name = "radio/1722"},
    {id = 1723, name = "radio/1723"},
    {id = 1724, name = "radio/1724"},
    {id = 1725, name = "radio/1725"},
    {id = 1728, name = "radio/1728"},
    {id = 1731, name = "radio/1731"},
    {id = 1733, name = "epicradio"},
    {id = 1734, name = "radio/1734"},
    {id = 1736, name = "radio/1736"},
    {id = 1740, name = "radio/1740"},
    {id = 1742, name = "radio/1742"},
    {id = 1743, name = "vanya"},
    {id = 1744, name = "radio/1744"},
    {id = 1745, name = "radio/1745"},
    {id = 1746, name = "radio/1746"},
    {id = 1747, name = "radio/1747"},
    {id = 1752, name = "radio/1752"},
    {id = 1754, name = "radio/1754"},
    {id = 1755, name = "radio/1755"},
    {id = 1756, name = "radio/1756"},
    {id = 1757, name = "radio/1757"},
    {id = 1758, name = "radio/1758"},
    {id = 1759, name = "radio/1759"},
    {id = 1764, name = "radio/1764"},
    {id = 1765, name = "radio/1477"},
    {id = 1767, name = "radio/1767"},
    {id = 1774, name = "radio/1774"},
    {id = 1778, name = "radio/1778"},
    {id = 1780, name = "radio/1780"},
    {id = 1781, name = "radio/1781"},
    {id = 1782, name = "radio/1782"},
    {id = 1789, name = "radio/1789"},
    {id = 1791, name = "radio/1791"},
    {id = 1793, name = "radio/1793"},
    {id = 1794, name = "radio/1794"},
    {id = 1796, name = "radio/1796"},
    {id = 1797, name = "radio/1797"},
    {id = 1798, name = "radio/1798"},
    {id = 1799, name = "radio/1799"},
    {id = 1800, name = "radio/1800"},
    {id = 1801, name = "radio/1801"},
    {id = 1802, name = "radio/1802"},
    {id = 1803, name = "radio/1803"},
    {id = 1807, name = "radio/1807"},
    {id = 1808, name = "radio/1808"},
    {id = 1810, name = "radio/1810"},
    {id = 1811, name = "radio/1811"},
    {id = 1812, name = "radio/1812"},
    {id = 1817, name = "radio/1817"},
    {id = 1822, name = "radio/1822"},
    {id = 1827, name = "radio/1827"},
    {id = 1828, name = "radio/1828"},
    {id = 1829, name = "radio/1829"},
    {id = 1830, name = "radio/1830"},
    {id = 1831, name = "radio/1831"},
    {id = 1832, name = "radio/1832"},
    {id = 1834, name = "radio/1834"},
    {id = 1839, name = "radio/1839"},
    {id = 1860, name = "radio/1860"},
    {id = 1861, name = "radio/1861"},
    {id = 1863, name = "radio/1863"},
    {id = 1864, name = "radio/1864"},
    {id = 1867, name = "radio/1867"},
    {id = 1868, name = "radio/1868"},
    {id = 1869, name = "radio/1869"},
    {id = 1870, name = "radio/1870"},
    {id = 1872, name = "radio/1872"},
    {id = 1874, name = "radio/1874"},
    {id = 1875, name = "radio/1875"},
    {id = 1876, name = "radio/1876"},
    {id = 1878, name = "radio/1878"},
    {id = 1879, name = "radio/1879"},
    {id = 1881, name = "radio/1881"},
    {id = 1883, name = "radio/1883"},
    {id = 1884, name = "radio/1884"},
    {id = 1885, name = "radio/1885"},
    {id = 1886, name = "radio/1886"},
    {id = 1887, name = "radio/1887"},
    {id = 1901, name = "radio/1901"},
    {id = 1903, name = "radio/1903"},
    {id = 1907, name = "radio/1907"},
    {id = 1908, name = "radio/1908"},
    {id = 1910, name = "radio/1910"},
    {id = 1914, name = "radio/1914"},
    {id = 1920, name = "radio/1920"},
    {id = 1921, name = "radio/1921"},
    {id = 1922, name = "radio/1922"},
    {id = 1923, name = "radio/1923"},
    {id = 1925, name = "radio/1925"},
    {id = 1926, name = "radio/1926"},
    {id = 1929, name = "radio/1929"},
    {id = 1931, name = "radio/1931"},
    {id = 1932, name = "radio/1932"},
    {id = 1933, name = "radio/1933"},
    {id = 1935, name = "radio/1935"},
    {id = 1938, name = "radio/1938"},
    {id = 1939, name = "radio/1939"},
    {id = 1943, name = "radio/1943"},
    {id = 1944, name = "radio/1944"},
    {id = 1945, name = "radio/1945"},
    {id = 1946, name = "radio/1946"},
    {id = 1947, name = "radio/1947"},
    {id = 1948, name = "radio/1948"},
    {id = 1949, name = "radio/1949"},
    {id = 1951, name = "radio/1951"},
    {id = 1952, name = "radio/1952"},
    {id = 1953, name = "radio/1953"},
    {id = 1954, name = "radio/1954"},
    {id = 1955, name = "radio/1955"},
    {id = 1956, name = "radio/1956"},
    {id = 1958, name = "radio/1958"},
    {id = 1959, name = "radio/1959"},
    {id = 1960, name = "Monsters-of-Rock"},
    {id = 1992, name = "Топ100"},
    {id = 2027, name = "ChillaFM"},
    {id = 2028, name = "ClassicFM"},
    {id = 2031, name = "РодныеПесни"},
    {id = 2032, name = "Сказка"},
    {id = 2033, name = "Умное"},
    {id = 2034, name = "ЗвукиПрироды"},
    {id = 2075, name = "Радиотройка"},
    {id = 2091, name = "Радио Афродита"},
    {id = 2212, name = "Fallout"},
    {id = 2216, name = "FashionTV"},
    {id = 2252, name = "NewAge"},
    {id = 2257, name = "АудиоСказки"},
    {id = 2288, name = "Из"},
    {id = 2294, name = "СССР"},
    {id = 2295, name = "РМегаполисFM"},
    {id = 2296, name = "RadioSwissClassic"},
    {id = 2297, name = "RadioFresh"},
    {id = 2299, name = "Сиртаки"},
    {id = 2301, name = "LaRadio"},
    {id = 2302, name = "RadioIsBe"},
    {id = 2303, name = "TanzFM"},
    {id = 2304, name = "МурзикиFM"},
    {id = 2305, name = "MusicalSymbiosis"},
    {id = 2307, name = "ProgramiQA"},
    {id = 2308, name = "DjSevro"},
    {id = 2309, name = "ВестиИрк"},
    {id = 2310, name = "RadioVibe"},
    {id = 2311, name = "LofiRadio"},
    {id = 2312, name = "RadioASMR"},
    {id = 2313, name = "161Chicago"},
    {id = 2314, name = "ЕкатеринбургFM"},
    {id = 2315, name = "РадиоНогинск"},
    {id = 2316, name = "ChocolateFM"},
    {id = 2317, name = "MetalHeads"},
    {id = 2319, name = "Radio107Network"},
    {id = 2320, name = "Musiquera"},
    {id = 2321, name = "МагаданFM"},
    {id = 2323, name = "ForBlitzFM"},
    {id = 2324, name = "PiratFM"},
    {id = 2325, name = "СердцеУрала"},
    {id = 2327, name = "Атаман"},
    {id = 2330, name = "Синтези"},
    {id = 2332, name = "FusionRadio"},
    {id = 2334, name = "ЖанаFM"},
    {id = 2335, name = "RadioA"},
    {id = 2338, name = "СуворовFM"},
    {id = 2340, name = "ВолнаАЭ"},
    {id = 2341, name = "КнигаВслух"},
    {id = 2343, name = "TheDiscoPartyMix"},
    {id = 2344, name = "TheDiscoPhilharmonic"},
    {id = 2345, name = "CafeZimmermann"},
    {id = 2357, name = "OldBrief"},
    {id = 2358, name = "LookInfo"},
    {id = 2359, name = "РадиоМаруся"},
    {id = 2361, name = "BigLifeRadio"},
    {id = 2362, name = "USSR.Radio.Online"},
    {id = 2363, name = "Musi-Q"},
    {id = 2364, name = "Таврия"},
    {id = 2365, name = "РадиоМая"},
    {id = 2366, name = "РадиоВыход"},
    {id = 2367, name = "ТВКраснодар"},
    {id = 2368, name = "RadioSamui"},
    {id = 2369, name = "Rock-Omlet"},
    {id = 2370, name = "RadioChannelDance"},
    {id = 2371, name = "VU"},
    {id = 2372, name = "DancingFox"},
    {id = 2373, name = "RockSpaceStation"},
    {id = 2374, name = "AFM"},
    {id = 2375, name = "РадиоПобедаBY"},
    {id = 2376, name = "РадиоДинамит"},
    {id = 2378, name = "KamonFM"},
    {id = 2379, name = "УлетайРадио"},
    {id = 2380, name = "RitmoX99"},
    {id = 2381, name = "DDTRadio"},
    {id = 2382, name = "КумылгаРадио"},
    {id = 2383, name = "DenStar"},
    {id = 2384, name = "RadioNorm"},
    {id = 2386, name = "AlfaRadioBY"},
    {id = 2388, name = "Нестандарт-архив"},
    {id = 2389, name = "JoyHits"},
    {id = 2390, name = "Wow2010"},
    {id = 2391, name = "Казак-Крым"},
    {id = 2392, name = "БарсукFM"},
    {id = 2393, name = "WowШансон"},
    {id = 2394, name = "Radio77"},
    {id = 2395, name = "YanFM_Electro"},
    {id = 2397, name = "EastricaHits"},
    {id = 2398, name = "РадиоГордост"},
    {id = 2399, name = "RadioBeauty"},
    {id = 2400, name = "RadioNever"},
    {id = 2401, name = "RadiaRe"},
    {id = 2402, name = "FreedomFMRadio"},
    {id = 2403, name = "Dance-Box"},
    {id = 2404, name = "РоссияFM"},
    {id = 2407, name = "RadioGoose-Dancecore"},
    {id = 2408, name = "RadioGoose-Deep"},
    {id = 2411, name = "RadioGoose-Oldschool"},
    {id = 2412, name = "RadioGoose-Rock"},
    {id = 2413, name = "RadioGoose-Rus"},
    {id = 2416, name = "RadioGoose-Harddance"},
    {id = 2417, name = "RadioGoose-Hardcore"},
    {id = 2418, name = "RadioGoose-Hardstyle"},
    {id = 2419, name = "RadioGoose-Electro"},
    {id = 2420, name = "RadioGoose-Collection"},
    {id = 2421, name = "K-Pop-Dream"},
    {id = 2422, name = "Hit80x"},
    {id = 2423, name = "LiteFM"},
    {id = 2424, name = "Gardener"},
    {id = 2425, name = "WorldMusic"},
    {id = 2426, name = "EGRadio"},
    {id = 2428, name = "РадиоНастройке"},
    {id = 2429, name = "Молоко"},
    {id = 2430, name = "Кассиопея-Екатеринбург"},
    {id = 2431, name = "WiLinor"},
    {id = 2432, name = "CosmosFM"},
    {id = 2433, name = "RussianMusic24"},
    {id = 2434, name = "EstereoClase"},
    {id = 2435, name = "DiscoBonus"},
    {id = 2437, name = "HolyForeverRadio"},
    {id = 2438, name = "MixNovgorod"},
    {id = 2439, name = "EvoHit"},
    {id = 2440, name = "RetroHitSerz"},
    {id = 2441, name = "CyberFunk"},
    {id = 2442, name = "Hermitage"},
    {id = 2443, name = "Jam_Radio"},
    {id = 2445, name = "Radio-Casseta"},
    {id = 2447, name = "GlxyProg"},
    {id = 2448, name = "ВОК"},
    {id = 2449, name = "Родники"},
    {id = 2450, name = "Бисквит"},
    {id = 2451, name = "LimeRadio"},
    {id = 2452, name = "LimeTeens"},
    {id = 2454, name = "SunWay"},
    {id = 2455, name = "RelaxRadio24"},
    {id = 2456, name = "ШансонРадиоRU"},
    {id = 2457, name = "ПикиВок"},
    {id = 2458, name = "AndreFM"},
    {id = 2459, name = "1000Hit"},
    {id = 2460, name = "RadioPurga"},
    {id = 2461, name = "RadioC"},
    {id = 2462, name = "JamFM"},
    {id = 2463, name = "PilotFM"},
    {id = 2464, name = "RockArsenal"},
    {id = 2465, name = "Sputnik107"},
    {id = 2466, name = "RadioLetoFM"},
    {id = 2467, name = "OlimpFM"},
    {id = 2468, name = "100i6FM"},
    {id = 2469, name = "SputnikFM"},
    {id = 2470, name = "ВолгоградFM"},
    {id = 2471, name = "99i1"},
    {id = 2472, name = "КрасноярскFM"},
    {id = 2473, name = "AlfaFM"},
    {id = 2474, name = "ПермПилотFM"},
    {id = 2475, name = "Radio-Megapolis"},
    {id = 2476, name = "106i9FM"},
    {id = 2477, name = "УльскFM"},
    {id = 2478, name = "RadioKarnaval"},
    {id = 2480, name = "iFreeFM"},
    {id = 2481, name = "МалахитFM"},
    {id = 2482, name = "Hits1Radio"},
    {id = 2483, name = "Ibiza1"},
    {id = 2484, name = "RuDisco"},
    {id = 2485, name = "PalmeraBlanca"},
    {id = 2486, name = "RendezvousRadio"},
    {id = 2487, name = "333"},
    {id = 2488, name = "ЛипецкFM907"},
    {id = 2489, name = "MaksFM"},
    {id = 2490, name = "AlternativeRockStation"},
    {id = 2491, name = "РадиоКамчатка"},
    {id = 2492, name = "АвтоРадиоBY"},
    {id = 2493, name = "RadioKissFM"},
    {id = 2494, name = "БлагоFM"},
    {id = 2496, name = "RusDisco"},
    {id = 2497, name = "AbGarBar"},
    {id = 2498, name = "RadioMixFM"},
    {id = 2499, name = "PulseFM"},
    {id = 2500, name = "Dance-Radio"},
    {id = 2501, name = "Чурканов"},
    {id = 2502, name = "RadioClub80"},
    {id = 2503, name = "RadioRH"},
    {id = 2504, name = "RadioVeronica"},
    {id = 2505, name = "DustyRecords"},
    {id = 2506, name = "DirtyNightBass"},
    {id = 2507, name = "MegaTonCafeRadio"},
    {id = 2508, name = "HitFM"},
    {id = 2509, name = "Radio-9"},
    {id = 2510, name = "АлтайFM"},
    {id = 2511, name = "Super"},
    {id = 2512, name = "UFMRus"},
    {id = 2513, name = "Первомайск"},
    {id = 2514, name = "Рокс"},
    {id = 2515, name = "RadioElena"},
    {id = 2516, name = "РусРадиоBY"},
    {id = 2518, name = "RadioRelaxBY"},
    {id = 2519, name = "МинскNews"},
    {id = 2520, name = "RadioKult"},
    {id = 2521, name = "MCMRadio"},
    {id = 2522, name = "Пластинка"},
    {id = 2523, name = "RadioMir"},
    {id = 2524, name = "Sky"},
    {id = 2526, name = "HumorFMBY"},
    {id = 2527, name = "NovoeRadioBY"},
    {id = 2528, name = "SuperFM"},
    {id = 2529, name = "UniStar"},
    {id = 2530, name = "Панелька"},
    {id = 2531, name = "ГоворитМайкоп"},
    {id = 2532, name = "TopRadioFM"},
    {id = 2533, name = "PointAlex"},
    {id = 2534, name = "100FMBY"},
    {id = 2535, name = "СвоеРадиоBY"},
    {id = 2536, name = "RadioStalica"},
    {id = 2537, name = "БирскFM"},
    {id = 2538, name = "DurFM"},
    {id = 2539, name = "Radio_Buraevo"},
    {id = 2540, name = "MechanicRadio"},
    {id = 2541, name = "Chillsperience"},
    {id = 2542, name = "Russhanson24"},
    {id = 2543, name = "RetroWave"},
    {id = 2544, name = "Amnesia"},
    {id = 2545, name = "LexoSound"},
    {id = 2546, name = "Jazz-Radio"},
    {id = 2547, name = "EuroDisco"},
    {id = 2548, name = "RadioNewSong"},
    {id = 2549, name = "RockVolna"},
    {id = 2550, name = "Serebro"},
    {id = 2551, name = "RSGIRadio"},
    {id = 2552, name = "МирШирок"},
    {id = 2553, name = "Animalogya"},
    {id = 2554, name = "RaveGround"},
    {id = 2555, name = "KpopRadio"},
    {id = 2556, name = "Radio-Moments"},
    {id = 2557, name = "Vella"},
    {id = 2558, name = "RadioRostova"},
    {id = 2559, name = "ASTV_Сахалин"},
    {id = 2560, name = "RusDriveRadio"},
    {id = 2561, name = "RadioIskra"},
    {id = 2562, name = "DeepInSpace"},
    {id = 2563, name = "EthnoRadio"},
    {id = 2564, name = "КатюшаFM"},
    {id = 2565, name = "RadioVenera"},
    {id = 2566, name = "DirtyHarry"},
    {id = 2567, name = "Малина"},
    {id = 2568, name = "RadioHimalaya"},
    {id = 2569, name = "Rock-Ирк"},
    {id = 2570, name = "NVolna"},
    {id = 2571, name = "ВРНFM"},
    {id = 2572, name = "РусРадио-Азия"},
    {id = 2573, name = "ЕвропаПлюс-Казахстан"},
    {id = 2574, name = "FMD"},
    {id = 2575, name = "Свободное"},
    {id = 2576, name = "MasteraBelarusi"},
    {id = 2577, name = "UBFM"},
    {id = 2578, name = "RadioGoose-Midtempo"},
    {id = 2579, name = "RadioGoose-DnB"},
    {id = 2580, name = "RadioGoose-Trance"},
    {id = 2581, name = "RadioGoose-Phonk"},
    {id = 2582, name = "RadioGoose-Bigroom"},
    {id = 2583, name = "DigitalResidency"},
    {id = 2584, name = "NewRadio"},
    {id = 2585, name = "Silver"},
    {id = 2586, name = "RadioVeve"},
    {id = 2587, name = "Roots-Future"},
    {id = 2588, name = "ВетерСибири"},
    {id = 2589, name = "Star33Radio"},
    {id = 2590, name = "OneDJRadio"},
    {id = 2591, name = "ПримВолна"},
    {id = 2603, name = "Анекдоты"},
    {id = 2605, name = "МакРадио"},
    {id = 2606, name = "RadioBereza"},
    {id = 2607, name = "ДругоеРадио"},
    {id = 2608, name = "Unicorn"},
    {id = 2609, name = "УспехFM"},
    {id = 2610, name = "MDeep"},
    {id = 2611, name = "NSR"},
    {id = 2612, name = "RadiusFM"},
    {id = 2613, name = "RadioMotionFM"},
    {id = 2614, name = "Природа"},
    {id = 2615, name = "Здоровье"},
    {id = 2616, name = "OldHit"},
    {id = 2617, name = "Minatrix"},
    {id = 2618, name = "MSDgames"},
    {id = 2619, name = "КП-Южно-Сахалинск"},
    {id = 2620, name = "TapeHits"},
    {id = 2621, name = "RadioSkuf"},
    {id = 2622, name = "Neon"},
    {id = 2623, name = "Vita"},
    {id = 2624, name = "MetalChet"},
    {id = 2625, name = "PopFM"},
    {id = 2626, name = "Retro24"},
    {id = 2627, name = "Luxury"},
    {id = 2628, name = "Виктор61"},
    {id = 2629, name = "Миф"},
    {id = 2630, name = "RealFMRadio"},
    {id = 2631, name = "RealFM-Relax"},
    {id = 2632, name = "RealFM-Lights"},
    {id = 2633, name = "RealFM-Fresh"},
    {id = 2634, name = "RealFM-Ultra"},
    {id = 2635, name = "Klvn54"},
    {id = 2636, name = "Tg300000"},
    {id = 2637, name = "МалинаFM"},
    {id = 2638, name = "Афонтовское"},
    {id = 2639, name = "RadioMyata"},
    {id = 2640, name = "RadioMyata-Gold"},
    {id = 2641, name = "RadioMyata-Hits"},
    {id = 2642, name = "Radio-Online"},
    {id = 2643, name = "VintageRadio"},
    {id = 2644, name = "МирБелогорья"}
}
---------------------------------END RADIO STANTION---------------------------------
--==========================================================================================================--
-----------------------CHECKING FOR AUTISM---------------------------------
if SERVER then
	---------------------------------INITIALIZATION---------------------------------
	function ENT:Initialize()
		self:SetModel("models/props_lab/citizenradio.mdl")
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)

		local phys = self:GetPhysicsObject()
		if (phys:IsValid()) then
			phys:Wake()
		end

		self:SetUseType(SIMPLE_USE)
	end
	---------------------------------INITIALIZATION END---------------------------------
	--==========================================================================================================--
	---------------------------------USE---------------------------------
    util.AddNetworkString("Open the radio menu!")
	function ENT:Use(player)
		net.Start("Open the radio menu!")
		net.WriteEntity(self)
		net.Send(player)
	end
	---------------------------------END USE---------------------------------
end
-----------------------END CHECKING FOR AUTISM---------------------------------
--==========================================================================================================--
-----------------------CHECKING FOR AUTISM---------------------------------
if CLIENT then
    -----------------------GET LANGUEDGE---------------------------------
    function GetLanguedge()
        local languedge = GetConVar("gmod_language"):GetString()
        if (LanguageBase[languedge] == nil) then
            languedge = "en"
        end
        
        return languedge
    end
     -----------------------END GET LANGUEDGE---------------------------------
    --==========================================================================================================--
	---------------------------------DRAW RADIO LIGHT---------------------------------
	local matGlow = Material("sprites/glow04_noz")
	function ENT:Draw()
		self:DrawModel()

		local lightPos = self:GetPos() + (self:GetUp() * 8.2 - self:GetRight() * -9.8 + self:GetForward() * 10) * self:GetModelScale()
        local color = Color(0, 0, 0, 0)

        if (self:GetRadioStantion() == 0) then
            color = Color(255, 0, 0)
        elseif (LocalPlayer().RadioPanel == nil) then
            color = Color(0, 0, 0, 0)
        else
            color = Color(0, 255, 0)
        end

        render.SetMaterial(matGlow)
		render.DrawSprite(lightPos - self:GetUp(), 4, 4, color)
	end
	---------------------------------END DRAW RADIO LIGHT---------------------------------
	--==========================================================================================================--
	---------------------------------RADIO MENU---------------------------------
    net.Receive("Open the radio menu!", function()
        local radio = net.ReadEntity()
        if (radio:IsValid()) then
            local frame = vgui.Create("DFrame")
            frame:SetSize(300, 400)
            frame:Center()
            frame:SetTitle(LanguageBase[GetLanguedge()].radio_menu_title)
            frame:MakePopup()

            local currentStation = vgui.Create("DLabel", frame)
            currentStation:Dock(TOP)
            currentStation:SetTall(25)
            currentStation:SetContentAlignment(5)
            currentStation:SetText(string.format(
                LanguageBase[GetLanguedge()].current_playing,
                RadioStations[radio:GetRadioStantion()] and RadioStations[radio:GetRadioStantion()].name or LanguageBase[GetLanguedge()].no_station
            ))

            local list = vgui.Create("DListView", frame)
            list:Dock(FILL)
            list:AddColumn(LanguageBase[GetLanguedge()].column_id)
            list:AddColumn(LanguageBase[GetLanguedge()].column_name)

            for id, station in ipairs(RadioStations) do
                list:AddLine(station.id, station.name)
            end

            local slider = vgui.Create("DNumSlider", frame)
            slider:Dock(BOTTOM)
            slider:SetText(LanguageBase[GetLanguedge()].volume)
            slider:SetMin(0)
            slider:SetMax(100)
            slider:SetDecimals(0)
            slider:SetValue(radio.VolumeRadio or 5)
            slider.OnValueChanged = function(_, value)
                radio.VolumeRadio = value
                if LocalPlayer().RadioPanel and LocalPlayer().RadioPanel:IsValid() then
                    LocalPlayer().RadioPanel:RunJavascript(string.format([[
                        var slider = document.querySelector('.volume-slider');
                        if (slider) {
                            slider.value = %d;
                            slider.dispatchEvent(new Event('input', { bubbles: true, cancelable: true }));
                            slider.dispatchEvent(new Event('change', { bubbles: true, cancelable: true }));
                        }
                    ]], value))
                end
            end

            list.OnRowSelected = function(_, _, row)
                local stationID = tonumber(row:GetColumnText(1))
                radio:SetRadioStantion(stationID)
                radio.VolumeRadio = slider:GetValue()
                radio:LaunchRadio()
                currentStation:SetText(string.format(LanguageBase[GetLanguedge()].current_playing, row:GetColumnText(2)))
            end
        end
    end)
	---------------------------------END RADIO MENU---------------------------------
	--==========================================================================================================--
	---------------------------------LAUNCH RADIO---------------------------------	
	function ENT:LaunchRadio()
        if (LocalPlayer().RadioPanel != nil) then 
            LocalPlayer().RadioPanel:Remove()
            LocalPlayer().RadioPanel = nil
        end

		local radio = vgui.Create("DHTML")
		radio:OpenURL("https://radiopotok.ru/radio/" .. self:GetRadioStantion())
		radio:SetVisible(false)

        radio:SetAllowLua(false)
        radio.ConsoleMessage = function() end 

		radio.Parent = self

		function radio:OnDocumentReady()
			local js = string.format([[
				RADIO_PLAYER.control(2585);
				var slider = document.querySelector('.volume-slider');

				if (slider) {
					slider.value = %d;
					slider.dispatchEvent(new Event('input', { bubbles: true, cancelable: true }));
					slider.dispatchEvent(new Event('change', { bubbles: true, cancelable: true }));
				}
			]], radio.Parent.VolumeRadio)
			self:RunJavascript(js)
		end

        timer.Simple(3, function()
            LocalPlayer().RadioPanel = radio
        end)
	end
	---------------------------------END LAUNCH RADIO---------------------------------	
	--==========================================================================================================--
	---------------------------------THINK---------------------------------
    function ENT:Think()
        if (LocalPlayer().RadioPanel != nil) then
            local dist = LocalPlayer():GetPos():Distance(self:GetPos())
            local distanceVolume = 1 - (dist / (25 * self.VolumeRadio))
            local realVolume = math.floor(distanceVolume * self.VolumeRadio)

            LocalPlayer().RadioPanel:RunJavascript(string.format([[
                var slider = document.querySelector('.volume-slider');
                if (slider) {
                    slider.value = %d;
                    slider.dispatchEvent(new Event('input', { bubbles: true, cancelable: true }));
                    slider.dispatchEvent(new Event('change', { bubbles: true, cancelable: true }));
                }
            ]], realVolume))
        end
    end
	---------------------------------END THINK---------------------------------
	--==========================================================================================================--
	---------------------------------REMOVE RADIO---------------------------------
	function ENT:OnRemove()
		self:SetRadioStantion(0)
		if (LocalPlayer().RadioPanel != nil) then
            LocalPlayer().RadioPanel:Remove()
            LocalPlayer().RadioPanel = nil
		end
	end
	---------------------------------END REMOVE RADIO---------------------------------
end
-----------------------END CHECKING FOR AUTISM---------------------------------