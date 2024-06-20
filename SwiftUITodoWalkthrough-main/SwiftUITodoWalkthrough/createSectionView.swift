//
//  createSectionView.swift
//  SwiftUITodoWalkthrough
//
//  Created by Derek Stengel on 6/19/24.
//

import SwiftUI

struct CreateSectionView: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var todosController: TodosController
    @State private var newSectionTitle: String = ""
    
    var body: some View {
        VStack {
            Text("Create New Section")
                .font(.largeTitle)
                .fontWeight(.thin)
                .padding(.top)
            Spacer()
            TextField("Section Title", text: $newSectionTitle)
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).stroke(.gray, style: StrokeStyle(lineWidth: 0.2)))
                .padding()
            Spacer()
            VStack {
                Button {
                    if !newSectionTitle.isEmpty {
                        // Add new section
                        addNewSection(newSectionTitle)
                        // Dismiss view
                        dismiss()
                    }
                } label: {
                    Text("Create")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
                        .background(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).fill(.blue))
                }
                Button {
                    // Dismiss view
                    dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
                        .background(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)).stroke(.red))
                }
            }
            .padding()
        }
    }
    
    func addNewSection(_ sectionTitle: String) {
        todosController.sections.append(TodoSection(sectionTitle: sectionTitle, todos: []))
    }
}

struct CreateSectionView_Previews: PreviewProvider {
    static var previews: some View {
        CreateSectionView(todosController: TodosController())
    }
}

