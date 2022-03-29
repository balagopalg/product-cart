import * as dotenv from 'dotenv'

dotenv.config()

export const mySQLDatabase = process.env.mySQLDatabase ? process.env.mySQLDatabase : 'carsome'
export const mySQLPassword = process.env.mySQLPassword ? process.env.mySQLPassword : ''
export const mySQLUser = process.env.mySQLUser ? process.env.mySQLUser : ''
export const mySQLHost = process.env.mySQLHost ? process.env.mySQLHost : ''
export const MYSQLPORT = process.env.PORT ? process.env.PORT : '3306'
export const PORT = process.env.PORT ? process.env.PORT : '5000'
