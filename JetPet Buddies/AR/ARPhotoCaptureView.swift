import SwiftUI
import ARKit

struct ARContentView: View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: Context) -> ARSCNView {
        let arView = ARSCNView(frame: .zero)
        arView.delegate = context.coordinator

        // Enable multisampling for smoother edges
        arView.antialiasingMode = .multisampling4X

        // Use autoenablesDefaultLighting to improve lighting
        arView.autoenablesDefaultLighting = true
        arView.automaticallyUpdatesLighting = true

        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = [.horizontal]

        // Use environmentTexturing to improve realism
        configuration.environmentTexturing = .automatic

        arView.session.run(configuration)
        return arView
    }


    func updateUIView(_ uiView: ARSCNView, context: Context) {}
    
    class Coordinator: NSObject, ARSCNViewDelegate {
        var parent: ARViewContainer
        
        init(_ parent: ARViewContainer) {
            self.parent = parent
        }
        
        func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
            guard let planeAnchor = anchor as? ARPlaneAnchor else { return }

            // Load the 3D model from a USDZ file named 'dog.usdz' located in the app's assets
            let rabbitNode = SCNNode()
            if let rabbitScene = SCNScene(named: "dog.dataset/dog.usdz") {
                // The USDZ file should contain only one root node
                rabbitNode.addChildNode(rabbitScene.rootNode)
                print("Image 'Rabbit' loaded successfully.")
            } else {
                fatalError("Failed to load 3D model dog.usdz")
            }
            
            // Position the 3D model node
            rabbitNode.position = SCNVector3(planeAnchor.center.x, 0, planeAnchor.center.z)
            
            // Optionally, scale the rabbit model if it is too big or too small
            rabbitNode.scale = SCNVector3(0.01, 0.01, 0.01) // Adjust the scale accordingly
            
            // Add the 3D model node to the AR scene
            node.addChildNode(rabbitNode)
        }

    }
}


struct ARContentView_Previews: PreviewProvider {
    static var previews: some View {
        ARContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
