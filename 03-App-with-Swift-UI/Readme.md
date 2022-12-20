# Code snippet for Gesture and Animation
## Scale CardView
```
 @State var isScaled = false

 CardView(user: user)
    .scaleEffect(isScaled ? 1.2 : 1.0)
    .animation(.default)
    .gesture(TapGesture()
        .onEnded {
            self.isScaled.toggle()
        }
    )
```

## Long press gesture
```
 @GestureState var isScaled = false

CardView(user: user)
    .scaleEffect(isScaled ? 1.2 : 1.0)
    .gesture(LongPressGesture(minimumDuration: 2.0)
        .updating($isScaled, body: {value, state, transaction in
            state = value
        })
    )
```