/**
 * Modifies database json config to add database and schema name
 * TODO: pull database config from the secrets manager or an s3 bucket
 */
 const fs = require("fs")
 const fileName = "./database.json"

 const json = {
     "dev": {
         "driver": "pg",
         "user": "admin",
         "password": "password",
         "host": "localhost",  
         "port": 5432
     }
 }
 
 fs.writeFile(fileName, JSON.stringify(json, null, 2), (err) => {
     if (err) {
         console.log(`Error writing JSON file ${err}`)
     }
     console.log(`JSON config modified successfully!`)
 })