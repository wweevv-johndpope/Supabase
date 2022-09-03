// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Supabase",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
  ],
  products: [
    .library(name: "Supabase",  targets: ["Supabase"] ),
    // .library(name: "SupabaseStorage", targets: ["SupabaseStorage"]),
    // .library(name: "GoTrue", targets: ["GoTrue"]),
    // .library(name: "Realtime", targets: ["Realtime"]),
    // .library(name: "PostgREST", targets: ["PostgREST"])
  ],
  dependencies: [
    .package(path: "Sources/GoTrue"),
    .package(path: "Sources/SupabaseStorage"),
    .package(path: "Sources/Realtime"),
    .package(path: "Sources/PostgREST"),
    
  ],
  targets: [
        .target(
            name: "Supabase",
            dependencies: [
                "GoTrue",
                "SupabaseStorage",
                "Realtime",
                "PostgREST"
                
            ]),

    ]
)