; ***************************************
; *              VARIÁVEIS              *
; ***************************************
ZombieChar: var #1
PlayerChar: var #1
BulletChar: var #1
EmptyChar: var #1
MaxZombiesAllowed: var #1
Screen: var #1200 
    static Screen + #0, #32
    static Screen + #1, #32
    static Screen + #2, #32
    static Screen + #3, #32
    static Screen + #4, #32
    static Screen + #5, #32
    static Screen + #6, #32
    static Screen + #7, #32
    static Screen + #8, #32
    static Screen + #9, #32
    static Screen + #10, #32
    static Screen + #11, #32
    static Screen + #12, #32
    static Screen + #13, #32
    static Screen + #14, #32
    static Screen + #15, #32
    static Screen + #16, #32
    static Screen + #17, #32
    static Screen + #18, #32
    static Screen + #19, #32
    static Screen + #20, #32
    static Screen + #21, #32
    static Screen + #22, #32
    static Screen + #23, #32
    static Screen + #24, #32
    static Screen + #25, #32
    static Screen + #26, #32
    static Screen + #27, #32
    static Screen + #28, #32
    static Screen + #29, #32
    static Screen + #30, #32
    static Screen + #31, #32
    static Screen + #32, #32
    static Screen + #33, #32
    static Screen + #34, #32
    static Screen + #35, #32
    static Screen + #36, #32
    static Screen + #37, #32
    static Screen + #38, #32
    static Screen + #39, #32
    static Screen + #40, #32
    static Screen + #41, #32
    static Screen + #42, #32
    static Screen + #43, #32
    static Screen + #44, #32
    static Screen + #45, #32
    static Screen + #46, #32
    static Screen + #47, #32
    static Screen + #48, #32
    static Screen + #49, #32
    static Screen + #50, #32
    static Screen + #51, #32
    static Screen + #52, #32
    static Screen + #53, #32
    static Screen + #54, #32
    static Screen + #55, #32
    static Screen + #56, #32
    static Screen + #57, #32
    static Screen + #58, #32
    static Screen + #59, #32
    static Screen + #60, #32
    static Screen + #61, #32
    static Screen + #62, #32
    static Screen + #63, #32
    static Screen + #64, #32
    static Screen + #65, #32
    static Screen + #66, #32
    static Screen + #67, #32
    static Screen + #68, #32
    static Screen + #69, #32
    static Screen + #70, #32
    static Screen + #71, #32
    static Screen + #72, #32
    static Screen + #73, #32
    static Screen + #74, #32
    static Screen + #75, #32
    static Screen + #76, #32
    static Screen + #77, #32
    static Screen + #78, #32
    static Screen + #79, #32
    static Screen + #80, #32
    static Screen + #81, #32
    static Screen + #82, #32
    static Screen + #83, #32
    static Screen + #84, #32
    static Screen + #85, #32
    static Screen + #86, #32
    static Screen + #87, #32
    static Screen + #88, #32
    static Screen + #89, #32
    static Screen + #90, #32
    static Screen + #91, #32
    static Screen + #92, #32
    static Screen + #93, #32
    static Screen + #94, #32
    static Screen + #95, #32
    static Screen + #96, #32
    static Screen + #97, #32
    static Screen + #98, #32
    static Screen + #99, #32
    static Screen + #100, #32
    static Screen + #101, #32
    static Screen + #102, #32
    static Screen + #103, #32
    static Screen + #104, #32
    static Screen + #105, #32
    static Screen + #106, #32
    static Screen + #107, #32
    static Screen + #108, #32
    static Screen + #109, #32
    static Screen + #110, #32
    static Screen + #111, #32
    static Screen + #112, #32
    static Screen + #113, #32
    static Screen + #114, #32
    static Screen + #115, #32
    static Screen + #116, #32
    static Screen + #117, #32
    static Screen + #118, #32
    static Screen + #119, #32
    static Screen + #120, #32
    static Screen + #121, #32
    static Screen + #122, #32
    static Screen + #123, #32
    static Screen + #124, #32
    static Screen + #125, #32
    static Screen + #126, #32
    static Screen + #127, #32
    static Screen + #128, #32
    static Screen + #129, #32
    static Screen + #130, #32
    static Screen + #131, #32
    static Screen + #132, #32
    static Screen + #133, #32
    static Screen + #134, #32
    static Screen + #135, #32
    static Screen + #136, #32
    static Screen + #137, #32
    static Screen + #138, #32
    static Screen + #139, #32
    static Screen + #140, #32
    static Screen + #141, #32
    static Screen + #142, #32
    static Screen + #143, #32
    static Screen + #144, #32
    static Screen + #145, #32
    static Screen + #146, #32
    static Screen + #147, #32
    static Screen + #148, #32
    static Screen + #149, #32
    static Screen + #150, #32
    static Screen + #151, #32
    static Screen + #152, #32
    static Screen + #153, #32
    static Screen + #154, #32
    static Screen + #155, #32
    static Screen + #156, #32
    static Screen + #157, #32
    static Screen + #158, #32
    static Screen + #159, #32
    static Screen + #160, #32
    static Screen + #161, #32
    static Screen + #162, #32
    static Screen + #163, #32
    static Screen + #164, #32
    static Screen + #165, #32
    static Screen + #166, #32
    static Screen + #167, #32
    static Screen + #168, #32
    static Screen + #169, #32
    static Screen + #170, #32
    static Screen + #171, #32
    static Screen + #172, #32
    static Screen + #173, #32
    static Screen + #174, #32
    static Screen + #175, #32
    static Screen + #176, #32
    static Screen + #177, #32
    static Screen + #178, #32
    static Screen + #179, #32
    static Screen + #180, #32
    static Screen + #181, #32
    static Screen + #182, #32
    static Screen + #183, #32
    static Screen + #184, #32
    static Screen + #185, #32
    static Screen + #186, #32
    static Screen + #187, #32
    static Screen + #188, #32
    static Screen + #189, #32
    static Screen + #190, #32
    static Screen + #191, #32
    static Screen + #192, #32
    static Screen + #193, #32
    static Screen + #194, #32
    static Screen + #195, #32
    static Screen + #196, #32
    static Screen + #197, #32
    static Screen + #198, #32
    static Screen + #199, #32
    static Screen + #200, #32
    static Screen + #201, #32
    static Screen + #202, #32
    static Screen + #203, #32
    static Screen + #204, #32
    static Screen + #205, #32
    static Screen + #206, #32
    static Screen + #207, #32
    static Screen + #208, #32
    static Screen + #209, #32
    static Screen + #210, #32
    static Screen + #211, #32
    static Screen + #212, #32
    static Screen + #213, #32
    static Screen + #214, #32
    static Screen + #215, #32
    static Screen + #216, #32
    static Screen + #217, #32
    static Screen + #218, #32
    static Screen + #219, #32
    static Screen + #220, #32
    static Screen + #221, #32
    static Screen + #222, #32
    static Screen + #223, #32
    static Screen + #224, #32
    static Screen + #225, #32
    static Screen + #226, #32
    static Screen + #227, #32
    static Screen + #228, #32
    static Screen + #229, #32
    static Screen + #230, #32
    static Screen + #231, #32
    static Screen + #232, #32
    static Screen + #233, #32
    static Screen + #234, #32
    static Screen + #235, #32
    static Screen + #236, #32
    static Screen + #237, #32
    static Screen + #238, #32
    static Screen + #239, #32
    static Screen + #240, #32
    static Screen + #241, #32
    static Screen + #242, #32
    static Screen + #243, #32
    static Screen + #244, #32
    static Screen + #245, #32
    static Screen + #246, #32
    static Screen + #247, #32
    static Screen + #248, #32
    static Screen + #249, #32
    static Screen + #250, #32
    static Screen + #251, #32
    static Screen + #252, #32
    static Screen + #253, #32
    static Screen + #254, #32
    static Screen + #255, #32
    static Screen + #256, #32
    static Screen + #257, #32
    static Screen + #258, #32
    static Screen + #259, #32
    static Screen + #260, #32
    static Screen + #261, #32
    static Screen + #262, #32
    static Screen + #263, #32
    static Screen + #264, #32
    static Screen + #265, #32
    static Screen + #266, #32
    static Screen + #267, #32
    static Screen + #268, #32
    static Screen + #269, #32
    static Screen + #270, #32
    static Screen + #271, #32
    static Screen + #272, #32
    static Screen + #273, #32
    static Screen + #274, #32
    static Screen + #275, #32
    static Screen + #276, #32
    static Screen + #277, #32
    static Screen + #278, #32
    static Screen + #279, #32
    static Screen + #280, #32
    static Screen + #281, #32
    static Screen + #282, #32
    static Screen + #283, #32
    static Screen + #284, #32
    static Screen + #285, #32
    static Screen + #286, #32
    static Screen + #287, #32
    static Screen + #288, #32
    static Screen + #289, #32
    static Screen + #290, #32
    static Screen + #291, #32
    static Screen + #292, #32
    static Screen + #293, #32
    static Screen + #294, #32
    static Screen + #295, #32
    static Screen + #296, #32
    static Screen + #297, #32
    static Screen + #298, #32
    static Screen + #299, #32
    static Screen + #300, #32
    static Screen + #301, #32
    static Screen + #302, #32
    static Screen + #303, #32
    static Screen + #304, #32
    static Screen + #305, #32
    static Screen + #306, #32
    static Screen + #307, #32
    static Screen + #308, #32
    static Screen + #309, #32
    static Screen + #310, #32
    static Screen + #311, #32
    static Screen + #312, #32
    static Screen + #313, #32
    static Screen + #314, #32
    static Screen + #315, #32
    static Screen + #316, #32
    static Screen + #317, #32
    static Screen + #318, #32
    static Screen + #319, #32
    static Screen + #320, #32
    static Screen + #321, #32
    static Screen + #322, #32
    static Screen + #323, #32
    static Screen + #324, #32
    static Screen + #325, #32
    static Screen + #326, #32
    static Screen + #327, #32
    static Screen + #328, #32
    static Screen + #329, #32
    static Screen + #330, #32
    static Screen + #331, #32
    static Screen + #332, #32
    static Screen + #333, #32
    static Screen + #334, #32
    static Screen + #335, #32
    static Screen + #336, #32
    static Screen + #337, #32
    static Screen + #338, #32
    static Screen + #339, #32
    static Screen + #340, #32
    static Screen + #341, #32
    static Screen + #342, #32
    static Screen + #343, #32
    static Screen + #344, #32
    static Screen + #345, #32
    static Screen + #346, #32
    static Screen + #347, #32
    static Screen + #348, #32
    static Screen + #349, #32
    static Screen + #350, #32
    static Screen + #351, #32
    static Screen + #352, #32
    static Screen + #353, #32
    static Screen + #354, #32
    static Screen + #355, #32
    static Screen + #356, #32
    static Screen + #357, #32
    static Screen + #358, #32
    static Screen + #359, #32
    static Screen + #360, #32
    static Screen + #361, #32
    static Screen + #362, #32
    static Screen + #363, #32
    static Screen + #364, #32
    static Screen + #365, #32
    static Screen + #366, #32
    static Screen + #367, #32
    static Screen + #368, #32
    static Screen + #369, #32
    static Screen + #370, #32
    static Screen + #371, #32
    static Screen + #372, #32
    static Screen + #373, #32
    static Screen + #374, #32
    static Screen + #375, #32
    static Screen + #376, #32
    static Screen + #377, #32
    static Screen + #378, #32
    static Screen + #379, #32
    static Screen + #380, #32
    static Screen + #381, #32
    static Screen + #382, #32
    static Screen + #383, #32
    static Screen + #384, #32
    static Screen + #385, #32
    static Screen + #386, #32
    static Screen + #387, #32
    static Screen + #388, #32
    static Screen + #389, #32
    static Screen + #390, #32
    static Screen + #391, #32
    static Screen + #392, #32
    static Screen + #393, #32
    static Screen + #394, #32
    static Screen + #395, #32
    static Screen + #396, #32
    static Screen + #397, #32
    static Screen + #398, #32
    static Screen + #399, #32
    static Screen + #400, #32
    static Screen + #401, #32
    static Screen + #402, #32
    static Screen + #403, #32
    static Screen + #404, #32
    static Screen + #405, #32
    static Screen + #406, #32
    static Screen + #407, #32
    static Screen + #408, #32
    static Screen + #409, #32
    static Screen + #410, #32
    static Screen + #411, #32
    static Screen + #412, #32
    static Screen + #413, #32
    static Screen + #414, #32
    static Screen + #415, #32
    static Screen + #416, #32
    static Screen + #417, #32
    static Screen + #418, #32
    static Screen + #419, #32
    static Screen + #420, #32
    static Screen + #421, #32
    static Screen + #422, #32
    static Screen + #423, #32
    static Screen + #424, #32
    static Screen + #425, #32
    static Screen + #426, #32
    static Screen + #427, #32
    static Screen + #428, #32
    static Screen + #429, #32
    static Screen + #430, #32
    static Screen + #431, #32
    static Screen + #432, #32
    static Screen + #433, #32
    static Screen + #434, #32
    static Screen + #435, #32
    static Screen + #436, #32
    static Screen + #437, #32
    static Screen + #438, #32
    static Screen + #439, #32
    static Screen + #440, #32
    static Screen + #441, #32
    static Screen + #442, #32
    static Screen + #443, #32
    static Screen + #444, #32
    static Screen + #445, #32
    static Screen + #446, #32
    static Screen + #447, #32
    static Screen + #448, #32
    static Screen + #449, #32
    static Screen + #450, #32
    static Screen + #451, #32
    static Screen + #452, #32
    static Screen + #453, #32
    static Screen + #454, #32
    static Screen + #455, #32
    static Screen + #456, #32
    static Screen + #457, #32
    static Screen + #458, #32
    static Screen + #459, #32
    static Screen + #460, #32
    static Screen + #461, #32
    static Screen + #462, #32
    static Screen + #463, #32
    static Screen + #464, #32
    static Screen + #465, #32
    static Screen + #466, #32
    static Screen + #467, #32
    static Screen + #468, #32
    static Screen + #469, #32
    static Screen + #470, #32
    static Screen + #471, #32
    static Screen + #472, #32
    static Screen + #473, #32
    static Screen + #474, #32
    static Screen + #475, #32
    static Screen + #476, #32
    static Screen + #477, #32
    static Screen + #478, #32
    static Screen + #479, #32
    static Screen + #480, #32
    static Screen + #481, #32
    static Screen + #482, #32
    static Screen + #483, #32
    static Screen + #484, #32
    static Screen + #485, #32
    static Screen + #486, #32
    static Screen + #487, #32
    static Screen + #488, #32
    static Screen + #489, #32
    static Screen + #490, #32
    static Screen + #491, #32
    static Screen + #492, #32
    static Screen + #493, #32
    static Screen + #494, #32
    static Screen + #495, #32
    static Screen + #496, #32
    static Screen + #497, #32
    static Screen + #498, #32
    static Screen + #499, #32
    static Screen + #500, #32
    static Screen + #501, #32
    static Screen + #502, #32
    static Screen + #503, #32
    static Screen + #504, #32
    static Screen + #505, #32
    static Screen + #506, #32
    static Screen + #507, #32
    static Screen + #508, #32
    static Screen + #509, #32
    static Screen + #510, #32
    static Screen + #511, #32
    static Screen + #512, #32
    static Screen + #513, #32
    static Screen + #514, #32
    static Screen + #515, #32
    static Screen + #516, #32
    static Screen + #517, #32
    static Screen + #518, #32
    static Screen + #519, #32
    static Screen + #520, #32
    static Screen + #521, #32
    static Screen + #522, #32
    static Screen + #523, #32
    static Screen + #524, #32
    static Screen + #525, #32
    static Screen + #526, #32
    static Screen + #527, #32
    static Screen + #528, #32
    static Screen + #529, #32
    static Screen + #530, #32
    static Screen + #531, #32
    static Screen + #532, #32
    static Screen + #533, #32
    static Screen + #534, #32
    static Screen + #535, #32
    static Screen + #536, #32
    static Screen + #537, #32
    static Screen + #538, #32
    static Screen + #539, #32
    static Screen + #540, #32
    static Screen + #541, #32
    static Screen + #542, #32
    static Screen + #543, #32
    static Screen + #544, #32
    static Screen + #545, #32
    static Screen + #546, #32
    static Screen + #547, #32
    static Screen + #548, #32
    static Screen + #549, #32
    static Screen + #550, #32
    static Screen + #551, #32
    static Screen + #552, #32
    static Screen + #553, #32
    static Screen + #554, #32
    static Screen + #555, #32
    static Screen + #556, #32
    static Screen + #557, #32
    static Screen + #558, #32
    static Screen + #559, #32
    static Screen + #560, #32
    static Screen + #561, #32
    static Screen + #562, #32
    static Screen + #563, #32
    static Screen + #564, #32
    static Screen + #565, #32
    static Screen + #566, #32
    static Screen + #567, #32
    static Screen + #568, #32
    static Screen + #569, #32
    static Screen + #570, #32
    static Screen + #571, #32
    static Screen + #572, #32
    static Screen + #573, #32
    static Screen + #574, #32
    static Screen + #575, #32
    static Screen + #576, #32
    static Screen + #577, #32
    static Screen + #578, #32
    static Screen + #579, #32
    static Screen + #580, #32
    static Screen + #581, #32
    static Screen + #582, #32
    static Screen + #583, #32
    static Screen + #584, #32
    static Screen + #585, #32
    static Screen + #586, #32
    static Screen + #587, #32
    static Screen + #588, #32
    static Screen + #589, #32
    static Screen + #590, #32
    static Screen + #591, #32
    static Screen + #592, #32
    static Screen + #593, #32
    static Screen + #594, #32
    static Screen + #595, #32
    static Screen + #596, #32
    static Screen + #597, #32
    static Screen + #598, #32
    static Screen + #599, #32
    static Screen + #600, #32
    static Screen + #601, #32
    static Screen + #602, #32
    static Screen + #603, #32
    static Screen + #604, #32
    static Screen + #605, #32
    static Screen + #606, #32
    static Screen + #607, #32
    static Screen + #608, #32
    static Screen + #609, #32
    static Screen + #610, #32
    static Screen + #611, #32
    static Screen + #612, #32
    static Screen + #613, #32
    static Screen + #614, #32
    static Screen + #615, #32
    static Screen + #616, #32
    static Screen + #617, #32
    static Screen + #618, #32
    static Screen + #619, #32
    static Screen + #620, #32
    static Screen + #621, #32
    static Screen + #622, #32
    static Screen + #623, #32
    static Screen + #624, #32
    static Screen + #625, #32
    static Screen + #626, #32
    static Screen + #627, #32
    static Screen + #628, #32
    static Screen + #629, #32
    static Screen + #630, #32
    static Screen + #631, #32
    static Screen + #632, #32
    static Screen + #633, #32
    static Screen + #634, #32
    static Screen + #635, #32
    static Screen + #636, #32
    static Screen + #637, #32
    static Screen + #638, #32
    static Screen + #639, #32
    static Screen + #640, #32
    static Screen + #641, #32
    static Screen + #642, #32
    static Screen + #643, #32
    static Screen + #644, #32
    static Screen + #645, #32
    static Screen + #646, #32
    static Screen + #647, #32
    static Screen + #648, #32
    static Screen + #649, #32
    static Screen + #650, #32
    static Screen + #651, #32
    static Screen + #652, #32
    static Screen + #653, #32
    static Screen + #654, #32
    static Screen + #655, #32
    static Screen + #656, #32
    static Screen + #657, #32
    static Screen + #658, #32
    static Screen + #659, #32
    static Screen + #660, #32
    static Screen + #661, #32
    static Screen + #662, #32
    static Screen + #663, #32
    static Screen + #664, #32
    static Screen + #665, #32
    static Screen + #666, #32
    static Screen + #667, #32
    static Screen + #668, #32
    static Screen + #669, #32
    static Screen + #670, #32
    static Screen + #671, #32
    static Screen + #672, #32
    static Screen + #673, #32
    static Screen + #674, #32
    static Screen + #675, #32
    static Screen + #676, #32
    static Screen + #677, #32
    static Screen + #678, #32
    static Screen + #679, #32
    static Screen + #680, #32
    static Screen + #681, #32
    static Screen + #682, #32
    static Screen + #683, #32
    static Screen + #684, #32
    static Screen + #685, #32
    static Screen + #686, #32
    static Screen + #687, #32
    static Screen + #688, #32
    static Screen + #689, #32
    static Screen + #690, #32
    static Screen + #691, #32
    static Screen + #692, #32
    static Screen + #693, #32
    static Screen + #694, #32
    static Screen + #695, #32
    static Screen + #696, #32
    static Screen + #697, #32
    static Screen + #698, #32
    static Screen + #699, #32
    static Screen + #700, #32
    static Screen + #701, #32
    static Screen + #702, #32
    static Screen + #703, #32
    static Screen + #704, #32
    static Screen + #705, #32
    static Screen + #706, #32
    static Screen + #707, #32
    static Screen + #708, #32
    static Screen + #709, #32
    static Screen + #710, #32
    static Screen + #711, #32
    static Screen + #712, #32
    static Screen + #713, #32
    static Screen + #714, #32
    static Screen + #715, #32
    static Screen + #716, #32
    static Screen + #717, #32
    static Screen + #718, #32
    static Screen + #719, #32
    static Screen + #720, #32
    static Screen + #721, #32
    static Screen + #722, #32
    static Screen + #723, #32
    static Screen + #724, #32
    static Screen + #725, #32
    static Screen + #726, #32
    static Screen + #727, #32
    static Screen + #728, #32
    static Screen + #729, #32
    static Screen + #730, #32
    static Screen + #731, #32
    static Screen + #732, #32
    static Screen + #733, #32
    static Screen + #734, #32
    static Screen + #735, #32
    static Screen + #736, #32
    static Screen + #737, #32
    static Screen + #738, #32
    static Screen + #739, #32
    static Screen + #740, #32
    static Screen + #741, #32
    static Screen + #742, #32
    static Screen + #743, #32
    static Screen + #744, #32
    static Screen + #745, #32
    static Screen + #746, #32
    static Screen + #747, #32
    static Screen + #748, #32
    static Screen + #749, #32
    static Screen + #750, #32
    static Screen + #751, #32
    static Screen + #752, #32
    static Screen + #753, #32
    static Screen + #754, #32
    static Screen + #755, #32
    static Screen + #756, #32
    static Screen + #757, #32
    static Screen + #758, #32
    static Screen + #759, #32
    static Screen + #760, #32
    static Screen + #761, #32
    static Screen + #762, #32
    static Screen + #763, #32
    static Screen + #764, #32
    static Screen + #765, #32
    static Screen + #766, #32
    static Screen + #767, #32
    static Screen + #768, #32
    static Screen + #769, #32
    static Screen + #770, #32
    static Screen + #771, #32
    static Screen + #772, #32
    static Screen + #773, #32
    static Screen + #774, #32
    static Screen + #775, #32
    static Screen + #776, #32
    static Screen + #777, #32
    static Screen + #778, #32
    static Screen + #779, #32
    static Screen + #780, #32
    static Screen + #781, #32
    static Screen + #782, #32
    static Screen + #783, #32
    static Screen + #784, #32
    static Screen + #785, #32
    static Screen + #786, #32
    static Screen + #787, #32
    static Screen + #788, #32
    static Screen + #789, #32
    static Screen + #790, #32
    static Screen + #791, #32
    static Screen + #792, #32
    static Screen + #793, #32
    static Screen + #794, #32
    static Screen + #795, #32
    static Screen + #796, #32
    static Screen + #797, #32
    static Screen + #798, #32
    static Screen + #799, #32
    static Screen + #800, #32
    static Screen + #801, #32
    static Screen + #802, #32
    static Screen + #803, #32
    static Screen + #804, #32
    static Screen + #805, #32
    static Screen + #806, #32
    static Screen + #807, #32
    static Screen + #808, #32
    static Screen + #809, #32
    static Screen + #810, #32
    static Screen + #811, #32
    static Screen + #812, #32
    static Screen + #813, #32
    static Screen + #814, #32
    static Screen + #815, #32
    static Screen + #816, #32
    static Screen + #817, #32
    static Screen + #818, #32
    static Screen + #819, #32
    static Screen + #820, #32
    static Screen + #821, #32
    static Screen + #822, #32
    static Screen + #823, #32
    static Screen + #824, #32
    static Screen + #825, #32
    static Screen + #826, #32
    static Screen + #827, #32
    static Screen + #828, #32
    static Screen + #829, #32
    static Screen + #830, #32
    static Screen + #831, #32
    static Screen + #832, #32
    static Screen + #833, #32
    static Screen + #834, #32
    static Screen + #835, #32
    static Screen + #836, #32
    static Screen + #837, #32
    static Screen + #838, #32
    static Screen + #839, #32
    static Screen + #840, #32
    static Screen + #841, #32
    static Screen + #842, #32
    static Screen + #843, #32
    static Screen + #844, #32
    static Screen + #845, #32
    static Screen + #846, #32
    static Screen + #847, #32
    static Screen + #848, #32
    static Screen + #849, #32
    static Screen + #850, #32
    static Screen + #851, #32
    static Screen + #852, #32
    static Screen + #853, #32
    static Screen + #854, #32
    static Screen + #855, #32
    static Screen + #856, #32
    static Screen + #857, #32
    static Screen + #858, #32
    static Screen + #859, #32
    static Screen + #860, #32
    static Screen + #861, #32
    static Screen + #862, #32
    static Screen + #863, #32
    static Screen + #864, #32
    static Screen + #865, #32
    static Screen + #866, #32
    static Screen + #867, #32
    static Screen + #868, #32
    static Screen + #869, #32
    static Screen + #870, #32
    static Screen + #871, #32
    static Screen + #872, #32
    static Screen + #873, #32
    static Screen + #874, #32
    static Screen + #875, #32
    static Screen + #876, #32
    static Screen + #877, #32
    static Screen + #878, #32
    static Screen + #879, #32
    static Screen + #880, #32
    static Screen + #881, #32
    static Screen + #882, #32
    static Screen + #883, #32
    static Screen + #884, #32
    static Screen + #885, #32
    static Screen + #886, #32
    static Screen + #887, #32
    static Screen + #888, #32
    static Screen + #889, #32
    static Screen + #890, #32
    static Screen + #891, #32
    static Screen + #892, #32
    static Screen + #893, #32
    static Screen + #894, #32
    static Screen + #895, #32
    static Screen + #896, #32
    static Screen + #897, #32
    static Screen + #898, #32
    static Screen + #899, #32
    static Screen + #900, #32
    static Screen + #901, #32
    static Screen + #902, #32
    static Screen + #903, #32
    static Screen + #904, #32
    static Screen + #905, #32
    static Screen + #906, #32
    static Screen + #907, #32
    static Screen + #908, #32
    static Screen + #909, #32
    static Screen + #910, #32
    static Screen + #911, #32
    static Screen + #912, #32
    static Screen + #913, #32
    static Screen + #914, #32
    static Screen + #915, #32
    static Screen + #916, #32
    static Screen + #917, #32
    static Screen + #918, #32
    static Screen + #919, #32
    static Screen + #920, #32
    static Screen + #921, #32
    static Screen + #922, #32
    static Screen + #923, #32
    static Screen + #924, #32
    static Screen + #925, #32
    static Screen + #926, #32
    static Screen + #927, #32
    static Screen + #928, #32
    static Screen + #929, #32
    static Screen + #930, #32
    static Screen + #931, #32
    static Screen + #932, #32
    static Screen + #933, #32
    static Screen + #934, #32
    static Screen + #935, #32
    static Screen + #936, #32
    static Screen + #937, #32
    static Screen + #938, #32
    static Screen + #939, #32
    static Screen + #940, #32
    static Screen + #941, #32
    static Screen + #942, #32
    static Screen + #943, #32
    static Screen + #944, #32
    static Screen + #945, #32
    static Screen + #946, #32
    static Screen + #947, #32
    static Screen + #948, #32
    static Screen + #949, #32
    static Screen + #950, #32
    static Screen + #951, #32
    static Screen + #952, #32
    static Screen + #953, #32
    static Screen + #954, #32
    static Screen + #955, #32
    static Screen + #956, #32
    static Screen + #957, #32
    static Screen + #958, #32
    static Screen + #959, #32
    static Screen + #960, #32
    static Screen + #961, #32
    static Screen + #962, #32
    static Screen + #963, #32
    static Screen + #964, #32
    static Screen + #965, #32
    static Screen + #966, #32
    static Screen + #967, #32
    static Screen + #968, #32
    static Screen + #969, #32
    static Screen + #970, #32
    static Screen + #971, #32
    static Screen + #972, #32
    static Screen + #973, #32
    static Screen + #974, #32
    static Screen + #975, #32
    static Screen + #976, #32
    static Screen + #977, #32
    static Screen + #978, #32
    static Screen + #979, #32
    static Screen + #980, #32
    static Screen + #981, #32
    static Screen + #982, #32
    static Screen + #983, #32
    static Screen + #984, #32
    static Screen + #985, #32
    static Screen + #986, #32
    static Screen + #987, #32
    static Screen + #988, #32
    static Screen + #989, #32
    static Screen + #990, #32
    static Screen + #991, #32
    static Screen + #992, #32
    static Screen + #993, #32
    static Screen + #994, #32
    static Screen + #995, #32
    static Screen + #996, #32
    static Screen + #997, #32
    static Screen + #998, #32
    static Screen + #999, #32
    static Screen + #1000, #32
    static Screen + #1001, #32
    static Screen + #1002, #32
    static Screen + #1003, #32
    static Screen + #1004, #32
    static Screen + #1005, #32
    static Screen + #1006, #32
    static Screen + #1007, #32
    static Screen + #1008, #32
    static Screen + #1009, #32
    static Screen + #1010, #32
    static Screen + #1011, #32
    static Screen + #1012, #32
    static Screen + #1013, #32
    static Screen + #1014, #32
    static Screen + #1015, #32
    static Screen + #1016, #32
    static Screen + #1017, #32
    static Screen + #1018, #32
    static Screen + #1019, #32
    static Screen + #1020, #32
    static Screen + #1021, #32
    static Screen + #1022, #32
    static Screen + #1023, #32
    static Screen + #1024, #32
    static Screen + #1025, #32
    static Screen + #1026, #32
    static Screen + #1027, #32
    static Screen + #1028, #32
    static Screen + #1029, #32
    static Screen + #1030, #32
    static Screen + #1031, #32
    static Screen + #1032, #32
    static Screen + #1033, #32
    static Screen + #1034, #32
    static Screen + #1035, #32
    static Screen + #1036, #32
    static Screen + #1037, #32
    static Screen + #1038, #32
    static Screen + #1039, #32
    static Screen + #1040, #32
    static Screen + #1041, #32
    static Screen + #1042, #32
    static Screen + #1043, #32
    static Screen + #1044, #32
    static Screen + #1045, #32
    static Screen + #1046, #32
    static Screen + #1047, #32
    static Screen + #1048, #32
    static Screen + #1049, #32
    static Screen + #1050, #32
    static Screen + #1051, #32
    static Screen + #1052, #32
    static Screen + #1053, #32
    static Screen + #1054, #32
    static Screen + #1055, #32
    static Screen + #1056, #32
    static Screen + #1057, #32
    static Screen + #1058, #32
    static Screen + #1059, #32
    static Screen + #1060, #32
    static Screen + #1061, #32
    static Screen + #1062, #32
    static Screen + #1063, #32
    static Screen + #1064, #32
    static Screen + #1065, #32
    static Screen + #1066, #32
    static Screen + #1067, #32
    static Screen + #1068, #32
    static Screen + #1069, #32
    static Screen + #1070, #32
    static Screen + #1071, #32
    static Screen + #1072, #32
    static Screen + #1073, #32
    static Screen + #1074, #32
    static Screen + #1075, #32
    static Screen + #1076, #32
    static Screen + #1077, #32
    static Screen + #1078, #32
    static Screen + #1079, #32
    static Screen + #1080, #32
    static Screen + #1081, #32
    static Screen + #1082, #32
    static Screen + #1083, #32
    static Screen + #1084, #32
    static Screen + #1085, #32
    static Screen + #1086, #32
    static Screen + #1087, #32
    static Screen + #1088, #32
    static Screen + #1089, #32
    static Screen + #1090, #32
    static Screen + #1091, #32
    static Screen + #1092, #32
    static Screen + #1093, #32
    static Screen + #1094, #32
    static Screen + #1095, #32
    static Screen + #1096, #32
    static Screen + #1097, #32
    static Screen + #1098, #32
    static Screen + #1099, #32
    static Screen + #1100, #32
    static Screen + #1101, #32
    static Screen + #1102, #32
    static Screen + #1103, #32
    static Screen + #1104, #32
    static Screen + #1105, #32
    static Screen + #1106, #32
    static Screen + #1107, #32
    static Screen + #1108, #32
    static Screen + #1109, #32
    static Screen + #1110, #32
    static Screen + #1111, #32
    static Screen + #1112, #32
    static Screen + #1113, #32
    static Screen + #1114, #32
    static Screen + #1115, #32
    static Screen + #1116, #32
    static Screen + #1117, #32
    static Screen + #1118, #32
    static Screen + #1119, #32
    static Screen + #1120, #32
    static Screen + #1121, #32
    static Screen + #1122, #32
    static Screen + #1123, #32
    static Screen + #1124, #32
    static Screen + #1125, #32
    static Screen + #1126, #32
    static Screen + #1127, #32
    static Screen + #1128, #32
    static Screen + #1129, #32
    static Screen + #1130, #32
    static Screen + #1131, #32
    static Screen + #1132, #32
    static Screen + #1133, #32
    static Screen + #1134, #32
    static Screen + #1135, #32
    static Screen + #1136, #32
    static Screen + #1137, #32
    static Screen + #1138, #32
    static Screen + #1139, #32
    static Screen + #1140, #32
    static Screen + #1141, #32
    static Screen + #1142, #32
    static Screen + #1143, #32
    static Screen + #1144, #32
    static Screen + #1145, #32
    static Screen + #1146, #32
    static Screen + #1147, #32
    static Screen + #1148, #32
    static Screen + #1149, #32
    static Screen + #1150, #32
    static Screen + #1151, #32
    static Screen + #1152, #32
    static Screen + #1153, #32
    static Screen + #1154, #32
    static Screen + #1155, #32
    static Screen + #1156, #32
    static Screen + #1157, #32
    static Screen + #1158, #32
    static Screen + #1159, #32
    static Screen + #1160, #32
    static Screen + #1161, #32
    static Screen + #1162, #32
    static Screen + #1163, #32
    static Screen + #1164, #32
    static Screen + #1165, #32
    static Screen + #1166, #32
    static Screen + #1167, #32
    static Screen + #1168, #32
    static Screen + #1169, #32
    static Screen + #1170, #32
    static Screen + #1171, #32
    static Screen + #1172, #32
    static Screen + #1173, #32
    static Screen + #1174, #32
    static Screen + #1175, #32
    static Screen + #1176, #32
    static Screen + #1177, #32
    static Screen + #1178, #32
    static Screen + #1179, #32
    static Screen + #1180, #32
    static Screen + #1181, #32
    static Screen + #1182, #32
    static Screen + #1183, #32
    static Screen + #1184, #32
    static Screen + #1185, #32
    static Screen + #1186, #32
    static Screen + #1187, #32
    static Screen + #1188, #32
    static Screen + #1189, #32
    static Screen + #1190, #32
    static Screen + #1191, #32
    static Screen + #1192, #32
    static Screen + #1193, #32
    static Screen + #1194, #32
    static Screen + #1195, #32
    static Screen + #1196, #32
    static Screen + #1197, #32
    static Screen + #1198, #32
    static Screen + #1199, #32
ZombiesPos: var #20
    static ZombiesPos + #0, #6900
    static ZombiesPos + #1, #6900
    static ZombiesPos + #2, #6900
    static ZombiesPos + #3, #6900
    static ZombiesPos + #4, #6900
    static ZombiesPos + #5, #6900
    static ZombiesPos + #6, #6900
    static ZombiesPos + #7, #6900
    static ZombiesPos + #8, #6900
    static ZombiesPos + #9, #6900
    static ZombiesPos + #10, #6900
    static ZombiesPos + #11, #6900
    static ZombiesPos + #12, #6900
    static ZombiesPos + #13, #6900
    static ZombiesPos + #14, #6900
    static ZombiesPos + #15, #6900
    static ZombiesPos + #16, #6900
    static ZombiesPos + #17, #6900
    static ZombiesPos + #18, #6900
    static ZombiesPos + #19, #6900
PlayerPos: var #1
BulletPos: var #1
DelayToShoot: var #1
DelayToMovePlayer: var #1
DelayToWrite: var #1
DelayToMoveZombies: var #1
RandomPosForZombies: var #30
    static RandomPosForZombies + #0, #230
    static RandomPosForZombies + #1, #1175
    static RandomPosForZombies + #2, #474
    static RandomPosForZombies + #3, #1098
    static RandomPosForZombies + #4, #832
    static RandomPosForZombies + #5, #770
    static RandomPosForZombies + #6, #269
    static RandomPosForZombies + #7, #430
    static RandomPosForZombies + #8, #177
    static RandomPosForZombies + #9, #1124
    static RandomPosForZombies + #10, #644
    static RandomPosForZombies + #11, #915
    static RandomPosForZombies + #12, #391
    static RandomPosForZombies + #13, #578
    static RandomPosForZombies + #14, #128
    static RandomPosForZombies + #15, #1130
    static RandomPosForZombies + #16, #602
    static RandomPosForZombies + #17, #287
    static RandomPosForZombies + #18, #4
    static RandomPosForZombies + #19, #712
    static RandomPosForZombies + #20, #639
    static RandomPosForZombies + #21, #273
    static RandomPosForZombies + #22, #259
    static RandomPosForZombies + #23, #77
    static RandomPosForZombies + #24, #1111
    static RandomPosForZombies + #25, #303
    static RandomPosForZombies + #26, #844
    static RandomPosForZombies + #27, #1170
    static RandomPosForZombies + #28, #124
    static RandomPosForZombies + #29, #871
FacingDirection: var #1
RandomPosZombiesPointer: var #1

; ***************************************
; *       PRINTAR GRÁFICO NORMAL        *
; ***************************************
; exemplo de uso:
;   loadn r6, #1
;   loadn r7, #GraficoGato
;   call printar_grafico_NORMAL_r7_r6
; r6 = 1, significa que quero apagar
printar_grafico_NORMAL_r7_r6:
    push r0
    push r1
    push r2
    push r4

    loadn r0, #0 ; linha de onde começa na tela
    loadn r2, #'\0' ; indica o fim da string
    loadn r4, #1200 ; limite da tela

    loop_printa_linha2:
        loadi r1, r7

        cmp r1, r2
        jeq pular_escrever_o_nada2

        outchar r1, r0

        pular_escrever_o_nada2:
        inc r7

        cmp r0, r4

        inc r0

        jeq printar_grafico_NORMAL_r7_r6.fim

        cmp r1, r2
        jne loop_printa_linha2

    inc r0
    jmp loop_printa_linha2

    printar_grafico_NORMAL_r7_r6.fim:
        pop r4
        pop r2
        pop r1
        pop r0
        rts

; ***************************************
; *       PRINTAR GRÁFICO CUSTOM        *
; ***************************************
; exemplo de uso:
;   loadn r6, #1
;   loadn r7, #GraficoGato
;   call printar_grafico_CUSTOM_r7_r6
; r6 = 1, significa que quero apagar
printar_grafico_CUSTOM_r7_r6:
    push r0
    push r1
    push r2
    push r3
    push r4

    loadn r0, #0 ; onde começa escrevendo na tela
    loadn r2, #1200 ; máximo de linhas da tela
    loadn r3, #0 ; para comparar na flag de apagar o que está em baixo
    loadn r4, #32 ; código do espaço

    cmp r6, r3
    jeq loop_de_outchar_normal

    loop_de_outchar_apagando:
        loadi r1, r7

        outchar r1, r0

        inc r7
        inc r0

        cmp r0, r2
        jne loop_de_outchar_apagando

        jmp printar_grafico_CUSTOM_r7_r6.fim

    loop_de_outchar_normal:
        loadi r1, r7

        cmp r1, r4
        jeq loop_de_outchar_normal.pular ; if igual, pular

        outchar r1, r0

        loop_de_outchar_normal.pular:
            inc r7
            inc r0

        cmp r0, r2
        jne loop_de_outchar_normal

    printar_grafico_CUSTOM_r7_r6.fim:
        pop r4
        pop r3
        pop r2
        pop r1
        pop r0
        rts

; ***************************************
; *          MOVER CARACTERE            *
; ***************************************
; r7 = caractere a mover
; r6 = posicao para mover
; r5 = posicao inicial (nao considera se for 6900)
mover_caractere_r7_r5_r6:
    push r0
    push r1
    push r2
    push r3

    loadn r3, #6900
    cmp r3, r6
    jeq mover_caractere_r7_r5_r6.erro

    loadn r0, #1199
    loadn r1, #0
    cmp r6, r0
    jgr mover_caractere_r7_r5_r6.fim
    cmp r6, r1
    jle mover_caractere_r7_r5_r6.fim

    loadn r0, Screen
    add r0, r0, r6
    loadi r1, r0
    load r2, EmptyChar
    cmp r2, r1
    jne mover_caractere_r7_r5_r6.fim

    cmp r5, r3
    jeq mover_caractere_r7_r5_r6.sem-pos-inicial

    outchar r2, r5
    outchar r7, r6

    storei r0, r7
    loadn r0, Screen
    add r0, r0, r5
    storei r0, r2

    mover_caractere_r7_r5_r6.fim:
        pop r2
        pop r1
        pop r0
        rts

    mover_caractere_r7_r5_r6.sem-pos-inicial:
        outchar r7, r6
        storei r0, r7

        jmp mover_caractere_r7_r5_r6.fim

    mover_caractere_r7_r5_r6.erro:
        error_message_2: string "Tentou colocar um caractere na nova posicao de 6900 (void)"
        push r7
        loadn r7, #error_message_2
        call printar_log_r7
        pop r7
        jmp mover_caractere_r7_r5_r6.fim

; ***************************************
; *        SPAWNAR PROXIMA WAVE         *
; ***************************************
spawnar_proxima_wave:
    push r0
    push r3
    push r5
    push r6
    push r7

    load r7, ZombieChar
    loadn r5, #6900
    loadn r3, #20
    loadn r0, #ZombiePos

    spawnar_proxima_wave.loop:
        loadi r6, r0

        cmp r5, r6
        jeq spawnar_proxima_wave.fim

        dec r3
        jz spawnar_proxima_wave.fim

        call mover_caractere_r7_r5_r6

        inc r0
        jmp spawnar_proxima_wave.loop

    spawnar_proxima_wave.fim:
        pop r7
        pop r6
        pop r5
        pop r3
        pop r0
        rts

; ***************************************
; *      MOVER ZUMBIS A CADA LOOP       *
; ***************************************
mover_zumbis:
    load r0, PlayerPos
    loadn r1, #40

    div r2, r0, r1; linha que o player esta
    mod r3, r0, r1; coluna que o player esta

    loadn r6, #ZombiePos
    mover_zumbis.loop:
        div r4, r0, r1; linha que o zumbi esta
        mod r5, r0, r1; coluna que o zumbi esta

; ***************************************
; *         POSIÇÕES ALEATÓRIAS         *
; ***************************************
; exemplo de uso:
;   loadn r7, #19
;   call load_random_zombie_positons_r7
; r7 pode ser no máximo 20
load_random_zombie_positons_r7
    push r0
    push r1
    push r2
    push r3
    push r4
    push r6

    loadn r0, #20
    cmp r7, r0
    jeq load_random_zombie_positons_r7.erro

    loadn r2, #30 ; Nao pode ser igual a 30
    loadn r1, #RandomPosForZombies ; mesma coisa do de baixo
    loadn r3, #ZombiesPos ; pointer para a lista
    loadn r4, #6900

    load_random_zombie_positons_r7.loop-clean:
        storei r3, r4
        inc r3
        dec r0
        jz load_random_zombie_positons_r7.step2
        jmp load_random_zombie_positons_r7.loop-clean

    load_random_zombie_positons_r7.step2:
        loadn r3, #ZombiePos

    load_random_zombie_positons_r7.loop:
        load r0, RandomPosZombiesPointer
        add r1, r1, r0
        loadi r6, r1

        storei r3, r6
        inc r3

        inc r0
        cmp r0, r2
        jeq load_random_zombie_positons_r7.reset-pointer

        dec r7
        jz load_random_zombie_positons_r7.fim

        jmp load_random_zombie_positons_r7.loop

        load_random_zombie_positons_r7.reset-pointer:
            loadn r0, #0
            store RandomPosZombiesPointer, r0

    load_random_zombie_positons_r7.fim:
        pop r6
        pop r4
        pop r3
        pop r2
        pop r1
        pop r0
        rts

    load_random_zombie_positons_r7.erro:
        error_message_1: string "Colocou algo mais que 20 em r7"
        push r7
        loadn r7, #error_message_1
        call printar_log_r7
        pop r7
        jmp load_random_zombie_positons_r7.fim

printar_log_r7:
    push r0
    push r1
    push r2

    loadn r0, #0
    loadn r2, #'\0' ; fim de string
    printar_log_r7.loop:
        loadi r1, r7
        cmp r1, r2
        jeq printar_log_r7.fim
        outchar r1, r0
        inc r7
        inc r0
        jmp printar_log_r7.loop

    printar_log_r7.fim:
        pop r2
        pop r1
        pop r0
        rts

jmp main ;--------------------------------------------------------------JMP MAIN
599

main:
    loadn r0, #'r'
    store FacingDirection, r0
    loadn r0, #0
    store RandomPosZombiesPointer, r0

    call 

game_loop:

stop_error_loop:
    