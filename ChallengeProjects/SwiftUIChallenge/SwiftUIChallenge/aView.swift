//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// A. 縦に3つの色付き長方形を等間隔で配置
//

import SwiftUI

struct aView: View {
    var body: some View {
        VStack(spacing: 15) {
            Rectangle().fill(Color.red)
            Rectangle().fill(Color.blue)
            Rectangle().fill(Color.green)
        }.frame(width: 80, height: 150)
        
    }
}

#Preview {
    aView()
}
