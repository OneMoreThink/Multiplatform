//
//  File.swift
//  
//
//  Created by 이종선 on 8/31/24.
//

import Foundation
import SwiftData
import OSLog

private let logger = Logger(subsystem: "BackyardBirdsData", category: "Account")

@Model public class Account {
    
    @Attribute(.unique) public var id: String
    public var bird: Bird?
    public var joinDate: Date
    public var displayName: String
    public var emailAddress: String
    public var isPremiumMember: Bool

    public init(joinDate: Date, displayName: String, emailAddress: String, isPremiumMember: Bool) {
        self.id = UUID().uuidString
        self.joinDate = joinDate
        self.displayName = displayName
        self.emailAddress = emailAddress
        self.isPremiumMember = isPremiumMember
        logger.notice("User \(self.id) has been created with DisplayName: '\(self.displayName)' and is \(!self.isPremiumMember ? "not " : "")a premium user.")
    }
}
