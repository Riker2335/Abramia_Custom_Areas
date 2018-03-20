*********************************************************************************************
** Bridge connecting the East and West Islands in Isla Abramia
** Created in 2017 by Riker for my Exile Server
** Uploaded to Github in 2018 for general use on any server running Icebreakr's Isla Abramia
*********************************************************************************************
/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 6 Vehicles
private _vehicles = [
["Land_LampStreet_small_F", [7584.08, 1677.89, 17.9508], [0, 1, 0], [0, 0, 1], true],
["Land_LampStreet_small_F", [7582.92, 1662.65, 16.6999], [0, 1, 0], [0, 0, 1], true],
["Land_LampStreet_small_F", [7593.89, 1663.06, 16.6448], [0, 1, 0], [0, 0, 1], true],
["Land_LampStreet_small_F", [7595.09, 1676.21, 17.9559], [0, 1, 0], [0, 0, 1], true],
["Land_LampStreet_small_F", [6267.3, 3024.37, 13.2414], [0, 1, 0], [0, 0, 1], true],
["Land_LampStreet_small_F", [6257, 3010.04, 13.0962], [0, 1, 0], [0, 0, 1], true]
];

{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage false;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];
    
    if (_vehicle isKindOf "Exile_RussianRouletteChair") then
    {
        ExileRouletteChairs pushBack _vehicle;
        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];
    };
}
forEach _vehicles;

// 97 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["ca\roads2\asf1_0 2000.p3d", [6261.71, 3016.74, 10.4226], [0.871487, -0.490418, 0], [0, 0, 1]],
["ca\roads2\asf1_0 2000.p3d", [6234.42, 3025.34, 11.9722], [0.982793, -0.184708, 0], [0, 0, 1]],
["ca\roads2\asf1_10 75.p3d", [6249.51, 3022.09, 10.912], [0.984899, -0.168418, -0.0401258], [0.0379722, -0.0159898, 0.999151]],
["ca\roads2\asf1_6konec.p3d", [6222.88, 3027.57, 12.322], [0.980055, -0.185733, -0.0706728], [0.0797452, 0.0418294, 0.995937]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6277.92, 3007.41, 1.19237], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6299.51, 2995.03, 1.18635], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6321.21, 2982.62, 1.19343], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6342.79, 2970.24, 1.18114], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6364.46, 2957.77, 1.19721], [0.867185, -0.497986, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6386.05, 2945.39, 1.20436], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6407.74, 2932.98, 1.2062], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6429.33, 2920.6, 1.22075], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6451, 2908.16, 1.21122], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6472.59, 2895.77, 1.20599], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6494.29, 2883.37, 1.20176], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6515.87, 2870.99, 1.19801], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6537.54, 2858.52, 1.20098], [0.867185, -0.497986, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6559.13, 2846.14, 1.19721], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6580.82, 2833.73, 1.1858], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6602.41, 2821.35, 1.18693], [0.867185, -0.497987, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6623.69, 2808.63, 1.19006], [0.849819, -0.527075, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6643.96, 2795.33, 1.19644], [0.825965, -0.563721, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6664.2, 2781.13, 1.20016], [0.81135, -0.584561, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6683.81, 2766.31, 1.21386], [0.783796, -0.621019, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6702.81, 2750.8, 1.19983], [0.765507, -0.643427, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6721.53, 2734.62, 1.1909], [0.746704, -0.665156, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6739.65, 2718.02, 1.19028], [0.727089, -0.686544, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6757.23, 2700.93, 1.18581], [0.70917, -0.705038, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6774.23, 2683.21, 1.16624], [0.668006, -0.744156, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6790.48, 2664.54, 1.17014], [0.651953, -0.75826, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6806.42, 2645.55, 1.17582], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6822.21, 2626.18, 1.15906], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6837.99, 2606.8, 1.16998], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6853.76, 2587.46, 1.15321], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6869.49, 2568.06, 1.17409], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6885.27, 2548.68, 1.1812], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6901.08, 2529.31, 1.19995], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6916.84, 2509.94, 1.20418], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6932.63, 2490.56, 1.19915], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6948.37, 2471.24, 1.19496], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6964.14, 2451.85, 1.2092], [0.631673, -0.775235, 0], [0, 0, 1]],
["a3\structures_f_exp\walls\crashbarriers\crashbarrier_01_4m_f.p3d", [6269.06, 3020.73, 10.032], [0.516383, 0.855165, -0.0451778], [0.087156, 0, 0.996195]],
["a3\structures_f_exp\walls\crashbarriers\crashbarrier_01_4m_f.p3d", [6265.63, 3022.79, 10.3181], [0.516383, 0.855165, -0.0451778], [0.087156, 0, 0.996195]],
["a3\structures_f_exp\walls\crashbarriers\crashbarrier_01_4m_f.p3d", [6266.33, 3025.95, 10.3915], [0.0721818, -0.997384, -0.00378289], [0.052336, 0, 0.99863]],
["a3\structures_f_exp\walls\crashbarriers\crashbarrier_01_4m_f.p3d", [6270.23, 3026.24, 10.1941], [0.0721818, -0.997384, -0.00378289], [0.052336, 0, 0.99863]],
["a3\structures_f_exp\walls\crashbarriers\crashbarrier_01_4m_f.p3d", [6274.11, 3027.27, 10.0952], [0.441177, -0.89742, 0], [0, 0, 1]],
["a3\structures_f_exp\walls\crashbarriers\crashbarrier_01_4m_f.p3d", [6277.63, 3029.19, 10.1107], [0.505959, -0.862558, 0], [0, 0, 1]],
["a3\structures_f_exp\walls\crashbarriers\crashbarrier_01_end_l_f.p3d", [6263.05, 3024.3, 10.5326], [0.504438, 0.862319, -0.0441328], [0.087156, 0, 0.996195]],
["a3\structures_f_exp\walls\crashbarriers\crashbarrier_01_end_l_f.p3d", [6280.18, 3030.76, 10.1049], [0.557267, -0.830333, 0], [0, 0, 1]],
["a3\structures_f_exp\walls\crashbarriers\crashbarrier_01_end_r_f.p3d", [6263.33, 3025.73, 10.5347], [0.0651569, -0.997869, -0.00341473], [0.052336, 0, 0.99863]],
["a3\structures_f_exp\walls\crashbarriers\crashbarrier_01_end_r_f.p3d", [6271.58, 3019.17, 9.82545], [0.519606, 0.853196, -0.0454598], [0.087156, 0, 0.996195]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6979.9, 2432.51, 1.21083], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [6995.71, 2413.13, 1.21312], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7011.49, 2393.75, 1.21876], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7027.27, 2374.4, 1.22069], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7043.05, 2355.03, 1.22487], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7058.85, 2335.65, 1.23359], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7074.64, 2316.27, 1.23218], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7090.43, 2296.92, 1.24801], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7106.24, 2277.55, 1.25177], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7122.04, 2258.18, 1.26706], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7137.84, 2238.8, 1.26377], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7153.62, 2219.43, 1.27011], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7169.39, 2200.07, 1.26343], [0.631673, -0.775235, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7184.56, 2180.67, 1.27928], [0.602435, -0.798168, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7199.08, 2160.8, 1.27575], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7213.52, 2140.41, 1.26165], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7227.97, 2120.02, 1.25593], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7242.4, 2099.63, 1.25302], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7256.84, 2079.23, 1.2508], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7271.27, 2058.85, 1.245], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7285.71, 2038.47, 1.23634], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7300.16, 2018.08, 1.23244], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7314.61, 1997.69, 1.22961], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7329.05, 1977.29, 1.22735], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7343.49, 1956.9, 1.22809], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7357.93, 1936.52, 1.23121], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7372.38, 1916.13, 1.23533], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7386.82, 1895.74, 1.23531], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7401.21, 1875.42, 1.2375], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7415.64, 1855.04, 1.2302], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7430.06, 1834.7, 1.2324], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7444.47, 1814.35, 1.22839], [0.577914, -0.816098, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7458.92, 1793.96, 1.23171], [0.577915, -0.816097, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7473.61, 1774.11, 1.22861], [0.608711, -0.793392, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7489, 1754.8, 1.22842], [0.637093, -0.770787, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7505.06, 1735.96, 1.22982], [0.660389, -0.750924, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7521.55, 1717.2, 1.23021], [0.660389, -0.750924, 0], [0, 0, 1]],
["ca\roads2\bridge\bridge_asf1_25.p3d", [7538.02, 1698.47, 1.23077], [0.660389, -0.750924, 0], [0, 0, 1]],
["ca\roads2\asf1_15 75.p3d", [7546.17, 1689.53, 9.38749], [-0.69844, 0.674879, -0.23816], [-0.107376, 0.230195, 0.967203]],
["ca\roads2\asf1_15 75.p3d", [7570.73, 1672.68, 13.8846], [-0.994186, 0.0880458, -0.0619908], [-0.0618801, 0.00398909, 0.998076]],
["ca\roads2\asf1_30 25.p3d", [7555.58, 1678.71, 12.4645], [-0.9232, 0.364264, -0.12253], [-0.0916134, 0.101047, 0.990655]],
["ca\roads2\asf1_6konec.p3d", [7583.97, 1670.26, 14.5293], [-0.993522, 0.10736, -0.0372556], [-0.0419631, -0.041926, 0.998239]],
["ca\signs2\signt\sign_leftdirection_new.p3d", [7594.34, 1660.51, 14.7797], [0, 0.988936, 0.14834], [0.00800059, -0.148336, 0.988905]],
["ca\signs2\signt\sign_rightdirection_new.p3d", [7596.44, 1677.32, 16.4751], [-0.192244, -0.981226, -0.0154342], [0.0319849, -0.0219842, 0.999247]],
["ca\signs2\signt\sign_priority_new.p3d", [7582.21, 1678.03, 16.4516], [0.986434, -0.154868, 0.0544352], [-0.0579034, -0.0179693, 0.99816]],
["ca\signs2\signt\sign_priority_new.p3d", [7580.76, 1663.07, 15.4207], [0.987648, -0.149142, -0.048043], [0.029985, -0.121048, 0.992194]]
];

{
    private _simpleObject = createSimpleObject [_x select 0, _x select 1];
    _simpleObject setVectorDirAndUp [_x select 2, _x select 3];
    
    {
        if ((toLower _x) in _invisibleSelections) then 
        {
            _simpleObject hideSelection [_x, true];
        };
    }
    forEach (selectionNames _simpleObject);
}
forEach _simpleObjects;
