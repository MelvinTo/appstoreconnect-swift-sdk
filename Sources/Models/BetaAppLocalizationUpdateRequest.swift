//
//  BetaAppLocalizationUpdateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// A request containing a single resource.
public struct BetaAppLocalizationUpdateRequest: Codable {

    /// - Parameters:
    ///   - id: The opaque resource ID that uniquely identifies the resource.
    ///   - description: A description of your app that highlights features and functionality.
    ///   - feedbackEmail: An email address to which beta testers can send feedback. Also appears as the reply-to address for TestFlight invitation emails.
    ///   - marketingUrl: A URL with information about your app. This URL is visible to testers in the TestFlight app
    ///   - privacyPolicyUrl= A URL that links to your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data or as otherwise required by law.
    ///   - tvOsPrivacyPolicy: Your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data, or as otherwise required by law.
    init(id: String,
         description: String? = nil,
         feedbackEmail: String? = nil,
         marketingUrl: String? = nil,
         privacyPolicyUrl: String? = nil,
         tvOsPrivacyPolicy: String? = nil) {
        data = .init(
            attributes: .init(
                description: description,
                feedbackEmail: feedbackEmail,
                marketingUrl: marketingUrl,
                privacyPolicyUrl: privacyPolicyUrl,
                tvOsPrivacyPolicy: tvOsPrivacyPolicy),
            id: id)
    }
    
    /// (Required) The resource data.
    public let data: BetaAppLocalizationUpdateRequest.Data
    
    public struct Data: Codable {
    
        /// The resource's attributes.
        public let attributes: BetaAppLocalizationUpdateRequest.Data.Attributes?
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        public let `id`: String
    
        /// (Required) The resource type.Value: betaAppLocalizations
        public let type: String = "betaAppLocalizations"
    }
}

/// MARK: BetaAppLocalizationUpdateRequest.Data
extension BetaAppLocalizationUpdateRequest.Data {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {
    
        /// A description of your app that highlights features and functionality.
        public let description: String?
    
        /// An email address to which beta testers can send feedback. Also appears as the reply-to address for TestFlight invitation emails.
        public let feedbackEmail: String?
    
        /// A URL with information about your app. This URL is visible to testers in the TestFlight app
        public let marketingUrl: String?
    
        /// A URL that links to your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data or as otherwise required by law.
        public let privacyPolicyUrl: String?
    
        /// Your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data, or as otherwise required by law.
        public let tvOsPrivacyPolicy: String?
    }
}
