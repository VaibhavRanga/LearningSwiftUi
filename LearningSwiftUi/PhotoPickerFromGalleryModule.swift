//
//  ImagePickerFromGalleryModule.swift
//  LearningSwiftUi
//
//  Created by Vaibhav Ranga on 17/06/24.
//

import PhotosUI
import SwiftUI

//To select a single image

struct PhotoPickerFromGalleryModule: View {
    @State private var pickerItem: PhotosPickerItem?
    @State private var selectedImage: Image?
    
    var body: some View {
        VStack {
            PhotosPicker("Select a picture", selection: $pickerItem, matching: .images)
                .onChange(of: pickerItem) {
                    Task {
                        selectedImage = try await pickerItem?.loadTransferable(type: Image.self)
                    }
                }

            selectedImage?
                .resizable()
                .scaledToFit()
        }
    }
}





//To select multiple images

//struct PhotoPickerFromGalleryModule: View {
//    @State private var pickerItems = [PhotosPickerItem]()
//    @State private var selectedImages = [Image]()
//    
//    var body: some View {
//        VStack {
//            PhotosPicker(selection: $pickerItems, maxSelectionCount: 3, matching: .any(of: [.images, .not(.screenshots)])) {
//                Label("Select photos", systemImage: "photo")
//            }
//                .onChange(of: pickerItems) {
//                    Task {
//                        selectedImages.removeAll()
//                        
//                        for image in pickerItems {
//                            if let loadedImage = try await image.loadTransferable(type: Image.self) {
//                                selectedImages.append(loadedImage)
//                            }
//                        }
//                    }
//                }
//            
//            ScrollView {
//                ForEach(0..<selectedImages.count, id: \.self) { index in
//                    selectedImages[index]
//                        .resizable()
//                        .scaledToFit()
//                }
//            }
//        }
//    }
//}

#Preview {
    PhotoPickerFromGalleryModule()
}
