//
//  DividirCuentaView.swift
//  Bill For All
//
//  Created by Javier Andoni González Vázquez on 24/02/23.
//

import SwiftUI



struct DividirCuentaView: View {
    @State var showImagePicker = false
    @State var selectedImage: UIImage?
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack() {
                Button(action: {
                    self.showImagePicker = true
                }, label: {
                    Text("Seleccionar imagen de la galería")
                        .font(.body)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(acColor)
                        .cornerRadius(5, antialiased: true)
                        .padding(.vertical, 10)
                })
                Button(action: {
                    let imagePicker = UIImagePickerController()
                    imagePicker.sourceType = .camera
                }, label: {
                    Text("Usar la cámara")
                        .font(.body)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(acColor)
                        .cornerRadius(5, antialiased: true)
                        .padding(.vertical, 10)
                })

            }
            .foregroundColor(.white)
            .padding()
        }
        .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
            ImagePicker(image: $selectedImage, sourceType: .photoLibrary)
        }
    }
    
    func loadImage() {
        // Handle the selected image here
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    @Binding var image: UIImage?
    var sourceType: UIImagePickerController.SourceType = .photoLibrary

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {

    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.image = image
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}



struct DividirCuentaView_Previews: PreviewProvider {
    static var previews: some View {
        DividirCuentaView()
    }
}
