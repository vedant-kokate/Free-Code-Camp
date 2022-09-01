PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
MENU(){
  # echo "$($PSQL "\d properties")"
  if [[ ! $1 ]]
  then
    echo "Please provide an element as an argument."

  else
  # Atomic Number
    if [[ $1 =~ ^[0-9]+$ ]]
    then
      F2 "atomic_number" $1      

    elif [[ ${#1} < 3 ]]
    then
      F2 "symbol" "'$1'"
    else
      F2 "name" "'$1'"  
    fi
  fi
  
}
F2(){
search=$($PSQL "select atomic_number,name,symbol,type,atomic_mass,melting_point_celsius,boiling_point_celsius from elements inner join properties using(atomic_number) inner join types using(type_id) where $1=$2")
      echo $search | while read num b name b symbol b t b mass b melt b boil
      do
        if [[ -z $melt ]]
        then 
          echo "I could not find that element in the database." 
        else
          echo "The element with atomic number $num is $name ($symbol). It's a $t, with a mass of $mass amu. $name has a melting point of $melt celsius and a boiling point of $boil celsius."          
        fi
      done
}

MENU $1
# echo "$($PSQL "select atomic_number from elements inner join properties where atomic_number=1") "