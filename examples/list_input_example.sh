#!/usr/bin/env bash
set -e

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$(cd -P "$(dirname "$SOURCE")" && pwd)"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$(cd -P "$(dirname "$SOURCE")" && pwd)"

PARENT_DIR=$(dirname "$DIR")
source $PARENT_DIR/dist/inquirer.sh

drinks=('Teh' 'Teh Ping Gao Siu Dai' 'Kopi O' 'Yuan Yang')
list_input "What would you like to drink today (1st Drink)?" drinks selected_drink

food=('Chicken Rice' 'Lor Mee' 'Nasi Lemak' 'Bak Kut Teh')
list_input "What would you like to eat today?" food selected_food

echo "Drink: $selected_drink"
echo "Food: $selected_food"
