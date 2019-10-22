import SwiftUI

struct SenatorDetail: View {
    var senator: Senator

    //Used to show and hide the modal popover of the wiki page
    @State var ShowWebView = false

    //The body of the view which include personal information
    var body: some View {
        NavigationView{
            VStack {
                CircleImage(image: senator.image)
                    .offset(y: 25)
                    .padding(.bottom, 25)
                List{
                    VStack(alignment: .leading) {
                        Text(senator.name)
                            .font(.title)
                            Text("Political Party:").bold().font(.subheadline)
                        Text("\(senator.party.capitalized)")
                                .font(.subheadline)
                            Text("Term:").bold().font(.subheadline)
                        Text("\(senator.entered_office) to \(senator.term_end)")
                                .font(.subheadline)
                        Text("Biography:").bold().font(.subheadline)
                            Text(senator.biography)
                                .font(.subheadline)
                        
                    }
                }
                .padding()
            }
        }
        .navigationBarTitle(Text(senator.name), displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {self.ShowWebView = true}){
             Image(systemName: "globe").imageScale(.large)
        })
//Modal popover of detail view
        .sheet(isPresented: self.$ShowWebView){
            VStack(alignment: .leading){
                Button(action: {
                    self.ShowWebView = false
                })
                {
                    Text("Done")
                        .fontWeight(.bold)
                }.padding(.leading)
                    .padding(.top)
                    WebView(request: URLRequest(url: self.senator.website.url))
            }
        }
    }
}

struct SenatorDetail_Preview: PreviewProvider {
    static var previews: some View {
        SenatorDetail(senator: senatorData[50])
    }
}
