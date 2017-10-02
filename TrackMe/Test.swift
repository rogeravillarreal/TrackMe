//
//  Test.swift
//  TrackMe
//
//  Created by Roger Villarreal on 10/2/17.
//  Copyright © 2017 Roger Villarreal. All rights reserved.
//

import UIKit

class Test {
    
    //MARK: - PROPERTIES
    var weight: Double?
    var bmi: Double?
    var waist: Double?
    var bloodPressureSystolic: Double?
    var bloodPressureDiastolic: Double?
    var heartRate: Double?
    var a1c: Double?
    var fastingBloodGlucose: Double?
    var totalCholesterol: Double?
    var triglycerides: Double?
    var lDL: Double?
    var hDL: Double?
    var nonHDL: Double?
    var year10CVDRisk: Double?
    var heartAge: Double?
    var tSH: Double?
    var t4: Double?
    var vitaminD: Double?
    var hemoglobin: Double?
    var vitaminB12: Double?
    var totalTestosterone: Double?
    var freeTestosterone: Double?
    
    init(weight: Double?, bmi: Double?, waist: Double?, bloodPressureSystolic: Double?, bloodPressureDiastolic: Double?, heartRate: Double?, a1c: Double?, fastingBloodGlucose: Double?, totalCholesterol: Double?, triglycerides: Double?, lDL: Double?, hDL: Double?, nonHDL: Double?,  year10CVDRisk: Double?, heartAge: Double?, tSH: Double?, t4: Double?, vitaminD: Double?, hemoglobin: Double?, vitaminB12: Double?,  totalTestosterone: Double?, freeTestosterone: Double?) {
        
        self.weight = weight
        self.bmi = bmi
        self.waist = waist
        self.bloodPressureSystolic = bloodPressureSystolic
        self.bloodPressureDiastolic = bloodPressureDiastolic
        self.heartRate = heartRate
        self.a1c = a1c
        self.fastingBloodGlucose = fastingBloodGlucose
        self.totalCholesterol = totalCholesterol
        self.triglycerides = triglycerides
        self.lDL = lDL
        self.hDL = hDL
        self.nonHDL = nonHDL
        self.year10CVDRisk = year10CVDRisk
        self.heartAge = heartAge
        self.tSH = tSH
        self.t4 = t4
        self.vitaminD = vitaminD
        self.hemoglobin = hemoglobin
        self.vitaminB12 = vitaminB12
        self.totalTestosterone = totalTestosterone
        self.freeTestosterone = freeTestosterone
    }
}
