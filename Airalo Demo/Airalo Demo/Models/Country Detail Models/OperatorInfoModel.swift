//
//  OperatorInfoModel.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 23.4.25.
//

import Foundation

struct OperatorInfoModel: Decodable, Hashable {
    let id: Int
    let title: String
    let style: String
    let gradientStart: String
    let gradientEnd: String
    let type: String
    let isPrepaid: Bool
    let isMultiPackage: Bool
    let planType: String
    let activationPolicy: String
    let rechargeability: Bool
    let otherInfo: String?
    let apnType: String
    let apnTypeIOS: String
    let apnTypeAndroid: String
    let apnSingle: String?
    let apnBackup: String?
    let apnAutomaticIOS: String?
    let apnAutomaticAndroid: String?
    let dataRoaming: Bool
    let airplaneToggle: Bool
    let apn: String?
    let networks: [NetworkModel]
    let info: [String]
    let image: CountryImageModel
    let isRouting: Bool
    let countries: [CountrySummaryModel]
    let kycProvider: String?
    let kycType: String?
    let operatorLegalName: String?
    let privacyPolicyURL: String?
    let isKYCOneTime: Bool
    let isOperatorKYC: Bool
    let kycRestriction: String?
    let kycExpiryDuration: Int?
    let kycAddrRequired: Bool

    private enum CodingKeys: String, CodingKey {
        case id, title, style
        case gradientStart          = "gradient_start"
        case gradientEnd            = "gradient_end"
        case type
        case isPrepaid              = "is_prepaid"
        case isMultiPackage         = "is_multi_package"
        case planType               = "plan_type"
        case activationPolicy       = "activation_policy"
        case rechargeability
        case otherInfo              = "other_info"
        case apnType                = "apn_type"
        case apnTypeIOS             = "apn_type_ios"
        case apnTypeAndroid         = "apn_type_android"
        case apnSingle              = "apn_single"
        case apnBackup              = "apn_backup"
        case apnAutomaticIOS        = "apn_automatic_ios"
        case apnAutomaticAndroid    = "apn_automatic_android"
        case dataRoaming            = "data_roaming"
        case airplaneToggle         = "airplane_toggle"
        case apn
        case networks, info, image
        case isRouting              = "is_routing"
        case countries
        case kycProvider            = "kyc_provider"
        case kycType                = "kyc_type"
        case operatorLegalName      = "operator_legal_name"
        case privacyPolicyURL       = "privacy_policy_url"
        case isKYCOneTime           = "is_kyc_one_time"
        case isOperatorKYC          = "is_operator_kyc"
        case kycRestriction         = "kyc_restriction"
        case kycExpiryDuration      = "kyc_expiry_duration"
        case kycAddrRequired        = "kyc_addr_required"
    }
}
