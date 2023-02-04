/****** Script for SelectTopNRows command from SSMS  ******/
INSERT INTO [LessonPlan].[dbo].[databaseApp_professors] VALUES ('DAMIAN PĘSZOR', 'DR. INŻ');
INSERT INTO [LessonPlan].[dbo].[databaseApp_professors] VALUES ('AGNIESZKA SZCZĘSNA', 'DR. INŻ');
INSERT INTO [LessonPlan].[dbo].[databaseApp_professors] VALUES ('KAMIL WERESZCZYŃSKI', 'DR. INŻ');

SELECT * FROM [LessonPlan].[dbo].[databaseApp_professors]

INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('INFORMATYKA', 'INŻYNIER', 1);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('AUTOMATYKA I ELEKTRONIKA', 'INŻYNIER', 1);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('BIOTECHNOLOGIA', 'INŻYNIER', 1);

INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('INFORMATYKA', 'INŻYNIER', 2);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('AUTOMATYKA I ELEKTRONIKA', 'INŻYNIER', 2);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('BIOTECHNOLOGIA', 'INŻYNIER', 2);

INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('INFORMATYKA', 'INŻYNIER', 3);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('AUTOMATYKA I ELEKTRONIKA', 'INŻYNIER', 3);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('BIOTECHNOLOGIA', 'INŻYNIER', 3);

INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('INFORMATYKA', 'INŻYNIER', 4);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('AUTOMATYKA I ELEKTRONIKA', 'INŻYNIER', 4);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('BIOTECHNOLOGIA', 'INŻYNIER', 4);

INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('INFORMATYKA', 'INŻYNIER', 5);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('AUTOMATYKA I ELEKTRONIKA', 'INŻYNIER', 5);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('BIOTECHNOLOGIA', 'INŻYNIER', 5);

INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('INFORMATYKA', 'MAGISTER', 1);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('AUTOMATYKA I ELEKTRONIKA', 'MAGISTER', 1);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('BIOTECHNOLOGIA', 'MAGISTER', 1);

INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('INFORMATYKA', 'MAGISTER', 2);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('AUTOMATYKA I ELEKTRONIKA', 'MAGISTER', 2);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('BIOTECHNOLOGIA', 'MAGISTER', 2);

INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('INFORMATYKA', 'MAGISTER', 3);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('AUTOMATYKA I ELEKTRONIKA', 'MAGISTER', 3);
INSERT INTO [LessonPlan].[dbo].[databaseApp_groups] VALUES ('BIOTECHNOLOGIA', 'MAGISTER', 3);

--SELECT * FROM [LessonPlan].[dbo].[databaseApp_groups]

INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('PARZYSTY', 'PONIEDZIAŁEK', '13:00');
INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('PARZYSTY', 'ŚRODA', '14:00');
INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('PARZYSTY', 'PIĄTEK', '10:00');
INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('PARZYSTY', 'PONIEDZIAŁEK', '8:15');
INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('PARZYSTY', 'ŚRODA', '17:30');
INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('PARZYSTY', 'PIĄTEK', '10:45');
INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('NIEPARZYSTY', 'PONIEDZIAŁEK', '13:00');
INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('NIEPARZYSTY', 'ŚRODA', '12:15');
INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('NIEPARZYSTY', 'PIĄTEK', '12:30');
INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('NIEPARZYSTY', 'PONIEDZIAŁEK', '9:15');
INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('NIEPARZYSTY', 'ŚRODA', '13:30');
INSERT INTO [LessonPlan].[dbo].[databaseApp_dates] VALUES ('NIEPARZYSTY', 'PIĄTEK', '15:45');

SELECT * FROM [LessonPlan].[dbo].[databaseApp_dates]

INSERT INTO [LessonPlan].[dbo].[databaseApp_lessons] VALUES ('MODELOWANIE CYFROWE', 310, 8, 4, 1);
INSERT INTO [LessonPlan].[dbo].[databaseApp_lessons] VALUES ('TECHNIKA CYFROWA', 210, 2, 9, 3);
INSERT INTO [LessonPlan].[dbo].[databaseApp_lessons] VALUES ('MATEMATYKA', 10, 6, 6, 2);
INSERT INTO [LessonPlan].[dbo].[databaseApp_lessons] VALUES ('PROGRAMOWANIE', 524, 6, 4, 2);

SELECT * FROM [LessonPlan].[dbo].[databaseApp_lessons]