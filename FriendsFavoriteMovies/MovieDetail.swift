//
//  MovieDetail.swift
//  FriendsFavoriteMovies
//
//  Created by Christopher Bille on 4/14/25.
//

import SwiftUI

struct MovieDetail: View {
    @Bindable var movie: Movie
    var body: some View {
        Form {
            TextField("Movie title", text: $movie.title)
            DatePicker("Release date", selection: $movie.releaseDate, displayedComponents: .date)
        }
    }
}

#Preview {
    MovieDetail(movie: SampleData.shared.movie)
}
