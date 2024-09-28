call() { # - Call is for get info of json scripts, ej call "Database.json" "money"
    local file=$1
    local key=$2
    local commit_call  # Variable local para el valor obtenido
    commit_call=$(jq -r ".$key" "$file")  # Asignar el valor de la clave JSON a la variable

    
    
    # Devolver el valor para que pueda ser utilizado fuera de la función
    echo "$commit_call"
}

# To use call u need a .json
# to get info of json type, example= data (data is the name of var to save) data=$(call "database.json" "json_data")
# Now, u can make a echo "$data" and print the information.
# Module made by ScriptsXorgs.
