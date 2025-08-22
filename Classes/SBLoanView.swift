//
//  SBLoanView.swift
//  Pods
//
//  Created by Juliano Sgarbossa on 21/08/25.
//

import SwiftUI

public struct SBLoanView: View {
    
    //MARK: - UI Components
    private let backgroundColor = Color(red: 240/255, green: 240/255, blue: 240/255)
    private let yellowColor = Color(red: 255/255, green: 186/255, blue: 5/255)
    
    // MARK: - Init
    public init() { }
    
    //MARK: - View
    public var body: some View {
        ZStack(alignment: .top) {
            LinearGradient(gradient: Gradient(colors: [yellowColor, backgroundColor]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                headerView
                    .padding(.leading, 20)
                
                cardView
                    .padding(.horizontal, 20)
            }
        }
    }
    
    var headerView: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("Empréstimo")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.black)
                
                Text("SwiftBank")
                    .font(.system(size: 24, weight: .light))
                    .foregroundStyle(.black)
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.top)
            .padding(.bottom, 3)
            
            Text("Antecipe seus planos!")
                .font(.system(size: 20, weight: .light))
                .foregroundStyle(.black)
        }
    }
    
    var cardView: some View {
        RoundedRectangle(cornerRadius: 7)
            .frame(maxWidth: .infinity)
            .frame(height: 140)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 7))
            .shadow(color: Color.gray.opacity(0.5), radius: 7, x: 0, y: 2)
            .overlay {
                VStack(alignment: .leading) {
                    headerCardView
                        .padding(.top)
                        .padding(.horizontal)
                    
                    headerTextCardView
                        .padding(.horizontal)
                    
                    Spacer()
                }
            }
    }
    
    var headerCardView: some View {
        VStack(alignment: .leading) {
            Text("Veja sua opção de crédito pré-aprovado:")
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(.black)
                .padding(.bottom, 5)
            
            HStack {
                Image(systemName: "dollarsign.circle")
                    .font(.system(size: 22))
                
                Text("Empréstimo Pessoal")
                    .font(.system(size: 16, weight: .light))
                    .foregroundStyle(.black)
                
                Spacer()
            }
            .padding(.bottom, 5)
        }
    }
    
    var headerTextCardView: some View {
        HStack {
            Text("Guardar dinheiro é o primeiro passo para realizar grandes sonhos.")
                .font(.system(size: 12, weight: .light))
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    SBLoanView()
}
