//
//  Assignments.swift
//  EPHS App
//
//  Created by 90307094 on 10/26/20.
//


import SwiftUI

struct AssignmentsView: View {
    
    var body: some View {
        VStack{
            Text("Completed Schoology Assignments")
                .font(.largeTitle)
            
            Text("No Current Assignments")
        progressView()
    }
}

struct AssignmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentsView()
    }
}


}
