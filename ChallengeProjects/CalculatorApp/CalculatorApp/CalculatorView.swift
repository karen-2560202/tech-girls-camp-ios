//
//  CalculatorView.swift
//  CalculatorApp
//
//  ChallengeProjects
//

import SwiftUI

struct CalculatorView: View {
    // 最初に利用する変数を定義しています
    // @State: プロパティが変更されたときにビューを自動的に再描画するためのおまじない
    @State var firstNumber: String = ""
    @State var secondNumber: String = ""
    @State var result: String = "?"
    @State var firstNumberB: String = ""
    @State var secondNumberB: String = ""
    @State var resultB: String = "?"
    
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("足し算電卓")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                HStack(spacing: 10) {
                    // 1つ目の入力フィールド
                    // @Stateのついたプロパティには$をつけるというおまじない。
                    TextField("?", text: $firstNumber)
                        .keyboardType(.numberPad)
                        .frame(width: 60)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("+")
                        .font(.title)
                    
                    // 2つ目の入力フィールド
                    TextField("?", text: $secondNumber)
                        .keyboardType(.numberPad)
                        .frame(width: 60)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("=")
                        .font(.title)
                    
                    // 結果の表示
                    Text(result)
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 100)
                        .multilineTextAlignment(.center)
                }
                
                // 計算ボタン
                Button(action: {
                    // ここでボタンを押した時の挙動を記述
                    // 今回は calculateSum() というメソッド(関数)を呼び出しています
                    // 具体的な処理は calculateSum() 内に記述します
                    calculateSum()
                }) {
                    Text("計算する")
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
                
                
                .padding(.horizontal)
                
                Spacer()
            }
            VStack(spacing: 20) {
                Text("引き算電卓")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                HStack(spacing: 10) {
                    // 1つ目の入力フィールド
                    // @Stateのついたプロパティには$をつけるというおまじない。
                    TextField("?", text: $firstNumberB)
                        .keyboardType(.numberPad)
                        .frame(width: 60)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("-")
                        .font(.title)
                    
                    // 2つ目の入力フィールド
                    TextField("?", text: $secondNumberB)
                        .keyboardType(.numberPad)
                        .frame(width: 60)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("=")
                        .font(.title)
                    
                    // 結果の表示
                    Text(resultB)
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 100)
                        .multilineTextAlignment(.center)
                }
                
                // 計算ボタン
                Button(action: {
                    // ここでボタンを押した時の挙動を記述
                    // 今回は calculateSum() というメソッド(関数)を呼び出しています
                    // 具体的な処理は calculateSum() 内に記述します
                    calculateSumB()
                }) {
                    Text("計算する")
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
                
                
                .padding(.horizontal)
                
                Spacer()
            }
        }
        
        .padding()
        
        
        Divider()
        
        // TODO: - Challenge2
        // 引き算電卓も作ってみよう
        
    }
    
    // 足し算の処理
    func calculateSum() {
        if let firstNumberInt = Int(firstNumber), let secondNumberInt = Int(secondNumber) {
            let resultInt = firstNumberInt + secondNumberInt
            result = String(resultInt)
            
        }
        else {
            result = "Error"
        }
    }
        
        
        // TODO: - Challenge1
        // ここに計算ロジックを記述し、計算結果を表示できるようにしてみよう
        func calculateSumB() {
            if let firstNumberBInt = Int(firstNumberB), let secondNumberBInt = Int(secondNumberB) {
                let resultIntB = firstNumberBInt - secondNumberBInt
                resultB = String(resultIntB)
                
            }
            else {
                resultB = "Error"
            }
            
            
        }
        
        
        
    }
    #Preview {
        CalculatorView()
    }
    
