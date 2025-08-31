//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// E. 商品アイテム
//

import SwiftUI

struct eView: View {
    var body: some View {
        VStack(alignment:.leading , spacing: 12) {
            
            
            
            // 画像だけは最初に提示しておきます
            AsyncImage(url: URL(string: "https://picsum.photos/300/200")!)
                .cornerRadius(8)
                
            Text("商品名:おしゃれなバッグ")
                .font(.headline)
            
            Text("¥12,800")
                .font(.headline)
                .foregroundStyle(.green)
        }.padding()
            .background(Color.white.cornerRadius(8)
                .shadow(radius:5 , x:2 , y:5))
            
    }
}

#Preview {
    eView()
}
