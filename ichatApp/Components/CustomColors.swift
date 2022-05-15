import Foundation
import SwiftUI

extension Color{
    // app colors
    static let primaryColor1 = Color(hex: "8787FD")
    static let primaryColor2 = Color(hex: "CC6CFF")
    static let primaryColor3 = Color(hex: "FF5FA2")
    static let grayColor1 = Color(hex: "FFFFFF")
    static let grayColor2 = Color(hex: "EAEAEA")
    static let grayColor3 = Color(hex: "D3D3D3")
    static let grayColor4 = Color(hex: "B2B2B2")
    static let grayColor5 = Color(hex: "727272")
    static let grayColor6 = Color(hex: "414242")

    // convert hex to rgb
    init?(hex: String) {
        var rgb: UInt64 = 0
        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0

        guard Scanner(string: hex).scanHexInt64(&rgb) else { return nil }

        if hex.count == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            
        } else if hex.count == 8 {
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            a = CGFloat(rgb & 0x000000FF) / 255.0

        } else {
            return nil
        }
        self.init(red: r, green: g, blue: b, opacity: a)
    }
}
