//
//  DataSaveFile.swift
//  Zomato-Food Delivery
//
//  Created by R87 on 03/07/23.
//

import Foundation
import SQLite3

struct Data {
    var password: String
    var MobileNo: String
}

class Sqlite {
    static var file : OpaquePointer?

   static func createFile() {
       var x = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
       x.appendPathComponent("My Sqlite signIn.db")
       sqlite3_open(x.path, &file)
       print(x.path)
       print("Create file")
       createTable()

    }
   static func createTable() {
       let q = "Create Table if not exists Students (MobileNo text,password text)"
       var table: OpaquePointer?
       sqlite3_prepare(file, q, -1, &table, nil)
       print("Create table")
       sqlite3_step(table)
        
    }
    static func addData(MobileNo:String,password:String) {
       let q = "insert into Students values ('\(MobileNo)','\(password)')"
       var data: OpaquePointer?
       sqlite3_prepare(file, q, -1, &data, nil)
       print("Create data")
       sqlite3_step(data)
        
    }
    static func getData()->[Data] {
        var arr = [Data]()
        let q = "select MobileNo,password from Students"
        var get: OpaquePointer?
        sqlite3_prepare(file, q, -1, &get, nil)
        
        while sqlite3_step(get) == SQLITE_ROW {
            if let cString0 = sqlite3_column_text(get,0) , let cString2 = sqlite3_column_text(get,2){
                let MobileNo = String(cString: cString0)
                let password = String(cString:cString2)
                arr.append(Data(password: password, MobileNo: MobileNo))
            }
        }
        print("Get data")
        return arr
        
    }
    
    static func checkData(MobileNo: String,password: String) -> Bool {
        var arr = [Data]()
        let q = "select MobileNo,password from Students WHERE MobileNo = '\(MobileNo)' and password = '\(password)'"
        var get: OpaquePointer?
        sqlite3_prepare(file, q, -1, &get, nil)
        
        while sqlite3_step(get) == SQLITE_ROW {
            if let cString0 = sqlite3_column_text(get,0) , let cString2 = sqlite3_column_text(get,2){
                let MobileNo = String(cString: cString0)
                let password = String(cString:cString2)
                arr.append(Data(password: password, MobileNo: MobileNo))
                print("ok")
            }
            else {
                print("Error")
            }
        }
        print("Get data")
        return arr.count != 0
        
    }
}


