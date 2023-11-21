//
//  ScanBar.swift
//  JetPet Buddies
//
//  Created by itst on 17/11/2023.
//

import SwiftUI
import AVFoundation

// 1. UIViewController for handling camera preview and QR code scanning
class QRCodeScannerViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    var captureSession: AVCaptureSession!
    var previewLayer: AVCaptureVideoPreviewLayer!
    var qrCodeFound: (String) -> Void
    
    init(qrCodeFound: @escaping (String) -> Void) {
        self.qrCodeFound = qrCodeFound
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        captureSession = AVCaptureSession()
        
        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video) else { return }
        let videoInput: AVCaptureDeviceInput
        
        do {
            videoInput = try AVCaptureDeviceInput(device: videoCaptureDevice)
        } catch {
            return
        }
        
        if (captureSession.canAddInput(videoInput)) {
            captureSession.addInput(videoInput)
        } else {
            failed()
            return
        }
        
        let metadataOutput = AVCaptureMetadataOutput()
        
        if (captureSession.canAddOutput(metadataOutput)) {
            captureSession.addOutput(metadataOutput)
            
            metadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            metadataOutput.metadataObjectTypes = [.qr]
        } else {
            failed()
            return
        }
        
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.layer.bounds
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer)
        
        captureSession.startRunning()
    }
    
    func failed() {
        let ac = UIAlertController(title: "Scanning not supported", message: "Your device does not support scanning a code from an item. Please use a device with a camera.", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
        captureSession = nil
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if (captureSession?.isRunning == false) {
            captureSession.startRunning()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if (captureSession?.isRunning == true) {
            captureSession.stopRunning()
        }
    }
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        captureSession.stopRunning()
        
        if let metadataObject = metadataObjects.first {
            guard let readableObject = metadataObject as? AVMetadataMachineReadableCodeObject else { return }
            guard let stringValue = readableObject.stringValue else { return }
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            qrCodeFound(stringValue)
        }
        
        dismiss(animated: true)
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
}

// 2. UIViewControllerRepresentable to use the UIViewController in SwiftUI
struct QRCodeScannerView: UIViewControllerRepresentable {
    var qrCodeFound: (String) -> Void
    
    func makeUIViewController(context: Context) -> QRCodeScannerViewController {
        return QRCodeScannerViewController(qrCodeFound: qrCodeFound)
    }
    
    func updateUIViewController(_ uiViewController: QRCodeScannerViewController, context: Context) {}
    
    static func dismantleUIViewController(_ uiViewController: QRCodeScannerViewController, coordinator: ()) {
        uiViewController.captureSession?.stopRunning()
    }
}

// SwiftUI View that uses the QRCodeScannerView
struct ScanBar: View {
    @State private var scannedCode: String = ""
    @State private var manualInputCode: String = ""
    @State private var isShowingSuccessBox = false
    @State private var showAlert = false
    @State private var showQhome = false
    @State private var isScanBarComponentsVisible = true
    

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer(minLength: geometry.size.height * 0.1) // Top 10% empty space
                
                if showQhome{
                    QuestionHome()
                }

                if !showQhome {
                    QRCodeScannerView { code in
                        // This closure is called when a QR code is found
                        self.scannedCode = code
                        self.isShowingSuccessBox = true
                        self.showAlert = true
                        // Using DispatchQueue to show the success message for 3 seconds
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            self.showAlert = false
                            self.isScanBarComponentsVisible = false
                            self.showQhome = true
                            
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: geometry.size.height * 0.6) // 60% of the screen height
                }
                // Input box and enter button in the bottom 20%
                VStack {
                    if isScanBarComponentsVisible {
                        TextField("Input QR code data", text: $manualInputCode)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        Button("Enter") {
                            // Process manual input QR code data
                            scannedCode = manualInputCode
                            isShowingSuccessBox = true
                            showAlert = true
                            // Using DispatchQueue to show the success message for 3 seconds
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                self.showAlert = false
                                self.showQhome = true
                            }
                        }
                        
                        .padding()
                    }
                }
                .frame(height: geometry.size.height * 0.2) // 20% of the screen height

                Spacer(minLength: geometry.size.height * 0.1) // Bottom 10% empty space
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Success!"), message: Text("QR Code Scanned"), dismissButton: .default(Text("OK")))
        }
    }
}

struct ScanBar_Previews: PreviewProvider {
    static var previews: some View {
        ScanBar()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
