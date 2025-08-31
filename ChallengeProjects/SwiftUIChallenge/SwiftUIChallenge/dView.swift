//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// D. 四角形の中に3つのテキストを等間隔に配置（異なるアライメント）
//

import SwiftUI

struct dView: View {
    var body: some View {
       Rectangle()
            .frame(width: 200, height: 100)
            .foregroundColor(.red)
            .overlay(
                VStack(spacing: 20) {
                    Text("Left Aligned")
                        .font(.system(size: 12))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Center Aligned")
                        .foregroundStyle(.white)
                    Text("Right Aligned")
                        .foregroundStyle(.white)
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            )
            
        
        
    }
}

#Preview {
    dView()
}
