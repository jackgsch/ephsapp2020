//
//  Assignments.swift
//  EPHS App
//
//  Created by 90307094 on 10/26/20.
//


import SwiftUI

struct AssignmentsView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Text("Completed Schoology Assignments")
                .font(.largeTitle)
            
            Text("No current Assignments")
        progressView()
    }
}

struct AssignmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentsView()
    }
}


}
