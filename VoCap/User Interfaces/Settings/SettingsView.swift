//
//  SettingsView.swift
//  VoCap
//
//  Created by 윤태민 on 6/7/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                contactUsButon
                resetButton
            }
            .navigationBarTitle("SettingsView", displayMode: .inline)
            .toolbar {
                doneButton
            }
        }
    }
}

// MARK: - List Items
extension SettingsView {
    var contactUsButon: some View {
        Button(action: { print("Contact Us") }) {
            Text("Contact Us")
        }
    }
    
    var resetButton: some View {
        Button(action: { print("Reset") }) {
            Text("Reset")
        }
    }
    
}

// MARK: - Toolbar Items
extension SettingsView {
    var doneButton: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: { print("Done") }) {
                Text("Done")
            }
        }
    }
}
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
