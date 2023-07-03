//
//  SearchBarView.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 7/2/23.
//

//import SwiftUI
//
//struct SearchBar: UIViewRepresentable {
//    @Binding var text: String
//
//    class Coordinator: NSObject, UISearchBarDelegate {
//        @Binding var text: String
//
//        init(text: Binding<String>) {
//            _text = text
//        }
//
//        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//            text = searchText
//        }
//    }
//
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(text: $text)
//    }
//
//    func makeUIView(context: Context) -> UISearchBar {
//        let searchBar = UISearchBar()
//        searchBar.delegate = context.coordinator
//        return searchBar
//    }
//
//    func updateUIView(_ uiView: UISearchBar, context: Context) {
//        uiView.text = text
//    }
//}

//struct SearchBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar(text: <#Binding<String>#>)
//    }
//}
