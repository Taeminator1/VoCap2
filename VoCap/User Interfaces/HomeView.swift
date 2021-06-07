//
//  HomeView.swift
//  VoCap
//
//  Created by 윤태민 on 6/2/21.
//

import SwiftUI

struct HomeView: View {
    let persistenceController = PersistenceController.shared
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Note.order, ascending: true)],
        animation: .default)
    private var notes: FetchedResults<Note>
    
    @State var isAddNotePresented: Bool = false
    @State var isEditNotePresented: Bool = false
    @State var isSettingsPresented: Bool = false
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    addNoteButton
                    noteButtons
                }
                .navigationBarTitle("VoCap", displayMode: .inline)
                .toolbar {
                    editButton
                    settingsButton
                }
            }
        }
    }
}

// MARK: - List Items
extension HomeView {
    var addNoteButton: some View {
        Button(action: { isAddNotePresented = true }) {
            Text("Add Note")
        }
        .sheet(isPresented: $isAddNotePresented) {
            NoteModifierView()
        }
        
    }
    
    var noteButtons: some View {
        return NavigationLink(destination: NoteDetailView()) {
            Text("Example Note")
        }
        
//        ForEach(notes) { note in
//            Button(action: { print("\(note.title!)") }) {
//                Text("\(note.title!)")
//            }
//        }
    }
    
}

// MARK: - Toolbar Items
extension HomeView {
    var editButton: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: { print("Edit") }) {
                Text("Edit")
            }
        }
    }
    
    var settingsButton: some ToolbarContent {
        Group {
            ToolbarItem(placement: .bottomBar) { Spacer() }
            ToolbarItem(placement: .bottomBar) {
                Button(action: { isSettingsPresented = true }) {
                    Image(systemName: "gearshape").imageScale(.large)
                }
                .sheet(isPresented: $isSettingsPresented) {
                    SettingsView()
                }
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
