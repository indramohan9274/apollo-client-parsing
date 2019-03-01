# GraphQL latency analysis

Sample app to analyze network and client side parsing time

# System requirement
* macOS High Sierra (version 10.13 or greater)
* XCode 10.1 or greater
* Carthage 0.31.2

# How to setup

* Clone git repository on your mac
* Checkout specific master branch
* Build dependencies frameworks
```sh
   carthage bootstrap --platform iOS
```
* Open XCode project
```sh
   open JSONParsingAnalysis.xcodeproj
   Run the XCode project (cmd + R)
```

# Search Location
Inside ViewController.swift, four different locations are hard coded and one of the location is randomly selected upon every app launch and is sent to the server (both GraphQL and REST)

# GraphQL network response time calculation logic?
Apollo has abstraction to the networking layer. So, to calculate the network latency an implementation of HTTPNetworkTransportInterception protocol is used to track the total network latency.

#
