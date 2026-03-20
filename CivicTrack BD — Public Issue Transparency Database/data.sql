-- ============================================================
-- CivicTrack BD - Realistic Seed Data
-- ============================================================
-- Purpose:
--   Populates the CivicTrack BD schema with realistic Bangladesh-focused sample
--   records for demos, testing, and query practice.
--
-- Prerequisite:
--   The schema script (`CivicTrack BD`) must be executed successfully first.
--
-- Data coverage:
--   Geography, departments, users/officers, complaints, status history,
--   evidence artifacts, escalation rules, and post-resolution ratings.

USE civictrack_bd;

-- ============================================================
-- 1. DIVISIONS (8 real Bangladesh divisions)
-- ============================================================
INSERT INTO divisions (division_name) VALUES
('Dhaka'),
('Chittagong'),
('Rajshahi'),
('Khulna'),
('Barisal'),
('Sylhet'),
('Rangpur'),
('Mymensingh');

-- ============================================================
-- 2. DISTRICTS (30 real Bangladesh districts)
-- ============================================================
INSERT INTO district (division_id, district_name) VALUES
-- Dhaka (1)
(1, 'Dhaka'),
(1, 'Gazipur'),
(1, 'Narayanganj'),
(1, 'Manikganj'),
(1, 'Munshiganj'),
-- Chittagong (2)
(2, 'Chittagong'),
(2, 'Cox''s Bazar'),
(2, 'Comilla'),
(2, 'Feni'),
(2, 'Noakhali'),
-- Rajshahi (3)
(3, 'Rajshahi'),
(3, 'Bogura'),
(3, 'Natore'),
(3, 'Pabna'),
(3, 'Sirajganj'),
-- Khulna (4)
(4, 'Khulna'),
(4, 'Jessore'),
(4, 'Satkhira'),
(4, 'Bagerhat'),
(4, 'Kushtia'),
-- Barisal (5)
(5, 'Barisal'),
(5, 'Bhola'),
(5, 'Patuakhali'),
-- Sylhet (6)
(6, 'Sylhet'),
(6, 'Moulvibazar'),
(6, 'Habiganj'),
-- Rangpur (7)
(7, 'Rangpur'),
(7, 'Dinajpur'),
(7, 'Kurigram'),
-- Mymensingh (8)
(8, 'Mymensingh'),
(8, 'Jamalpur');

-- ============================================================
-- 3. UPAZILAS (50 real upazilas)
-- ============================================================
INSERT INTO upazilas (district_id, upazila_name) VALUES
-- Dhaka district (1)
(1, 'Dhanmondi'),
(1, 'Mirpur'),
(1, 'Gulshan'),
(1, 'Motijheel'),
(1, 'Uttara'),
(1, 'Mohammadpur'),
(1, 'Tejgaon'),
-- Gazipur (2)
(2, 'Gazipur Sadar'),
(2, 'Tongi'),
(2, 'Kaliakair'),
-- Narayanganj (3)
(3, 'Narayanganj Sadar'),
(3, 'Rupganj'),
(3, 'Sonargaon'),
-- Chittagong (6)
(6, 'Chittagong Sadar'),
(6, 'Hathazari'),
(6, 'Rangunia'),
(6, 'Sitakunda'),
-- Cox's Bazar (7)
(7, 'Cox''s Bazar Sadar'),
(7, 'Teknaf'),
(7, 'Ukhia'),
-- Comilla (8)
(8, 'Comilla Sadar'),
(8, 'Chandina'),
(8, 'Debidwar'),
-- Rajshahi (11)
(11, 'Rajshahi Sadar'),
(11, 'Paba'),
(11, 'Godagari'),
-- Bogura (12)
(12, 'Bogura Sadar'),
(12, 'Sherpur'),
(12, 'Shibganj'),
-- Khulna (16)
(16, 'Khulna Sadar'),
(16, 'Sonadanga'),
(16, 'Khalishpur'),
-- Jessore (17)
(17, 'Jessore Sadar'),
(17, 'Abhaynagar'),
(17, 'Chaugacha'),
-- Barisal (21)
(21, 'Barisal Sadar'),
(21, 'Bakerganj'),
(21, 'Banaripara'),
-- Sylhet (24)
(24, 'Sylhet Sadar'),
(24, 'Beanibazar'),
(24, 'Golapganj'),
-- Moulvibazar (25)
(25, 'Moulvibazar Sadar'),
(25, 'Sreemangal'),
-- Rangpur (27)
(27, 'Rangpur Sadar'),
(27, 'Badarganj'),
(27, 'Mithapukur'),
-- Dinajpur (28)
(28, 'Dinajpur Sadar'),
(28, 'Birampur'),
-- Mymensingh (30)
(30, 'Mymensingh Sadar'),
(30, 'Trishal'),
(30, 'Bhaluka');

-- ============================================================
-- 4. DEPARTMENTS (10 departments)
-- ============================================================
INSERT INTO departments (department_name) VALUES
('Roads & Infrastructure'),
('Water & Sanitation'),
('Electricity & Power'),
('Health Services'),
('Education'),
('Environment & Waste Management'),
('Public Safety'),
('Land & Housing'),
('Transport & Traffic'),
('Social Welfare');

-- ============================================================
-- 5. USERS (50 users: 35 citizens, 12 officers, 3 admins)
-- ============================================================
INSERT INTO users (full_name, email, phone, role) VALUES
-- Citizens (1–35)  
('Rahim Uddin',        'rahim.uddin@gmail.com',      '01711111101', 'citizen'),
('Kamal Hossain',      'kamal.hossain@gmail.com',    '01711111102', 'citizen'),
('Fatema Begum',       'fatema.begum@gmail.com',      '01711111103', 'citizen'),
('Nasrin Akter',       'nasrin.akter@gmail.com',      '01711111104', 'citizen'),
('Jahangir Alam',      'jahangir.alam@gmail.com',     '01711111105', 'citizen'),
('Roksana Parvin',     'roksana.parvin@gmail.com',    '01711111106', 'citizen'),
('Mizanur Rahman',     'mizanur.rahman@gmail.com',    '01711111107', 'citizen'),
('Shirin Sultana',     'shirin.sultana@gmail.com',    '01711111108', 'citizen'),
('Abul Kalam',         'abul.kalam@gmail.com',        '01711111109', 'citizen'),
('Monira Islam',       'monira.islam@gmail.com',      '01711111110', 'citizen'),
('Tariqul Islam',      'tariqul.islam@gmail.com',     '01711111111', 'citizen'),
('Shamima Khatun',     'shamima.khatun@gmail.com',    '01711111112', 'citizen'),
('Nurul Islam',        'nurul.islam@gmail.com',       '01711111113', 'citizen'),
('Parveen Akter',      'parveen.akter@gmail.com',     '01711111114', 'citizen'),
('Delwar Hossain',     'delwar.hossain@gmail.com',    '01711111115', 'citizen'),
('Sabina Yasmin',      'sabina.yasmin@gmail.com',     '01711111116', 'citizen'),
('Hafizur Rahman',     'hafizur.rahman@gmail.com',    '01711111117', 'citizen'),
('Sumaiya Akter',      'sumaiya.akter@gmail.com',     '01711111118', 'citizen'),
('Belal Hossain',      'belal.hossain@gmail.com',     '01711111119', 'citizen'),
('Nazmul Huda',        'nazmul.huda@gmail.com',       '01711111120', 'citizen'),
('Hasina Begum',       'hasina.begum@gmail.com',      '01711111121', 'citizen'),
('Rafiqul Islam',      'rafiqul.islam@gmail.com',     '01711111122', 'citizen'),
('Taslima Khatun',     'taslima.khatun@gmail.com',    '01711111123', 'citizen'),
('Zahirul Islam',      'zahirul.islam@gmail.com',     '01711111124', 'citizen'),
('Morsheda Begum',     'morsheda.begum@gmail.com',    '01711111125', 'citizen'),
('Saiful Islam',       'saiful.islam@gmail.com',      '01711111126', 'citizen'),
('Rahela Khatun',      'rahela.khatun@gmail.com',     '01711111127', 'citizen'),
('Anwar Hossain',      'anwar.hossain@gmail.com',     '01711111128', 'citizen'),
('Kohinoor Begum',     'kohinoor.begum@gmail.com',    '01711111129', 'citizen'),
('Mahbubur Rahman',    'mahbubur.rahman@gmail.com',   '01711111130', 'citizen'),
('Ayesha Siddiqua',    'ayesha.siddiqua@gmail.com',   '01711111131', 'citizen'),
('Rezaul Karim',       'rezaul.karim@gmail.com',      '01711111132', 'citizen'),
('Nargis Akter',       'nargis.akter@gmail.com',      '01711111133', 'citizen'),
('Shahadat Hossain',   'shahadat.hossain@gmail.com',  '01711111134', 'citizen'),
('Farida Yasmin',      'farida.yasmin@gmail.com',     '01711111135', 'citizen'),

-- Officers (36–47)
('Asaduzzaman Khan',   'asad.khan@civictrack.gov.bd',    '01811111101', 'officer'),
('Shamsunnahar Mitu',  'shamsun.mitu@civictrack.gov.bd', '01811111102', 'officer'),
('Monirul Islam',      'monirul.islam@civictrack.gov.bd','01811111103', 'officer'),
('Tania Sultana',      'tania.sultana@civictrack.gov.bd','01811111104', 'officer'),
('Faruque Ahmed',      'faruque.ahmed@civictrack.gov.bd','01811111105', 'officer'),
('Shahida Khanam',     'shahida.khanam@civictrack.gov.bd','01811111106','officer'),
('Kamrul Hasan',       'kamrul.hasan@civictrack.gov.bd', '01811111107', 'officer'),
('Lubna Chowdhury',    'lubna.chow@civictrack.gov.bd',   '01811111108', 'officer'),
('Zahir Uddin',        'zahir.uddin@civictrack.gov.bd',  '01811111109', 'officer'),
('Nusrat Jahan',       'nusrat.jahan@civictrack.gov.bd', '01811111110', 'officer'),
('Mostafizur Rahman',  'mostafiz@civictrack.gov.bd',     '01811111111', 'officer'),
('Dilruba Akter',      'dilruba.akter@civictrack.gov.bd','01811111112', 'officer'),

-- Admins (48–50)
('Super Admin',        'superadmin@civictrack.gov.bd',   '01911111101', 'admin'),
('Divisional Admin',   'divadmin@civictrack.gov.bd',     '01911111102', 'admin'),
('System Admin',       'sysadmin@civictrack.gov.bd',     '01911111103', 'admin');

-- ============================================================
-- 6. OFFICERS (12 officers linked to users 36–47)
-- ============================================================
INSERT INTO officers (user_id, department_id, designation, joined_at) VALUES
(36, 1,  'Senior Field Engineer',       '2020-03-15'),
(37, 2,  'Water Supply Inspector',      '2021-06-01'),
(38, 3,  'Electrical Inspector',        '2019-11-20'),
(39, 4,  'Health Officer',              '2022-01-10'),
(40, 5,  'Education Coordinator',       '2021-08-05'),
(41, 6,  'Environment Officer',         '2020-07-22'),
(42, 7,  'Public Safety Officer',       '2018-04-30'),
(43, 8,  'Land Officer',                '2023-02-14'),
(44, 9,  'Traffic Controller',          '2022-09-01'),
(45, 10, 'Social Welfare Officer',      '2021-12-15'),
(46, 1,  'Junior Road Inspector',       '2023-05-10'),
(47, 2,  'Sanitation Field Officer',    '2022-03-20');

-- ============================================================
-- 7. COMPLAINTS (50 realistic complaints)
-- ============================================================
INSERT INTO complaints (user_id, department_id, division_id, district_id, upazila_id, title, description, priority_score, current_status, created_at) VALUES
(1,  1, 1, 1,  2,  'Large potholes on Mirpur Road 10',             'Road 10 in Mirpur has severe potholes causing daily accidents. Multiple vehicles damaged. Urgent repair needed.',                             5, 'escalated',     '2024-01-05 09:00:00'),
(2,  2, 1, 1,  1,  'No water supply in Dhanmondi block 7',         'Block 7, Dhanmondi has had no water supply for 5 consecutive days. Residents are suffering greatly.',                                        5, 'resolved',      '2024-01-07 10:30:00'),
(3,  3, 1, 2,  8,  'Frequent power cuts in Gazipur Sadar',         'Power is cut 8-10 times daily in Gazipur Sadar area. Factory operations and households severely impacted.',                                  4, 'investigating',  '2024-01-10 11:00:00'),
(4,  4, 1, 1,  3,  'Gulshan clinic lacks basic medicines',         'Government clinic in Gulshan sector 2 has been out of essential medicines for 2 weeks. Patients being turned away.',                         4, 'under_review',  '2024-01-12 08:45:00'),
(5,  6, 1, 1,  6,  'Illegal dumping near Mohammadpur canal',       'Large quantities of industrial waste being illegally dumped near the canal in Mohammadpur. Strong odor and health hazard.',                  3, 'resolved',      '2024-01-15 14:00:00'),
(6,  9, 1, 1,  5,  'Broken traffic signals in Uttara sector 11',  'Three consecutive traffic signals are broken in Uttara sector 11 causing severe traffic jams and accidents.',                                 4, 'under_review',  '2024-01-18 09:30:00'),
(7,  1, 2, 6,  14, 'Chittagong port road severely damaged',        'The main access road to Chittagong port has deep cracks and broken sections. Heavy trucks making situation worse.',                          5, 'investigating',  '2024-01-20 10:00:00'),
(8,  2, 2, 6,  15, 'Contaminated water supply in Hathazari',      'Residents of Hathazari reporting brownish water from taps. Several cases of diarrhea reported in the locality.',                             5, 'escalated',     '2024-01-22 07:30:00'),
(9,  7, 2, 7,  18, 'Police outpost understaffed in Cox''s Bazar', 'The beach area police outpost is critically understaffed. Tourist robberies have increased by 40% this month.',                             4, 'under_review',  '2024-01-25 11:15:00'),
(10, 5, 2, 8,  21, 'School building roof collapsing in Comilla',  'Primary school in Comilla Sadar has dangerous cracks in the roof. Students and teachers at risk. Classes still running.',                     5, 'escalated',     '2024-01-28 08:00:00'),
(11, 1, 3, 11, 24, 'Rajshahi-Natore highway potholes',            'The Rajshahi-Natore highway has severe deterioration over 5km stretch. Accident rate has tripled in this section.',                          4, 'investigating',  '2024-02-01 09:00:00'),
(12, 3, 3, 12, 27, 'No electricity for 2 days in Bogura Sadar',  'Entire Bogura Sadar area without electricity for 48+ hours following storm. No repair team dispatched yet.',                                  5, 'resolved',      '2024-02-03 06:00:00'),
(13, 6, 3, 11, 25, 'Factory smoke causing air pollution in Paba', 'Unregistered factory in Paba releasing thick black smoke 24/7. Residents reporting respiratory problems.',                                    4, 'under_review',  '2024-02-05 14:30:00'),
(14, 4, 4, 16, 30, 'Khulna general hospital OPD overcrowding',   'OPD at Khulna General Hospital handling 3x its capacity. Patients waiting 6+ hours. Understaffed situation critical.',                        4, 'under_review',  '2024-02-08 10:00:00'),
(15, 2, 4, 17, 33, 'Sewage overflow in Jessore residential area', 'Main sewage line burst in Jessore Sadar. Raw sewage flowing on streets for 3 days. Severe health risk.',                                     5, 'resolved',      '2024-02-10 08:30:00'),
(16, 8, 4, 16, 31, 'Illegal construction blocking road in Khulna','An illegally constructed structure has blocked 60% of the main road in Sonadanga area. Emergency access affected.',                          4, 'escalated',     '2024-02-12 11:00:00'),
(17, 1, 5, 21, 35, 'Barisal river road eroding dangerously',     'The riverside road in Barisal Sadar is eroding rapidly. A 20-meter section may collapse into the river within days.',                         5, 'investigating',  '2024-02-15 09:00:00'),
(18, 5, 5, 21, 36, 'School teachers absent for weeks in Barisal','Government school in Bakerganj has 3 out of 5 teachers absent regularly for over a month. Students not getting education.',                    3, 'submitted',     '2024-02-18 10:30:00'),
(19, 3, 6, 24, 39, 'Transformer explosion risk in Sylhet Sadar', 'Old transformer in Sylhet Sadar area making burning smell and sparking. Fire hazard. Residents scared to report formally.',                    5, 'investigating',  '2024-02-20 07:00:00'),
(20, 4, 6, 25, 42, 'No doctor in Sreemangal upazila health center','Sreemangal upazila health center has had no permanent doctor for 6 months. Only a nurse handling all patients.',                            4, 'under_review',  '2024-02-22 09:00:00'),
(21, 1, 7, 27, 43, 'Rangpur city road flooded after rain',        'Drainage system failure causes Rangpur city main road to flood after every rain. Situation recurring for 2 years.',                          3, 'submitted',     '2024-02-25 11:00:00'),
(22, 6, 7, 28, 46, 'Open burning of waste near Dinajpur market', 'Waste collectors burning garbage openly near the main market daily. Toxic fumes affecting shopkeepers and buyers.',                            3, 'submitted',     '2024-02-28 14:00:00'),
(23, 2, 8, 30, 48, 'Mymensingh city water tower leaking',        'Main water tower in Mymensingh Sadar has visible cracks and leaking. Water pressure critically low in 5 wards.',                              4, 'under_review',  '2024-03-02 08:00:00'),
(24, 9, 1, 1,  7,  'No traffic police in Tejgaon industrial area','Tejgaon industrial area has no traffic police during morning and evening rush. Daily gridlock for 2+ hours.',                                3, 'submitted',     '2024-03-05 09:30:00'),
(25, 7, 1, 3,  11, 'Chain snatching incidents in Narayanganj',   'Over 15 chain snatching incidents reported in Narayanganj Sadar in the past 2 weeks. Police response inadequate.',                            4, 'investigating',  '2024-03-08 10:00:00'),
(26, 10,1, 1,  4,  'Homeless elderly citizens in Motijheel',     'Over 30 homeless elderly people sleeping on the street near Motijheel. No social welfare support being provided.',                             3, 'submitted',     '2024-03-10 11:00:00'),
(27, 1, 1, 4,  13, 'Sonargaon bridge structurally unsafe',       'The main bridge in Sonargaon has visible cracks in pillars. Engineers warned it is unsafe but no action taken yet.',                          5, 'escalated',     '2024-03-12 08:00:00'),
(28, 2, 2, 9,  22, 'No clean water in Feni district villages',   'Over 10 villages in Feni district relying on contaminated pond water due to broken tube wells. Diarrhea outbreak reported.',                   5, 'investigating',  '2024-03-15 07:30:00'),
(29, 5, 2, 10, 23, 'Noakhali school has no electricity',         'The only government high school in this upazila has no electricity. Students studying in dark rooms. Exams approaching.',                     4, 'resolved',      '2024-03-18 09:00:00'),
(30, 4, 3, 13, 26, 'Natore medical center out of vaccines',      'Child vaccination program stalled in Natore as the medical center ran out of vaccines 3 weeks ago. No resupply scheduled.',                    5, 'escalated',     '2024-03-20 08:00:00'),
(31, 6, 3, 14, 28, 'Chemical waste dumped in Pabna river',       'A local factory reportedly dumping chemical waste directly into the Padma river tributary. Fish dying, water turning red.',                     5, 'escalated',     '2024-03-22 10:00:00'),
(32, 1, 4, 18, 31, 'Satkhira coastal road washed away',          'Recent storm washed away 2km of coastal road in Satkhira. Villages now completely cut off from district headquarters.',                        5, 'investigating',  '2024-03-25 08:30:00'),
(33, 8, 4, 19, 32, 'Land grabbing by local influential in Khulna','Powerful local individual encroaching on 3 acres of government khas land in Khalishpur. Affected families displaced.',                       4, 'under_review',  '2024-03-28 10:00:00'),
(34, 3, 5, 22, 35, 'Bhola island villages have no electricity',  'Three villages in Bhola have never had electricity despite promises from 2 years ago. Over 2000 households affected.',                         4, 'under_review',  '2024-04-01 09:00:00'),
(35, 2, 5, 23, 37, 'Patuakhali river water becoming saline',     'Increased salinity in freshwater supply due to climate change. Tube wells now giving salty water. Health crisis emerging.',                    4, 'investigating',  '2024-04-03 10:30:00'),
(1,  7, 6, 26, 41, 'Habiganj border area crime increasing',      'Crime rate near the border area in Habiganj has increased significantly. Residents fear traveling after dark.',                                 4, 'submitted',     '2024-04-05 08:00:00'),
(2,  9, 6, 24, 39, 'Auto-rickshaw meter tampering in Sylhet',    'Most auto-rickshaws in Sylhet are using tampered meters, overcharging passengers 2-3x the actual fare.',                                       3, 'under_review',  '2024-04-08 11:00:00'),
(3,  1, 7, 29, 45, 'Kurigram flood-damaged roads not repaired',  'Roads damaged in last year''s flood in Kurigram still not repaired after 8 months. Villagers using muddy tracks.',                           4, 'submitted',     '2024-04-10 09:00:00'),
(4,  5, 7, 27, 44, 'Rangpur university lab equipment missing',   'Science lab equipment purchased with government funds reported missing from Rangpur Government College. Corruption suspected.',                 4, 'under_review',  '2024-04-12 10:00:00'),
(5,  6, 8, 31, 49, 'Jamalpur factory discharge polluting crops', 'Industrial discharge from a factory in Jamalpur contaminating irrigation water. Crops dying in 4 villages.',                                   5, 'escalated',     '2024-04-15 08:30:00'),
(6,  4, 8, 30, 48, 'Mymensingh maternal health center closed',   'The only government maternal health center in this area has been closed for 15 days. Pregnant women have no safe delivery option.',           5, 'investigating',  '2024-04-18 09:00:00'),
(7,  10,1, 2,  9,  'Child labor in Tongi garments factories',    'Multiple children under 14 spotted working in garment factories in Tongi. Factory owners denying entry to inspectors.',                        5, 'escalated',     '2024-04-20 10:00:00'),
(8,  1, 1, 1,  1,  'Dhanmondi footpaths broken and unusable',   'Footpaths throughout Dhanmondi are broken, uplifted, and occupied by vendors. Pedestrians forced onto the road.',                              3, 'resolved',      '2024-04-22 11:00:00'),
(9,  2, 2, 6,  16, 'Rangunia water pump station broken',         'The main water pump station in Rangunia has been non-functional for 10 days. 50,000 residents without tap water.',                             5, 'escalated',     '2024-04-25 07:00:00'),
(10, 3, 3, 15, 29, 'Sirajganj power substation outdated',        'The main power substation in Sirajganj is 30 years old and causing frequent outages. Risk of major blackout increasing.',                      4, 'under_review',  '2024-04-28 09:30:00'),
(11, 7, 4, 20, 34, 'Kushtia night robbery incidents rising',     'Robbery cases in Kushtia town have risen 60% this quarter. Police patrols insufficient for the expanding city area.',                          4, 'investigating',  '2024-05-01 08:00:00'),
(12, 8, 5, 21, 35, 'Flood-displaced families need shelter',      'Over 200 families displaced by Barisal river flooding living in makeshift shelters on highway. No government support.',                        5, 'escalated',     '2024-05-03 06:30:00'),
(13, 5, 6, 25, 42, 'Sreemangal school mid-day meal program halted','The mid-day meal program for primary school students in Sreemangal has stopped for 1 month. Attendance dropping fast.',                    3, 'submitted',     '2024-05-05 10:00:00'),
(14, 9, 7, 28, 47, 'Birampur bus terminal without facilities',   'Birampur bus terminal has no toilet, drinking water, or waiting area. Passengers, especially women, face severe hardship.',                   3, 'under_review',  '2024-05-08 11:30:00'),
(15, 6, 8, 30, 48, 'Open sewage behind Mymensingh market',       'An open sewage channel behind the main market in Mymensingh has been clogged for 2 months. Mosquito breeding and health risk.', 4, 'submitted', '2024-05-10 09:00:00');

-- ============================================================
-- 8. COMPLAINT STATUS HISTORY
-- ============================================================
INSERT INTO complaint_status_history (complaint_id, status, updated_by, remarks, updated_at) VALUES
-- Complaint 1 (escalated)
(1, 'submitted',     NULL, 'Complaint received by system',                      '2024-01-05 09:00:00'),
(1, 'under_review',  1,    'Assigned to Roads dept field officer',               '2024-01-06 10:00:00'),
(1, 'investigating', 1,    'Site inspection done. Potholes confirmed critical.',  '2024-01-08 14:00:00'),
(1, 'escalated',     1,    'No contractor assigned. Escalated to division head.', '2024-01-12 09:00:00'),

-- Complaint 2 (resolved)
(2, 'submitted',     NULL, 'Complaint received by system',                       '2024-01-07 10:30:00'),
(2, 'under_review',  2,    'Assigned to water supply team',                      '2024-01-08 09:00:00'),
(2, 'investigating', 2,    'Main pipeline rupture identified in block 7.',        '2024-01-09 11:00:00'),
(2, 'resolved',      2,    'Pipeline repaired. Water supply restored.',           '2024-01-11 16:00:00'),

-- Complaint 3 (investigating)
(3, 'submitted',     NULL, 'Complaint received by system',                       '2024-01-10 11:00:00'),
(3, 'under_review',  3,    'Assigned to electrical inspection team',             '2024-01-11 10:00:00'),
(3, 'investigating', 3,    'Faulty substation transformer identified.',           '2024-01-14 13:00:00'),

-- Complaint 5 (resolved)
(5, 'submitted',     NULL, 'Complaint received',                                 '2024-01-15 14:00:00'),
(5, 'under_review',  6,    'Environment officer assigned.',                      '2024-01-16 09:00:00'),
(5, 'resolved',      6,    'Illegal dumping site cleared. Warning issued.',       '2024-01-20 15:00:00'),

-- Complaint 8 (escalated)
(8, 'submitted',     NULL, 'Complaint received',                                 '2024-01-22 07:30:00'),
(8, 'under_review',  2,    'Water sample sent to lab.',                          '2024-01-23 10:00:00'),
(8, 'investigating', 2,    'Lab result: E.coli contamination confirmed.',         '2024-01-25 12:00:00'),
(8, 'escalated',     2,    'Health emergency. Escalated to divisional authority.','2024-01-27 09:00:00'),

-- Complaint 10 (escalated)
(10,'submitted',     NULL, 'Complaint received',                                 '2024-01-28 08:00:00'),
(10,'under_review',  5,    'Education officer assigned for inspection.',          '2024-01-29 09:00:00'),
(10,'escalated',     5,    'Roof structurally unsafe. Emergency escalation.',     '2024-01-30 11:00:00'),

-- Complaint 12 (resolved)
(12,'submitted',     NULL, 'Complaint received',                                 '2024-02-03 06:00:00'),
(12,'under_review',  3,    'Emergency power team dispatched.',                   '2024-02-03 08:00:00'),
(12,'investigating', 3,    'Transformer blown due to storm surge.',               '2024-02-03 12:00:00'),
(12,'resolved',      3,    'Temporary generator installed. Main line restored.',  '2024-02-04 18:00:00'),

-- Complaint 15 (resolved)
(15,'submitted',     NULL, 'Complaint received',                                 '2024-02-10 08:30:00'),
(15,'under_review',  7,    'Sanitation team assigned.',                          '2024-02-10 11:00:00'),
(15,'investigating', 7,    'Main sewage pipe ruptured at junction 3.',            '2024-02-11 09:00:00'),
(15,'resolved',      7,    'Sewage line repaired and streets cleaned.',           '2024-02-13 17:00:00'),

-- Complaint 27 (escalated)
(27,'submitted',     NULL, 'Complaint received',                                 '2024-03-12 08:00:00'),
(27,'under_review',  1,    'Bridge inspection team dispatched.',                 '2024-03-13 09:00:00'),
(27,'investigating', 1,    'Structural cracks confirmed. Load test failed.',      '2024-03-14 14:00:00'),
(27,'escalated',     1,    'Bridge unsafe. Closed to traffic. Escalated.',        '2024-03-15 10:00:00'),

-- Complaint 29 (resolved)
(29,'submitted',     NULL, 'Complaint received',                                 '2024-03-18 09:00:00'),
(29,'under_review',  5,    'Education department assigned electrician.',          '2024-03-19 10:00:00'),
(29,'resolved',      5,    'Electricity connection installed at school.',         '2024-03-22 15:00:00'),

-- Complaint 43 (resolved)
(43,'submitted',     NULL, 'Complaint received',                                 '2024-04-22 11:00:00'),
(43,'under_review',  1,    'Road maintenance team assigned for Dhanmondi.',      '2024-04-23 09:00:00'),
(43,'resolved',      1,    'Footpaths repaired and vendors relocated.',           '2024-04-28 16:00:00');

-- ============================================================
-- 9. EVIDENCE (30 evidence files)
-- ============================================================
INSERT INTO evidence (complaint_id, file_type, file_path) VALUES
(1,  'image',    '/uploads/evidence/c1_pothole_mirpur1.jpg'),
(1,  'image',    '/uploads/evidence/c1_pothole_mirpur2.jpg'),
(1,  'video',    '/uploads/evidence/c1_pothole_mirpur_video.mp4'),
(2,  'image',    '/uploads/evidence/c2_water_supply_dhanmondi.jpg'),
(3,  'image',    '/uploads/evidence/c3_power_cut_gazipur.jpg'),
(3,  'document', '/uploads/evidence/c3_power_outage_report.pdf'),
(5,  'image',    '/uploads/evidence/c5_waste_dump_mohammadpur.jpg'),
(5,  'video',    '/uploads/evidence/c5_illegal_dumping_footage.mp4'),
(7,  'image',    '/uploads/evidence/c7_chittagong_road_damage.jpg'),
(7,  'image',    '/uploads/evidence/c7_port_road_cracks.jpg'),
(8,  'image',    '/uploads/evidence/c8_contaminated_water.jpg'),
(8,  'document', '/uploads/evidence/c8_water_lab_report.pdf'),
(10, 'image',    '/uploads/evidence/c10_school_roof_crack.jpg'),
(10, 'image',    '/uploads/evidence/c10_school_roof_close.jpg'),
(15, 'image',    '/uploads/evidence/c15_sewage_overflow_jessore.jpg'),
(15, 'video',    '/uploads/evidence/c15_sewage_street_flow.mp4'),
(16, 'image',    '/uploads/evidence/c16_illegal_construction.jpg'),
(19, 'image',    '/uploads/evidence/c19_transformer_sparking.jpg'),
(19, 'video',    '/uploads/evidence/c19_transformer_sparks_video.mp4'),
(27, 'image',    '/uploads/evidence/c27_bridge_crack1.jpg'),
(27, 'image',    '/uploads/evidence/c27_bridge_crack2.jpg'),
(27, 'document', '/uploads/evidence/c27_bridge_structural_report.pdf'),
(31, 'image',    '/uploads/evidence/c31_river_chemical_dump.jpg'),
(31, 'video',    '/uploads/evidence/c31_red_river_footage.mp4'),
(32, 'image',    '/uploads/evidence/c32_coastal_road_washed.jpg'),
(40, 'image',    '/uploads/evidence/c40_factory_discharge.jpg'),
(40, 'document', '/uploads/evidence/c40_water_quality_report.pdf'),
(42, 'image',    '/uploads/evidence/c42_child_labor_factory.jpg'),
(44, 'image',    '/uploads/evidence/c44_rangunia_pump_broken.jpg'),
(47, 'image',    '/uploads/evidence/c47_flood_displaced_families.jpg');

-- ============================================================
-- 10. ESCALATION RULES
-- ============================================================
INSERT INTO escalation_rules (from_status, to_status, days_limit) VALUES
('submitted',    'escalated', 3),
('under_review', 'escalated', 5),
('investigating','escalated', 7);

-- ============================================================
-- 11. COMPLAINT RATINGS (ratings for resolved complaints)
-- ============================================================
INSERT INTO complaint_ratings (complaint_id, user_id, rating, feedback) VALUES
(2,  2,  5, 'Very fast response! Water restored within 4 days. Excellent service.'),
(5,  6,  4, 'Waste cleared but took longer than expected. Overall good.'),
(12, 12, 5, 'Impressed! Power restored within 24 hours of escalation.'),
(15, 15, 3, 'Issue resolved but streets not properly cleaned after repair.'),
(29, 29, 4, 'School finally got electricity. Took a week but we are happy.'),
(43, 8,  4, 'Footpaths repaired nicely. Vendors still returning though.'),
(2,  1,  4, 'Good response from water department this time.'),
(12, 3,  5, 'Quickest resolution I have seen from any government department!');