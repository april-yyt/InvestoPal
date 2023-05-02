//
//  LoadingStateView.swift
//  InvestoPal
//
//  Created by April Yang on 4/26/23.
//

import SwiftUI

struct LoadingStateView: View {
    
    var body: some View {
        HStack {
            Spacer()
            ProgressView()
                .progressViewStyle(.circular)
            Spacer()
        }
    }
}

struct LoadingStateView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingStateView()
    }
}
