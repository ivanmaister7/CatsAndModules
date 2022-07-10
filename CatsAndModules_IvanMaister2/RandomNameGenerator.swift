//
//  RandomNameGenerator.swift
//  CatsAndModules_IvanMaister
//
//  Created by Master on 14.06.2022.
//

import Foundation

class RandomNameGenerator{
    private static var num = 0
    private static let listNames = [
        "Chloe" ,"Cora" ,"Lena" ,"Laura" ,"Emma" ,"Donna" ,"Nora" ,"Clara" ,"Alva" ,"Mandy" ,
        "Kay" ,"Mona" ,"Sally" ,"Elma" ,"Paula" ,"Jill" ,"Kama" ,"Liz" ,"Pearl" ,"Valerie" ,
        "Pansy" ,"Joyce" ,"Caroline" ,"Molly" ,"Lizzie" ,"Paula" ,"Sherry" ,"Amelia" ,"Moira" ,
        "Zona" ,"Leila" ,"Rosa" ,"Riva" ,"Natalie" ,"Flora" ,"Vera" ,"Candice" ,"Lucy" ,
        "Pamela" ,"Dolores" ,"Selena" ,"Marcia" ,"Meroy" ,"Rita" ,"Setlla" ,"Bertha" ,"Jill" ,
        "Dolly" ,"Ellis" ,"Venus"
    ]
    static func getName() -> String{
        num += 1
        if num == 1{
            return "Ivan"
        }
        return listNames.randomElement() ?? ""
    }
}
