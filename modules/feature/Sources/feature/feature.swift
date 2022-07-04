import Foundation
import SwiftUI
import Service
import Core
import Kingfisher

public class HelloWorldViewModel {

    let service: HelloService
    let imageURL = URL(string: "https://preview.redd.it/amom7gliy2t81.png?auto=webp&s=2c362816af1435fa054fe528352b8a662bbd4bad")!

    public init(service: HelloService = HelloServiceImpl()) {
        self.service = service
    }

    var text: String {
        print("\(Core.hello)")
        return service.getText().uppercased()
    }
}

public struct HelloWorldView: View {
    let viewModel: HelloWorldViewModel

    public init(viewModel: HelloWorldViewModel = HelloWorldViewModel()) {
        self.viewModel = viewModel
    }

    public var body: some View {
        VStack {
            Text(viewModel.text)
            Text(Core.hello)
            KFImage(viewModel.imageURL)
                .resizable()
                .frame(width: 320, height: 240)
        }.background(Color.yellow)
    }
}
