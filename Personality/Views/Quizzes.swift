import SwiftUI
import CoreData

struct QuizList: View {
//    @Environment(\.managedObjectContext) private var viewContext
//
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    private var items: FetchedResults<Item>
    
    var quizList: [Quiz] = [
        Quiz(name: "Teste 1", shortDescription: "Descrição curta", longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa"),
        Quiz(name: "Teste 2", shortDescription: "Descrição curta", longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa"),
        Quiz(name: "Teste 3", shortDescription: "Descrição curta", longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa"),
        Quiz(name: "Teste 4", shortDescription: "Descrição curta", longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa"),
        Quiz(name: "Teste 5", shortDescription: "Descrição curta", longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa")
    ]

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        Text("Olá, Fulana!")
                            .bold()
                            .fontWeight(.bold)
                            .font(.system(size: 30, weight: .bold, design: .default))
                        Spacer()
                        Button(action: {
                            // Search function
                            
                        }) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                        }
                    }.padding()
                    
                    HStack {
                        Text("Em alta")
                            .font(.system(size: 20, weight: .medium, design: .default))
                        Spacer()
                    }.padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            NavigationLink(destination: SingleQuiz(quiz: quizList[0])) {
                                VStack(alignment: .leading) {
                                    Text(quizList[0].name)
                                        .font(.system(size: 28, weight: .bold, design: .default))
                                        .padding(.bottom)
                                        .foregroundColor(.white)
                                    Text(quizList[0].shortDescription!)
                                        .foregroundColor(.white)
                                }.padding()
                                .frame(width: 200, height: 250, alignment: .leading)
                                    .background(.blue)
                                    .cornerRadius(16)
                            }
                            NavigationLink(destination: SingleQuiz(quiz: quizList[1])) {
                                VStack(alignment: .leading) {
                                    Text(quizList[1].name)
                                        .font(.system(size: 28, weight: .bold, design: .default))
                                        .padding(.bottom)
                                        .foregroundColor(.white)
                                    Text(quizList[1].shortDescription!)
                                        .foregroundColor(.white)
                                }.padding()
                                .frame(width: 200, height: 250, alignment: .leading)
                                    .background(.blue)
                                    .cornerRadius(16)
                            }
                        }.padding(.horizontal)
                        .padding(.bottom)
                    }
                    
                    HStack {
                        Text("Encontre seu teste ideal")
                            .font(.system(size: 20, weight: .medium, design: .default))
                        Spacer()
                    }.padding(.horizontal)
                    
                    VStack {
                        ForEach(quizList) { quiz in
                            NavigationLink(destination: SingleQuiz(quiz: quiz)) {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(quiz.name)
                                            .foregroundColor(.white)
                                            .font(.system(size: 21, weight: .bold, design: .default))
                                            .padding(.bottom, 5)
                                        Text(quiz.shortDescription!).foregroundColor(.white)
                                    }
                                    .padding()
                                    .cornerRadius(16)
                                    
                                    Spacer()
                                    
                                    HStack {
                                        Text("Icon")
                                    }
                                    .frame(width: 50, height: 50, alignment: .center)
                                    .background(Color(.systemPink))
                                    .cornerRadius(25)
                                    .padding()
                                    .foregroundColor(.white)
                                }
                            }.frame(height: 95, alignment: .center)
                            
                            .background(Color(.darkGray))
                            .cornerRadius(16)
                            .padding(.horizontal)
                            
                        }
                    }
                }
            }.navigationBarHidden(true)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}



struct QuizList_Previews: PreviewProvider {
    static var previews: some View {
        QuizList()
            .preferredColorScheme(.dark)
    }
}
