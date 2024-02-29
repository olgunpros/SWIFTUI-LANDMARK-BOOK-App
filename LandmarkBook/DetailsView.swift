import SwiftUI

struct DetailsView: View {
    var chosenLandmark : Landmark
    var body: some View {
        VStack {
            MapView(cordinate: chosenLandmark.locationcordibate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: UIScreen.main.bounds.height * 0.3)
            
            CircleImageView(image: Image(chosenLandmark.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.3)
                .offset(y: -UIScreen.main.bounds.height * 0.15)
                .padding(.bottom,UIScreen.main.bounds.height * -0.15)
            
            VStack(alignment: .leading) {
                Text(chosenLandmark.name)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                
                HStack {
                    Text(chosenLandmark.country)
                        .font(.subheadline)
                    Spacer()
                    Text(chosenLandmark.category)
                        .font(.subheadline)
                        
                }
            }
            
            .padding()
            
            Spacer()
               
        }
    }
}

#if DEBUG
struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenLandmark: LondonLandmark)
    }
}
#endif
