import SwiftUI
import RealityKit

struct RobotViewContainer: UIViewRepresentable {
  func makeUIView(context: Context) -> ARView {
    let arView = ARView(frame: .zero)
    
    if let entity = try? Entity.loadModel(named: "robot.usdz") {
      let anchor = AnchorEntity()
      anchor.addChild(entity)
      arView.scene.addAnchor(anchor)
    }
    
    return arView
  }
  
  func updateUIView(_ uiView: ARView, context: Context) {}
}
