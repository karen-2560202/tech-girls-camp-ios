//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// B. 二重に丸を配置
//

import SwiftUI

struct bView: View {
    var body: some View {
        ZStack {
            Circle().fill(Color.yellow)
                .frame(width:120 , height:120)
            Circle().fill(Color.orange)
                .frame(width:60 , height:60)
                
        }
        
    }
}

#Preview {
    bView()
}
