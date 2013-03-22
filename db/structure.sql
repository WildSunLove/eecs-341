CREATE TABLE "defense_stats" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "solo_tackles" integer, "assist_tackles" integer, "sacks" float, "passes_defended" integer, "interceptions" integer, "interception_touchdowns" integer, "fumbles_forced" integer, "fumbles_recovered" integer, "fumbles_touchdown" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "games" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "date" datetime, "home_team_id" integer, "away_team_id" integer, "weather" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "kicking_stats" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "field_goals_made" integer, "field_goals_attempted" integer, "extra_points_made" integer, "extra_points_attempted" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "passing_stats" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "completions" integer, "attempts" integer, "yards" integer, "touchdowns" integer, "interceptions" integer, "sacked" integer, "rating" float, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "players" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "position" varchar(255), "name" varchar(255), "shortname" varchar(255), "team_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "players_games" ("player_id" integer, "game_id" integer, "passing_stats_id" integer, "rushing_stats_id" integer, "receiving_stats_id" integer, "return_stats_id" integer, "kicking_stats_id" integer, "punting_stats_id" integer, "defense_stats_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "players_teams" ("player_id" integer, "team_id" integer, "start" date, "end" date, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "plays" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "game_id" integer, "player_id" integer, "type" varchar(255), "yards" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "punting_stats" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "punts" integer, "yards" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "receiving_stats" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "receptions" integer, "targets" integer, "yards" integer, "touchdowns" integer, "fumbles" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "return_stats" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "kick_return_attempts" integer, "kick_return_yards" integer, "kick_return_touchdowns" integer, "punt_return_attempts" integer, "punt_return_yards" integer, "punt_return_touchdowns" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "rushing_stats" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "attempts" integer, "yards" integer, "touchdowns" integer, "fumbles" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "team_years" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "team_id" integer, "year" integer, "wins" integer, "losses" integer, "ties" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "teams" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "city" varchar(255), "shortname" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE INDEX "index_players_games_on_player_id_and_game_id" ON "players_games" ("player_id", "game_id");
CREATE INDEX "index_players_teams_on_player_id_and_team_id" ON "players_teams" ("player_id", "team_id");
CREATE INDEX "index_team_years_on_team_id" ON "team_years" ("team_id");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130321211353');

INSERT INTO schema_migrations (version) VALUES ('20130321211527');

INSERT INTO schema_migrations (version) VALUES ('20130321211643');

INSERT INTO schema_migrations (version) VALUES ('20130321211720');

INSERT INTO schema_migrations (version) VALUES ('20130321211845');

INSERT INTO schema_migrations (version) VALUES ('20130321212129');

INSERT INTO schema_migrations (version) VALUES ('20130321212302');

INSERT INTO schema_migrations (version) VALUES ('20130321212428');

INSERT INTO schema_migrations (version) VALUES ('20130321212503');

INSERT INTO schema_migrations (version) VALUES ('20130321212558');

INSERT INTO schema_migrations (version) VALUES ('20130321212739');

INSERT INTO schema_migrations (version) VALUES ('20130321212853');

INSERT INTO schema_migrations (version) VALUES ('20130321213109');

INSERT INTO schema_migrations (version) VALUES ('20130321213156');
