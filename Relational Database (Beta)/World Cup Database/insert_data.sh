#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE teams,games")"
cat games.csv | while IFS="," read y r w o wg og
do
  if [[ $y != "year" ]]  
  then
  # Adding teams
    wid=$($PSQL "select team_id from teams where name='$w'")
    if [[ -z $wid ]]
    then 
      add1=$($PSQL "insert into teams(name) values('$w')")
      echo $add1
      wid=$($PSQL "select team_id from teams where name='$w'")
    fi
    oid=$($PSQL "select team_id from teams where name='$o'")
    if [[ -z $oid ]]
    then 
      add2=$($PSQL "insert into teams(name) values('$o')")
      echo $add1
      oid=$($PSQL "select team_id from teams where name='$o'")
    fi

    # Adding games
    echo $y $r $w $o $wg $og
    gid=$($PSQL "insert into games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values($y,'$r',$wid,$oid,$wg,$og)")

  fi

done