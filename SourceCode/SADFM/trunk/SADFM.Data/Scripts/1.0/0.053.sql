ALTER TABLE [VisitScore] DROP COLUMN Score;
ALTER TABLE [VisitScore] ADD ScoreId uniqueidentifier not null;
ALTER TABLE [VisitScore] ADD CONSTRAINT [FK_VisitScore_Score] FOREIGN KEY (ScoreId) REFERENCES ListItem (ListItemId);
