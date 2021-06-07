//
//  NoteModifierView.swift
//  VoCap
//
//  Created by 윤태민 on 6/7/21.
//

import SwiftUI

struct NoteModifierView: View {
    var body: some View {
        NavigationView {
            List {
                basicInfo
                memo
            }
            .navigationBarTitle("Note Modifier", displayMode: .inline)
            .toolbar {
                cancelButton
                completionButton
            }
        }
    }
}

// MARK: - List Items
extension NoteModifierView {
    var basicInfo: some View {
        Text("Basic Information")
    }
    
    var memo: some View {
        Text("Memo")
    }
}

// MARK: - Toolbar Items
extension NoteModifierView {
    var cancelButton: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Button(action: { print("Cancel") }) {
                Text("Cancel")
            }
        }
    }
    
    var completionButton: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: { print("Done or Save Button") }) {
                Text("Completion")
            }
        }
    }
}

struct NoteModifierView_Previews: PreviewProvider {
    static var previews: some View {
        NoteModifierView()
    }
}
