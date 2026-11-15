# World Cup Database

Bash scripts that load World Cup match results from a CSV file into PostgreSQL and then answer questions about them with SQL.

## How it works

**Loading the data** (`insert_data.sh`)

The script reads `games.csv` one line at a time. For each match it looks up the winner and the opponent in the `teams` table, inserts either team if it is not there yet, and then inserts the game using the two team IDs. The file covers the final rounds of the 2014 and 2018 tournaments.

**Querying it** (`queries.sh`)

Twelve queries, including:

- Total and average goals, for winning teams and for both teams combined
- The most goals scored by one team in a single game
- The winner of the 2018 tournament
- Every team that played in the 2014 Eighth-Final round
- The year and name of each champion

`expected_output.txt` holds the correct results, so the queries can be checked against it.

## Database

Two tables in a `worldcup` database:

- `teams`: `team_id`, `name`
- `games`: year, round, winner and opponent (both referencing `teams`), and each side's goals

## Running it

Requires PostgreSQL with a `freecodecamp` user, which is how the course environment is set up.

```bash
psql -U postgres < worldcup.sql
```

```bash
./insert_data.sh
```

```bash
./queries.sh
```

## Background

One of the five required projects for freeCodeCamp's Relational Database certification.
