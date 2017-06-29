DECLARE @surveyId  UNIQUEIDENTIFIER

SET @surveyId = NEWID()

INSERT INTO [Survey].[Details]
(
[SurveyId],
[Name]
)
VALUES (
@surveyId,
'Occupational Therapy'
)

DECLARE @surveyQuestionId  UNIQUEIDENTIFIER

-- START PARTICIPATION

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'PARTICIPATION',
1
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Active (considers others)',
1
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Active (focussed on self)',
2
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Selective',
3
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Passive (needs prompting)',
4
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Passive (unwilling despite prompting)',
5
)

--END PARTICIPATION



-- START INTERACTION

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'INTERACTION',
2
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'with all members',
1
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'with known persons',
2
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'with therapist only',
3
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'withdrawn',
4
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'In/Appropriate',
5
)

--END INTERACTION

-- START THOUGHTS

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'THOUGHTS',
3
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Rational',
1
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Irrational',
2
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Suicidal/Homicidal',
3
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Self-destructive',
4
)

--END THOUGHTS

-- START INSIGHT

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'INSIGHT',
4
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Emotional Insight',
1
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Partial Emotional Insight',
2
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Intellectual Insight',
3
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Partial Intellectual Insight',
4
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'No Insight',
5
)

--END INSIGHT

-- START JUDGEMENT - Abstract

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'JUDGEMENT - Abstract',
5
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Good',
1
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Adequate',
2
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Poor',
3
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'None',
4
)

--END JUDGEMENT - Abstract

-- START JUDGEMENT - Concrete

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'JUDGEMENT - Concrete',
6
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Good',
1
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Adequate',
2
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Poor',
3
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'None',
4
)

--END JUDGEMENT - Concrete




-- START RESPONSIBILITY - Own Life

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'RESPONSIBILITY - Own Life',
7
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Appropriately',
1
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Aware of expectations',
2
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'For Others’ lives',
3
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'No Responsibility/Blames',
4
)

-- END RESPONSIBILITY - Own Life


-- START RESPONSIBILITY - In Group

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'RESPONSIBILITY - In Group',
8
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Complies',
1
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Needs prompting',
2
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Doesn’t comply',
3
)

-- END RESPONSIBILITY - In Group

-- START LISTENING SKILLS

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'LISTENING SKILLS',
9
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Appropriate',
1
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Fluctuates',
2
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Interrupts',
3
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Loses focus',
4
)

-- END LISTENING SKILLS

-- START DECISIONMAKING

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'DECISIONMAKING',
10
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Independent(well informed)',
1
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Independent(not informed)',
2
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Requires assistance',
3
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Indecisive',
4
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Impulsive',
5
)

-- END DECISIONMAKING

-- START PROBLEMSOLVING - Abstract

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'PROBLEMSOLVING - Abstract',
11
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Independently',
1
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'with assistance',
2
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'unable',
3
)

-- END PROBLEMSOLVING - Abstract

-- START PROBLEMSOLVING - Concrete

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'PROBLEMSOLVING - Concrete',
12
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Independently',
1
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'with assistance',
2
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'unable',
3
)

-- END PROBLEMSOLVING - Concrete

-- START ASSERTIVENESS

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'ASSERTIVENESS',
13
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Assertive',
1
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Aggressive',
2
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Passive',
3
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Passive-Aggressive',
4
)

-- END ASSERTIVENESS

-- START BEHAVIOUR

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'BEHAVIOUR',
14
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Adaptable',
1
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Appropriate',
2
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Inappropriate',
3
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Hesitant',
4
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Heavily medicated',
5
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Over-active',
6
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Argumentative',
7
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Attention-seeking',
8
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Over-familiar',
9
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Poor impulse control',
10
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Doodling/fidgeting',
11
)

-- END BEHAVIOUR

-- START AFFECT

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'AFFECT',
15
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Appropriate',
1
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Incongruent',
2
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Labile',
3
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Restricted /Blunted',
4
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Inappropriate intensity/range',
5
)

-- END AFFECT

-- START SELF-ESTEEM

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'SELF-ESTEEM',
16
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Healthy',
1
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Unrealistic High',
2
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Unrealistic low',
3
)

-- END SELF-ESTEEM

-- START LOCUS OF CONTROL

SET @surveyQuestionId = NEWID()
INSERT INTO [Survey].[Questions]
(
[SurveyId],
[QuestionId],
[Text],
[SortOrder]
)
VALUES (
@surveyId,
@surveyQuestionId,
'LOCUS OF CONTROL',
17
)

INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'Internal',
1
)
INSERT INTO [Survey].[Options]
(
[QuestionId],
[OptionId],
[Text],
[SortOrder]
)
VALUES (
@surveyQuestionId,
NEWID(),
'External',
2
)

-- END LOCUS OF CONTROL
