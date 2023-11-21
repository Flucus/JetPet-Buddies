
//
//  Matching.swift
//  JetPet Buddies
//
//  Created by itst on 16/11/2023.
//

import SwiftUI

struct ExampleCardView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .overlay(
                VStack(spacing: 10) {
                    Image(systemName: "heart.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.pink)
                    Text("Example Card")
                        .font(.title)
                        .bold()
                    Text("This is an example card with some beautiful UI.")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding()
            )
            .shadow(radius: 10)
    }
}

typealias Card = CardView<ExampleCardView>

struct Matching: View {
  
    @State var cards: [Card]

    var body: some View {
        VStack {
            Text("Swipe left or right")
                .font(.title)
                .foregroundColor(.gray)
          Button {
            print("Resetting...")
            loadCards()
          } label: {
            HStack {
              Image(systemName: "arrow.clockwise.circle.fill")
              Text("Reset Cards")
            }
          }

          // Cards
          ZStack {
            ForEach(cards, id: \.tagId) { card in
              updateCard(card)
            }
          }
          .padding(.top, 20)
          .padding(.horizontal, 20.0)
        }
        .onAppear {
          loadCards()
        }
    }
  
  private func updateCard(_ card: Card) -> some View {
    card
      .animation(.spring(), value: UUID())
      .zIndex(Double(cards.count - card.index))
      .offset(x: 0, y: 10 + CGFloat(card.index) * 10)
      .rotationEffect(.degrees(-(Double(card.index)) * 0.7))
  }
  
  private func loadCards() {
    cards = [
      CardView(index: 0, tagId: UUID(), content: { ExampleCardView() }),
      CardView(index: 1, tagId: UUID(), content: { ExampleCardView() }),
      CardView(index: 2, tagId: UUID(), content: { ExampleCardView() }),
      CardView(index: 3, tagId: UUID(), content: { ExampleCardView() })
    ]
  }
}


struct Matching_Previews: PreviewProvider {
    static var previews: some View {
      Matching(cards: [])
    }
}

public struct CardView<Content: View>: View {
    
    // MARK: - Properties
    
    @State public var offset = CGSize.zero
    @State public var color: Color = .black
    @State public var isRemoved = false
    @State public var tagId: UUID = UUID()
    var index: Int
    public var onCardRemoved: (() -> Void)?
    public var onCardAdded: (() -> Void)?
    public var content: () -> Content
    
    // MARK: - Initializer
    
    public init(index: Int, tagId: UUID, onCardRemoved: (() -> Void)? = nil, onCardAdded: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) {
        self.onCardRemoved = onCardRemoved
        self.onCardAdded = onCardAdded
        self.content = content
        self.index = index
        self.tagId = tagId
    }
    
    // MARK: - Body
    
    public var body: some View {
        ZStack {
            content()
                .frame(width: 320, height: 420)
            
        }
        .offset(x: offset.width * 1, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                    withAnimation {
                        updateCardColor(width: offset.width)
                    }
                }
                .onEnded { _ in
                    withAnimation {
                        handleSwipe(width: offset.width)
                        updateCardColor(width: offset.width)
                    }
                }
        )
        .opacity(isRemoved ? 0 : 1) // add this modifier to handle card removal
    }
    
    // MARK: - Methods
    
    public func handleSwipe(width: CGFloat) {
        switch width {
        case -500...(-150):
            onCardRemoved?()
            offset = CGSize(width: -500, height: 0)
            isRemoved = true // set isRemoved to true
        case 150...500:
            onCardAdded?()
            offset = CGSize(width: 500, height: 0)
            isRemoved = true // set isRemoved to true
        default:
            offset = .zero
        }
    }
    
    
    public func updateCardColor(width: CGFloat) {
        switch width {
        case -500...(-130):
            color = .red
        case 130...500:
            color = .green
        default:
            color = .black
        }
    }
}
