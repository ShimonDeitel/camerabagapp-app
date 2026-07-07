import SwiftUI

/// Bespoke palette for Camerabag -- Inventory camera bodies, lenses, and accessories with shutter counts.
enum Theme {
    static let accent = Color(hex: "#3D6FB4")
    static let background = Color(hex: "#0E1420")
    static let backgroundSecondary = Color(hex: "#141B2A")
    static let card = Color(hex: "#1A2333")
    static let textPrimary = Color(hex: "#E7EEF9")
    static let textSecondary = Color(hex: "#A6C0E4")

    static var titleFont: Font { Font.system(.title2, design: .monospaced).weight(.bold) }
    static var bodyFont: Font { Font.system(.body, design: .monospaced) }
    static var captionFont: Font { Font.system(.caption, design: .monospaced) }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex.trimmingCharacters(in: CharacterSet(charactersIn: "#")))
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        let r = Double((rgb & 0xFF0000) >> 16) / 255.0
        let g = Double((rgb & 0x00FF00) >> 8) / 255.0
        let b = Double(rgb & 0x0000FF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
