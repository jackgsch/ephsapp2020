//
//  MenuView.swift
//  EPHS App
//
//  Created by 90305189 on 11/2/20.
//


import SwiftUI
import Combine

struct MenuView: View {
    @ObservedObject var menuPage = MenuPage()
    var body: some View {
        switch menuPage.menuPage {
        case "counselor":
            WebViews(url: "https://app.acuityscheduling.com/schedule.php?owner=20439951")
        case "campus":
            WebViews(url: "https://edenprairiemn.infinitecampus.org/campus/portal/eden_prairie.jsp")
        case "evn":
            WebViews (url: "https://eaglevisionnews.com/")
        case  "contacts":
            WebViews (url:
                "https://www.edenpr.org/eden-prairie-high-school/contact")
        case  "calender":
            WebViews (url:
                "https://www.edenpr.org/eden-prairie-high-school/student-life/news-information/calendar")
            
        default:
            Menu(menuPage: menuPage)
        }
    }
}

struct Menu: View {
    @ObservedObject var menuPage: MenuPage
    var body: some View {
        VStack {
            Text("Additional Links").font(.title).padding()
            Button(action: {menuPage.menuPage = "counselor"} ) {
                Text("Counselor Appointments")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width:315, height: 60)
                    .background(Color.red)
                    .cornerRadius(35)
                    .padding()
            }
            Button(action: {menuPage.menuPage = "campus"}, label: {
                Text("Campus Login")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width:315, height: 60)
                    .background(Color.red)
                    .cornerRadius(35)
                    .padding()
            })
            Button(action: {menuPage.menuPage = "evn"}, label: {
                Text("Eagle Vision News")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width:315, height: 60)
                    .background(Color.red)
                    .cornerRadius(35)
                    .padding()
            })
            Button(action: {menuPage.menuPage = "contacts"}, label: {
                Text("EPHS Contacts")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width:315, height: 60)
                    .background(Color.red)
                    .cornerRadius(35)
                    .padding()
            })
            Button(action: {menuPage.menuPage = "calender"}, label: {
                Text("EPHS Calender")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width:315, height: 60)
                    .background(Color.red)
                    .cornerRadius(35)
                    .padding()
            })
            Spacer()
        }
    }
}

class MenuPage: ObservableObject {
    let objectWillChange = PassthroughSubject<MenuPage,Never>()
    var menuPage: String = "menu" {
        didSet {
            objectWillChange.send(self)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            .padding()
    }
}
