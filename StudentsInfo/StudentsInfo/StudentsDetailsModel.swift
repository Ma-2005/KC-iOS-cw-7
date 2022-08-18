//
//  StudentsDetailsModel.swift
//  StudentsInfo
//
//  Created by Mac on 17/08/2022.
//

import Foundation

struct StudentsDetailsModel: Identifiable {
    var id = UUID()
    var fullName : String
    var Year : String
    var Age : Int
}

var Bashayir = StudentsDetailsModel(fullName: "Bashayir", Year: "1996", Age: 26)

var Shaima = StudentsDetailsModel(fullName: "Shaima", Year: "1996", Age: 26)

var Adnan = StudentsDetailsModel(fullName: "Adnan", Year: "2000", Age: 22)

var Yaqoub = StudentsDetailsModel(fullName: "Yaqoub", Year: "2004", Age: 18)

var Ruaa = StudentsDetailsModel(fullName: "Ruaa", Year: "2004", Age: 18)

var Jamal = StudentsDetailsModel(fullName: "Jamal", Year: "2004", Age: 17)

var Mahdi = StudentsDetailsModel(fullName: "Mahdi", Year: "2005", Age: 17)

var Hamani = StudentsDetailsModel(fullName: "Hamani", Year: "2005", Age: 17)

var Deema = StudentsDetailsModel(fullName: "Deema", Year: "2005", Age: 17)

var Katkot = StudentsDetailsModel(fullName: "Katkoot", Year: "2006", Age: 16)

var Fatima = StudentsDetailsModel(fullName: "Fatima", Year: "2006", Age: 16)

var Hassan = StudentsDetailsModel(fullName: "Hassan", Year: "2008", Age: 15)

var Devs = [Bashayir, Shaima, Adnan, Yaqoub, Ruaa, Jamal, Mahdi, Hamani, Deema, Fatima, Katkot, Hassan]

