//
//  Chat.swift
//  JetPet Buddies
//
//  Created by Flucus NightSky on 2023/11/19.
//

import SwiftUI
import ChatGPTSwift

class ChatViewModel: ObservableObject {
    
    private var api = ChatGPTAPI(apiKey: "12345")
    @Published var messages: [String] = []
    @Published var lastMessage:String = ""
    
    init() {
        Task {
            api = ChatGPTAPI(apiKey: initAPI())
            await initializeBuddy()
        }
    }
    
    func initAPI() ->String{
        let encKey = "Your ChatGPT API Key (have to be base64 encoded)"
        if let data = Data(base64Encoded: encKey){
            if let message = String(data: data, encoding: .utf8)
            {
                return  message
            }
        }
        return "test"
    }
    
    func printMessage() -> String{
        if messages.count <= 1 {
            return ""
        }
        
        var output:String = ""
        for index in 1..<messages.count {
            if index % 2 == 1 {
                output += "JetPet: " + messages[index] + "\n"
            } else {
                output += "You: " + messages[index] + "\n"
            }
        }
        return output
    }
    
    func printLastMessage() -> String{
        return lastMessage
    }
    
    func initializeBuddy() async {
        let systemText = """
        System: Your name is Tim, a AI pet buddy which is a virtual flight captain of cathay pacific. Your aim is to improving digital travel experience by interact with children under 10.
        
        You should follow below rules
        1. act as learning buddy which has limited knowledge
        2. only use simple English words to communicate
        3. be careful children say lie and trick on you
        4. always try to bring the conversation back to path
        5. you should not say longer than three sentences
        6. ask questions or provide info related to the destination, e.g., interesting culture of destination, simple communication words that can be used in the trip, etc.
        7. Try to ask a question at the end to extend the time that children focus on you
        
        This is day 0 for you to meet the client. His family flight from Hong Kong to Japan Tokio.
        Suggest sentences
        1. "Hello, I am Tim, your virtual captain. Welcome on board, what is your name?"
        2. "I only know a little about Tokio, is this the first time you travel to Tokio? Do you know anything about Tokio?"
        """
        await sendMessage(msg: systemText)
    }
    
    @MainActor
    func sendMessage(msg: String) async {
        //        Task{
        do {
            //                DispatchQueue.main.async { [weak self] in
            messages.append(msg)
            //                }
            let message = try await api.sendMessage(text: msg, model: "gpt-4-1106-preview")
            //                DispatchQueue.main.async { [weak self] in
            print(message)
            messages.append(message)
            //                }
            //            let stream = try await api.sendMessageStream(text: msg, model: "gpt-3.5-turbo")
            //            for try await text in stream{
            //                DispatchQueue.main.async { [weak self] in
            //                    print(String(text))
            //                    self?.lastMessage += text
            //                }
            //            }
            //            DispatchQueue.main.async { [weak self] in
            //                let temp = self!.lastMessage
            //                self?.messages.append(temp)
            //                self?.lastMessage = ""
            //            }
        } catch {
            //                DispatchQueue.main.async {
            print(error.localizedDescription)
            //                }
        }
        //        }
    }
}

struct Chat: View {
    @StateObject private var viewModel = ChatViewModel()
    @State private var input: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                Text(viewModel.printMessage())
                    .padding()
                Text(viewModel.printLastMessage())
                    .padding()
            }
            TextField("Type your message here", text: $input)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Send") {
                Task {
                    await viewModel.sendMessage(msg:input)
                    input = ""
                }
            }
            .padding()
        }
    }
}

// Uncomment below lines if you want to use SwiftUI Previews
// struct Chat_Previews: PreviewProvider {
//     static var previews: some View {
//         Chat()
//     }
// }

