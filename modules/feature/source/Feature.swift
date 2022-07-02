import Foundation
import SwiftUI
import Service
import Core

public class HelloWorldViewModel {

    let service: HelloService

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
        Text(viewModel.text)
    }
}
