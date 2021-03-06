BEGIN TRANSACTION;
CREATE TABLE educational_institutions (id integer PRIMARY KEY, sf_id VARCHAR(18), name VARCHAR(255));
INSERT INTO educational_institutions VALUES(1,'0013C00000DLn6yQAD','Connected Campus University');
INSERT INTO educational_institutions VALUES(2,'001R000001OZSyDIAX','Northern Virginia Community College (NVCC)');
INSERT INTO educational_institutions VALUES(3,'001R000001OZSf4IAH','George Mason University');
CREATE TABLE university_departments (id INTEGER PRIMARY KEY, sf_id VARCHAR(18), name VARCHAR(255), educational_institution_id INTEGER);
INSERT INTO university_departments VALUES(1,'0013C00000DLn7r','Economics Department',1);
INSERT INTO university_departments VALUES(2,'0013C00000DLnbd','English Department',1);
INSERT INTO university_departments VALUES(3,'0013C00000DLn7h','Mathematics Department',1);
INSERT INTO university_departments VALUES(4,'0013C00000DLn9I','Astrophysics Department',1);
INSERT INTO university_departments VALUES(5,'0013C00000DLn9b','Botany Department',1);
INSERT INTO university_departments VALUES(6,'0013C00000DLnAP','Environmental and Earth Sciences',1);
INSERT INTO university_departments VALUES(7,'0013C00000DLnvG','Music Department',1);
INSERT INTO university_departments VALUES(8,'0013C00000DLnAA','Chemistry Department',1);
INSERT INTO university_departments VALUES(9,'0013C00000DLnPg','Physics Department',1);
INSERT INTO university_departments VALUES(10,'0013C00000DLnyy','Philosophy Department',1);
INSERT INTO university_departments VALUES(11,'0013C00000DLnyj','Theater Department',1);
INSERT INTO university_departments VALUES(12,'0013C00000DLn9q','Biology Department',1);
INSERT INTO university_departments VALUES(13,'0013C00000DLnty','Art Department',1);
INSERT INTO university_departments VALUES(14,'0013C00000DLnty','Computer Science Department',1);
INSERT INTO university_departments VALUES(15,'0013C00000DLp6vQAD','Orientation',1);
INSERT INTO university_departments VALUES(16,'001R000001OZTJVIA5','Mathematics',2);
INSERT INTO university_departments VALUES(17,'001R000001OZTo3IAH','Mathematics',2);
CREATE TABLE academic_programs (id INTEGER PRIMARY KEY, sf_id VARCHAR(18), name VARCHAR(255), department_id INTEGER, description VARCHAR(255));
INSERT INTO academic_programs VALUES(1,'0013C00000DLn7N','BS Economics',1,'This program gives students a framework to learn how to understand behaviors and trends in a complex world. Students will learn, how governments, institutions, and households make economic decisions and compare costs and benefits.');
CREATE TABLE program_plans (id INTEGER PRIMARY KEY, sf_id VARCHAR(18), name VARCHAR(80), is_primary TINYINT, description VARCHAR(255), end_date DATE, start_date DATE, status VARCHAR(40), total_required_credits DECIMAL(3,3), program_id INTEGER);
INSERT INTO program_plans VALUES(1,'a0D3C000001u7CAUAY','BS Economics - Catalog Year 2017-2018',1,'','2017-01-01 00:00:00.000','2018-01-01 00:00:00.000','Current',120,1);
CREATE TABLE courses (id INTEGER PRIMARY KEY, sf_id VARCHAR(18), name VARCHAR(80), course_id VARCHAR(255), credit_hours DECIMAL(3,3), extended_description CLOB, department_id INTEGER);
INSERT INTO courses VALUES(1,'a063C000001YLqP','Honors General Chemistry 2','CHM 2051',3,'Second semester of the CHM 2045/CHM 2045L and CHM 2051/CHM 2046L sequence. Open to students with superior performance in CHM 2045 or its equivalent. Acids and bases, additional aspects of chemical equilibria, thermodynamics, electrochemistry, complex ions, descriptive chemistry and instructor-chosen topics.',8);
INSERT INTO courses VALUES(2,'a063C000001YLs6','Connected Campus Freshman Seminar','CCU 1000',3,NULL,15);
INSERT INTO courses VALUES(3,'a063C000001YLpR','Principles of Microeconomics','ECO 2023',4,'Theories of production, determination of prices and distribution of income in regulated and unregulated industries. Attention is also given to industrial relations, monopolies and comparative economic systems.',1);
INSERT INTO courses VALUES(4,'a063C000001YLqF','General Chemistry 1','CHM 2045',3,'The first semester of the CHM 2045/CHM 2045L and CHM 2046/CHM 2046L sequence. Stoichiometry, atomic and molecular structure, the states of matter, reaction rates and equilibria. A minimum grade of C is required to progress to CHM 2046.',8);
INSERT INTO courses VALUES(5,'a063C000001YLq0','Biological Sciences','BSC 2005',3,'A comprehensive introduction to living systems, including the scientific basis of biology, cell structure and function, genetic mechanisms, animal and plant anatomy and physiology, and ecology and evolutionary processes. Recommended for students not majoring in the natural sciences.',12);
INSERT INTO courses VALUES(6,'a063C000001YLsQ','Introduction to Philosophy','PHI 2010',3,'Variable topics introduction to philosophy through study of traditional questions about the existence of God, the nature of the mind, the definition of good, freedom of the will, and criteria of truth and knowledge.',10);
INSERT INTO courses VALUES(7,'a063C000001YLpM','Principles of Macroeconomics','ECO 2013',4,'The nature of economics, economic concepts and institutions; growth, unemployment and inflation; money and banking; economic policies; and the international economy.',1);
INSERT INTO courses VALUES(8,'a063C000001YLqt','Physics with Calculus 2','PHY 2049',3,'The second of a two-semester sequence of physics for scientists and engineers. Content includes Coulomb''s law, electric fields and potentials, capacitance, currents and circuits, Ampere''s law, Faraday''s law, inductance, Maxwell''s equations, electromagnetic waves, ray optics, interference and diffraction.',9);
INSERT INTO courses VALUES(9,'a063C000001YLrS','Argument and Persuasion','ENC 1102',3,'Writing techniques and forms of argument in a range of disciplines. For their major writing assignment in this course, students will write an extensively researched and well-documented research paper, learning professional and academic writing conventions and developing their critical thinking skills.',2);
INSERT INTO courses VALUES(10,'a063C000001YLqA','Chemistry for the Liberal Arts','CHM 1020',3,'Provides non-science majors with a basic understanding of the substances and chemical transformations central to our lives. Introduces chemical concepts and principles help the student better understand the role and impact of modern chemistry in society.',8);
INSERT INTO courses VALUES(11,'a063C000001YLq5','Integrated Principles of Biology 1','BSC 2010',3,'General Biology Core: the first of a two-semester sequence that prepares students for advanced biological sciences courses and allied fields. Studies the origin of life systems; of biological molecules and organization of living things at the subcellular, cellular and organismic levels; and of the activities of living forms in obtaining and utilizing energy and materials in growth, maintenance and reproduction.',12);
INSERT INTO courses VALUES(12,'a063C000001YLqj','Introduction to Principles of Physics','PHY 2020',3,'Fundamental principles of physics in mechanics, electricity and modern physics as applied to conservation laws. An in-depth analysis of selected topics with lecture demonstration, films and other teaching aids.',9);
INSERT INTO courses VALUES(13,'a063C000001YLqo','Physics with Calculus 1','PHY 2048',3,'The first of a two-semester sequence of physics for scientists and engineers. The course covers Newtonian mechanics and includes motion, vectors, Newton''s laws, work and conservation of energy, systems of particles, collisions, equilibrium, oscillations and waves.',9);
INSERT INTO courses VALUES(14,'a063C000001YLrX','Technical Writing','ENC 2210',3,'Surveys the forms and methods of communication used in business, industry and government, including nonformal and formal reports, letters, resumes and proposals.',2);
INSERT INTO courses VALUES(15,'a063C000001YLs1','Writing in the Law','ENC 3465',3,'Designed to help students master a variety of communication strategies and genres of writing relevant to law, with special emphasis on legal reasoning and logic. Students write legal briefs, a legal memorandum, business correspondence, and law school applications and are introduced to legal research and moot court debate.',2);
INSERT INTO courses VALUES(16,'a063C000001YLpv','Plant Diversity','BOT 2011C',4,'Survey of major plant groups with regard to structure, life histories and uses accompanied by a laboratory showing the diversity of plants in the world.',5);
INSERT INTO courses VALUES(17,'a063C000001YLqK','General Chemistry 2','CHM 2046',3,'The second semester of the CHM 2045/CHM 2045L and CHM 2046/CHM 2046L sequence. Students who completed CHM 2045 or equivalent at another institution should consult a chemistry advisor before registering for this course. Acids and bases, additional aspects of chemical equilibria, thermodynamics, electrochemistry, complex ions and descriptive chemistry.',8);
INSERT INTO courses VALUES(18,'a063C000001YLpg','Discovering the Universe','AST 1002',3,'An elementary, largely nonmathematical survey of our universe of stars, planets and galaxies. Acquaints the student with the development of astronomy as a human activity with how we know as well as what we know. Primarily for those not majoring in physical science or mathematics.',4);
INSERT INTO courses VALUES(19,'a063C000001YLqU','Chemistry for Engineers 2','CHM 2096',3,'The second course in a two-semester sequence. Topics include chemical equilibria, acid-base and solubility equilibria, entropy, free energy, electrochemical devices, solution dynamics and descriptive inorganic and organic chemistry. All topics are taught in an engineering case-study context.',8);
INSERT INTO courses VALUES(20,'a063C000001YLqZ','Introduction to Earth Science','ESC 1000',3,'Integrated application of the scientific method to the earth sciences, including geologic materials, resources and processes; surface, groundwater and climate; environmental problems; and related topics. Emphasizes Florida examples.',6);
INSERT INTO courses VALUES(21,'a063C000001YLpb','Intermediate Macroeconomics','ECO 3203',4,'Theoretical determinants of aggregate employment, income, expenditures and the price level. Keynesian and neoclassical models are analyzed.',1);
INSERT INTO courses VALUES(22,'a063C000001YLqy','Physics 1','PHY 2053',4,'First semester of introductory physics de-emphasizing calculus. Structure and properties of matter; kinematics, dynamics and statics; momentum and energy; rotation, elasticity; vibration; fluids; temperature and expansion, heat transfer, thermal behavior of gases; wave motion and sound.',9);
INSERT INTO courses VALUES(23,'a063C000001YLr3','Physics 2','PHY 2054',4,'Second semester of introductory physics de-emphasizing calculus. Electric charge, fields and circuits; electromagnetism, applied electricity; geometrical optics, wave optics, applied optics; electrons and photons; atoms and nuclei.',9);
INSERT INTO courses VALUES(24,'a063C000001YLrc','Analytical Writing and Thinking','ENC 2305',3,'Advances students critical thinking and writing skills beyond first-year composition. With wide-ranging themes in areas such as languages, political science, anthropology or biology, this course exposes students to the advanced analytical techniques and communication strategies that professors in all disciplines expect them to know.',2);
INSERT INTO courses VALUES(25,'a063C000001YLrw','Writing in the Social Sciences','ENC 3464',3,'Designed to help students master a variety of communication strategies and genres of writing relevant to the social sciences. Conducting original research, students learn the relationship between clear, simple prose and thoughtful social analysis. Students write literature reviews, develop methodologies, present results, analyze data, and draft graduate or internship applications.',2);
INSERT INTO courses VALUES(26,'a063C000001YLpC','Survey of Calculus 1','MAC 2233',3,'Geometric and heuristic approach to calculus; differentiation and integration of simple algebraic and exponential functions; applications to graphing, marginal analysis, optimization, areas and volumes.',3);
INSERT INTO courses VALUES(27,'a063C000001YLrr','Writing in the Medical Sciences','ENC 3459',3,'Training in advanced literacy skills for medical practitioners, including the use of medical databases and the presentation of medical research to professional and lay audiences. Work in teams that are typical of medical practice to learn techniques for effective patient interaction.',2);
INSERT INTO courses VALUES(28,'a063C000001YLpq','Astronomy and Astrophysics 2','AST 3019',3,'Second part of the AST 3018-3019 sequence. Stellar distance determination; spectral classification, magnitudes and the nature of color indices; binary stars; the interstellar medium; the Sun as a star; stellar interiors; star formation and stellar evolution; the structure of the Milky Way; the kinds of galaxies and their properties; groups, clusters and superclusters of galaxies; and cosmology.',4);
INSERT INTO courses VALUES(29,'a063C000001YLpW','Intermediate Microeconomics','ECO 3101',4,'Nature, scope and purpose of economic analysis. Examines the theory of consumer behavior, production, costs, firm behavior and the allocation of resources.',1);
INSERT INTO courses VALUES(30,'a063C000001YLqe','Introduction to Environmental Science','EVR 2001',3,'Delivered from a systems perspective, an interdisciplinary approach explores contemporary environments that are comprised of both human and non-human elements. Explores physical, chemical, and biological processes to understand pressing environmental challenges and cultural values, attitudes, and norms expressed by individuals and populations around the globe.',6);
INSERT INTO courses VALUES(31,'a063C000001YLrN','Expository and Argumentative Writing','ENC 1101',3,'The principal elements of writing clearly, efficiently and effectively. ENC 1101 also focuses on writing logical arguments, building research skills and developing critical thinking through reading, writing and discussion.',2);
INSERT INTO courses VALUES(32,'a063C000001YLpl','Astronomy and Astrophysics 1','AST 3018',3,'First part of the AST 3018-3019 sequence. Survey of astronomy and astrophysics for physical science, engineering or mathematics majors. Course covers gravitation, orbits and tides; the Moon''s phases and eclipses; light and spectra; the solar system; and a few historical milestones',4);
INSERT INTO courses VALUES(33,'a063C000001YLrm','Writing in the Health Professions','ENC 3453',3,'Designed to help students master a variety of communication strategies and genres of writing relevant to the health professions. Students learn to compose clear messages to professionals, patients, and the public, preparing them for upper-division courses and building a foundation for work in their professional communities.',2);
INSERT INTO courses VALUES(34,'a063C000001YLsV','Theatre Appreciation','THE 2000',3,NULL,11);
INSERT INTO courses VALUES(35,'a063C000001YLpH','Introduction to Statistics 1','STA 2023',3,'Graphical and numerical descriptive measures. Simple linear regression. Basic probability concepts, random variables, sampling distributions, central limit theorem. Large and small sample confidence intervals and significance tests for parameters associated with a single population and for comparison of two populations. Use of statistical computer software and computer applets to analyze data and explore new concepts.',3);
INSERT INTO courses VALUES(36,'a063C000001YLrh','Professional Communication for Engineers','ENC 3246',3,'Students master a variety of communication strategies and genres of writing relevant to engineering, such as composing email, memos, letters, technical descriptions, instructions, academic research reports and professional proposals. Students also respond to complex rhetorical situations, thus preparing for work in their professional communities.',2);
INSERT INTO courses VALUES(37,'a063C000001YLsG','Introduction to Literature','LIT 2000',3,'Examines the important role literature has played in individuals'' lives and in society, presenting a range of literary styles and genres, from different countries and historical periods. Special attention paid to development of critical skills of analysis and interpretation.',2);
INSERT INTO courses VALUES(38,'a063C000001YLsL','Experiencing Music','MUL 2010',3,'Examines how we experience music and how it teaches us about ourselves and our world. Illuminates how music both shapes and is shaped by social, political, national, and cultural forces. Music from around the world demonstrates a variety of musical experiences within historical and contemporary cultural settings.',7);
INSERT INTO courses VALUES(39,'a063C000001YLsH','Art Appreciation: Global Perspectives','ARH 2000',3,NULL,13);
INSERT INTO courses VALUES(40,'a063C000001YLri','Professional Writing in the Discipline','ENC 3254',3,'A communication course adjusted to a specific professional discipline, the discipline to be determined by need. Covers major elements of organizational communication with emphasis on composition of reports, proposals, letters and memos, manuals, and oral presentations. Course materials and assignments are relevant to the specific discipline.',2);
CREATE TABLE courses_external (id INTEGER PRIMARY KEY, sf_id VARCHAR(18), name VARCHAR(80), course_id VARCHAR(255), credit_hours DECIMAL(3,3), extended_description CLOB, department_id INTEGER);
INSERT INTO courses_external VALUES(1,'a0BR000000B1qvQMAR','Analytic Geometry and Calculus I','MATH 113',3,'',16);
CREATE TABLE plan_requirements_tier1 (id INTEGER PRIMARY KEY, sf_id VARCHAR(18), name VARCHAR(80), category VARCHAR(40), credits DECIMAL(3,3), description VARCHAR(255), sequence DECIMAL(2,0), course_id INTEGER, program_plan_id INTEGER);
INSERT INTO plan_requirements_tier1 VALUES(1,'a0B3C000003BUKN','Economics Major Requirements',NULL,NULL,NULL,1,NULL,1);
INSERT INTO plan_requirements_tier1 VALUES(2,'a0B3C000003BUL1','University Gen Ed Requirements',NULL,NULL,NULL,2,NULL,1);
INSERT INTO plan_requirements_tier1 VALUES(3,'a0B3C000003BUOP','Electives',NULL,NULL,NULL,3,NULL,1);
CREATE TABLE IF NOT EXISTS "plan_requirements_tier2" (id INTEGER PRIMARY KEY, sf_id VARCHAR(18), name VARCHAR(80), category VARCHAR(40), credits DECIMAL(3,3), description VARCHAR(255), sequence DECIMAL(2,0), course_id INTEGER, plan_requirement_tier1_id INTEGER);
INSERT INTO plan_requirements_tier2 VALUES(1,'a0B3C000003BUKS','Required Lower Level Coursework',NULL,22,NULL,1,NULL,1);
INSERT INTO plan_requirements_tier2 VALUES(2,'a0B3C000003BUKw','Required Upper Level Coursework',NULL,16,'Select from any 3000 or 4000 level course with the prefix ECO or ECN',2,NULL,1);
INSERT INTO plan_requirements_tier2 VALUES(3,'a0B3C000003BUL6','Core Gen Ed Biological and Physical Science',NULL,12,NULL,1,NULL,2);
INSERT INTO plan_requirements_tier2 VALUES(4,'a0B3C000003BUMT','Core Gen Ed Biological and Physical Science',NULL,1,'Take 1 Lab that Corresponds with a Core Gen Ed Biological and Physical Science',2,NULL,2);
INSERT INTO plan_requirements_tier2 VALUES(5,'a0B3C000003BUMY','Core Gen Ed Composition',NULL,6,NULL,3,NULL,2);
INSERT INTO plan_requirements_tier2 VALUES(6,'a0B3C000003BUOK','Core Gen Ed Mathematics',NULL,0,'Fulfilled by Economics Major Requirements MAC2233 & STA2023',4,NULL,2);
INSERT INTO plan_requirements_tier2 VALUES(7,'a0B3C000003BUOo','Core Gen Ed Humanities',NULL,9,NULL,5,NULL,2);
INSERT INTO plan_requirements_tier2 VALUES(8,'a0B3C000003BUOe','Core Gen Ed Behavioral Science',NULL,6,'Fulfilled by Economics Major Requirements ECO2013 & ECO2023',6,NULL,2);
INSERT INTO plan_requirements_tier2 VALUES(9,'a0B3C000003BUOj','Foreign Language',NULL,7,'Take two semesters of the same foreign language, 7-10 credits',7,NULL,2);
INSERT INTO plan_requirements_tier2 VALUES(10,'a0B3C000003BUOU','Lower Level Electives',NULL,29,'Any course not previously taken',1,NULL,3);
INSERT INTO plan_requirements_tier2 VALUES(11,'a0B3C000003BUOZ','Upper Level Electives',NULL,18,'Any 3000 level or above course not previously taken',2,NULL,3);
CREATE TABLE IF NOT EXISTS "plan_requirements_tier3" (id INTEGER PRIMARY KEY, sf_id VARCHAR(18), name VARCHAR(80), category VARCHAR(40), credits DECIMAL(3,3), description VARCHAR(255), sequence DECIMAL(2,0), course_id INTEGER, plan_requirement_tier2_id INTEGER);
INSERT INTO plan_requirements_tier3 VALUES(1,'a0B3C000003BUKr','Intermediate Microeconomics','Required',4,NULL,NULL,29,1);
INSERT INTO plan_requirements_tier3 VALUES(2,'a0B3C000003BUKm','Principles of Microeconomics','Required',4,NULL,NULL,3,1);
INSERT INTO plan_requirements_tier3 VALUES(3,'a0B3C000003BUKn','Intermediate Macroeconomics','Required',4,NULL,NULL,21,1);
INSERT INTO plan_requirements_tier3 VALUES(4,'a0B3C000003BUKh','Principles of Macroeconomics','Required',4,NULL,NULL,7,1);
INSERT INTO plan_requirements_tier3 VALUES(5,'a0B3C000003BUKc','Introduction to Statistics 1','Required',3,NULL,NULL,35,1);
INSERT INTO plan_requirements_tier3 VALUES(6,'a0B3C000003BUKX','Survey of Calculus 1','Required',3,NULL,NULL,26,1);
INSERT INTO plan_requirements_tier3 VALUES(7,'a0B3C000003BUL2','Core Gen Ed Options',NULL,12,NULL,NULL,NULL,3);
INSERT INTO plan_requirements_tier3 VALUES(8,'a0B3C000003BUMd','Core Gen Ed Options',NULL,6,NULL,1,NULL,5);
INSERT INTO plan_requirements_tier3 VALUES(9,'a0B3C000003BUOy','Core Gen Ed Options',NULL,6,NULL,NULL,NULL,7);
INSERT INTO plan_requirements_tier3 VALUES(10,'a0B3C000003BUOt','Connected Campus Freshman Seminar','Required',3,NULL,NULL,2,7);
CREATE TABLE IF NOT EXISTS "plan_requirements_tier4" (id INTEGER PRIMARY KEY, sf_id VARCHAR(18), name VARCHAR(80), category VARCHAR(40), credits DECIMAL(3,3), description VARCHAR(255), sequence DECIMAL(2,0), course_id INTEGER, plan_requirement_tier3_id INTEGER);
INSERT INTO plan_requirements_tier4 VALUES(1,'a0B3C000003BUL3','Astronomy and Astrophysics 1','Optional',3,NULL,NULL,32,7);
INSERT INTO plan_requirements_tier4 VALUES(2,'a0B3C000003BULG','Astronomy and Astrophysics 2','Optional',3,NULL,NULL,28,7);
INSERT INTO plan_requirements_tier4 VALUES(3,'a0B3C000003BULH','Biological Sciences','Optional',3,NULL,NULL,5,7);
INSERT INTO plan_requirements_tier4 VALUES(4,'a0B3C000003BULp','Chemistry for Engineers 2','Optional',3,NULL,NULL,19,7);
INSERT INTO plan_requirements_tier4 VALUES(5,'a0B3C000003BULV','Chemistry for the Liberal Arts','Optional',3,NULL,NULL,10,7);
INSERT INTO plan_requirements_tier4 VALUES(6,'a0B3C000003BULB','Discovering the Universe','Optional',3,NULL,NULL,18,7);
INSERT INTO plan_requirements_tier4 VALUES(7,'a0B3C000003BULa','General Chemistry 1','Optional',3,NULL,NULL,4,7);
INSERT INTO plan_requirements_tier4 VALUES(8,'a0B3C000003BULf','General Chemistry 2','Optional',3,NULL,NULL,17,7);
INSERT INTO plan_requirements_tier4 VALUES(9,'a0B3C000003BULk','Honors General Chemistry 2','Optional',3,NULL,NULL,1,7);
INSERT INTO plan_requirements_tier4 VALUES(10,'a0B3C000003BULu','Introduction to Earth Science','Optional',3,NULL,NULL,20,7);
INSERT INTO plan_requirements_tier4 VALUES(11,'a0B3C000003BULz','Introduction to Environmental Science','Optional',3,NULL,NULL,30,7);
INSERT INTO plan_requirements_tier4 VALUES(12,'a0B3C000003BUM4','Introduction to Principles of Physics','Optional',3,NULL,NULL,12,7);
INSERT INTO plan_requirements_tier4 VALUES(13,'a0B3C000003BULQ','Integrated Principles of Biology 1','Optional',3,NULL,NULL,11,7);
INSERT INTO plan_requirements_tier4 VALUES(14,'a0B3C000003BUMJ','Physics 1','Optional',4,NULL,NULL,22,7);
INSERT INTO plan_requirements_tier4 VALUES(15,'a0B3C000003BUMO','Physics 2','Optional',4,NULL,NULL,23,7);
INSERT INTO plan_requirements_tier4 VALUES(16,'a0B3C000003BUM9','Physics with Calculus 1','Optional',3,NULL,NULL,13,7);
INSERT INTO plan_requirements_tier4 VALUES(17,'a0B3C000003BUME','Physics with Calculus 2','Optional',3,NULL,NULL,8,7);
INSERT INTO plan_requirements_tier4 VALUES(18,'a0B3C000003BULL','Plant Diversity','Optional',3,NULL,NULL,16,7);
INSERT INTO plan_requirements_tier4 VALUES(19,'a0B3C000003BUN2','Analytical Writing and Thinking','Optional',3,NULL,NULL,24,8);
INSERT INTO plan_requirements_tier4 VALUES(20,'a0B3C000003BUMs','Argument and Persuasion','Optional',3,NULL,NULL,9,8);
INSERT INTO plan_requirements_tier4 VALUES(21,'a0B3C000003BUMi','Expository and Argumentative Writing','Optional',3,NULL,NULL,31,8);
INSERT INTO plan_requirements_tier4 VALUES(22,'a0B3C000003BUN7','Professional Communication for Engineers','Optional',3,NULL,NULL,36,8);
INSERT INTO plan_requirements_tier4 VALUES(23,'a0B3C000003BUNC','Professional Writing in the Discipline','Optional',3,NULL,NULL,40,8);
INSERT INTO plan_requirements_tier4 VALUES(24,'a0B3C000003BUMx','Technical Writing','Optional',3,NULL,NULL,14,8);
INSERT INTO plan_requirements_tier4 VALUES(25,'a0B3C000003BUNH','Writing in the Health Professions','Optional',3,NULL,NULL,33,8);
INSERT INTO plan_requirements_tier4 VALUES(26,'a0B3C000003BUOA','Writing in the Law','Optional',3,NULL,NULL,15,8);
INSERT INTO plan_requirements_tier4 VALUES(27,'a0B3C000003BUND','Writing in the Medical Sciences','Optional',3,NULL,NULL,27,8);
INSERT INTO plan_requirements_tier4 VALUES(28,'a0B3C000003BUNM','Writing in the Social Sciences','Optional',3,NULL,NULL,25,8);
INSERT INTO plan_requirements_tier4 VALUES(29,'a0B3C000003BUPI','Theatre Appreciation','Optional',3,NULL,NULL,34,9);
INSERT INTO plan_requirements_tier4 VALUES(30,'a0B3C000003BUP3','Introduction to Literature','Optional',3,NULL,NULL,37,9);
INSERT INTO plan_requirements_tier4 VALUES(31,'a0B3C000003BUPN','Art Appreciation: Global Perspectives','Optional',3,NULL,NULL,39,9);
INSERT INTO plan_requirements_tier4 VALUES(32,'a0B3C000003BUPD','Introduction to Philosophy','Optional',3,NULL,NULL,6,9);
INSERT INTO plan_requirements_tier4 VALUES(33,'a0B3C000003BUP8','Experiencing Music','Optional',3,NULL,NULL,38,9);
COMMIT;