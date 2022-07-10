    //
    //  PostListView.swift
    //  NewRedditAggregator
    //
    //  Created by Master on 20.04.2022.
    //

    import SwiftUI
    import Networking

    struct PostListView: View {
        private let type: AnimalType = .cats
        @State private var showAlert = showAlert()
        @StateObject var catsService = AnimalService(limit: 10,
                                                     type: getType())
        
        static func showAlert() -> Bool{
            let defaults = UserDefaults.standard
            if defaults.bool(forKey: "First Launch"){
                defaults.set(true, forKey: "First Launch")
                return false
            }
            else{
                defaults.set(true, forKey: "First Launch")
                return true
            }
        }
        
        var body: some View {
            Button("Crash") {
                fatalError("Crash was triggered")
            }
//            Button("Crash /0") {
//                crashlytics.log("devide by 0 log")
//                let arr = [0]
//                print(5/(arr.first ?? 0))
//            }
//            Button("Crash nil") {
//                crashlytics.log("nil log")
//                let arr: String? = nil
//                print(arr!)
//            }
            NavigationView{
                ScrollView{
                    LazyVStack(spacing:0) {
                        ForEach(catsService.getAnimals()){ p in
                            NavigationLink(
                                destination: PostDetails(post: p),
                                label: {
                                    PostView(post: p)
                                })
                        }
                    }
                }
                .navigationBarHidden(true)
                .navigationBarTitleDisplayMode(.inline)
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Crashlytics Collection Enabled"),
                    message: Text("This app collection data about bugs and errors. To get started, you need to accept our policy"),
                    dismissButton: .default(
                        Text("Accept"),
                        action: {
                            showAlert = false
                        }
                    )
                )
            }
        }
        
        static func getType() -> AnimalType {
            let value = Bundle.main.infoDictionary?["AnimalType"] as! String
            return value.uppercased() == "DOGS" ?
                .dogs :
                .cats
        }
    }

    struct PostListView_Previews: PreviewProvider {
        static var previews: some View {
            PostListView()
        }
    }
