//
//  MovieDetail.swift
//  FriendsFavoriteMovies
//
//  Created by Christopher Bille on 4/14/25.
//

import SwiftUI

struct MovieDetail: View {
    @Bindable var movie: Movie
    let isNew: Bool
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    var sortedFriends: [Friend] {
        movie.favoritedBy.sorted { $0.name < $1.name }
    }
    
    init(movie: Movie, isNew: Bool = false) {
        self.movie = movie
        self.isNew = isNew
    }
    
    var body: some View {
        Form {
            TextField("Movie title", text: $movie.title)
            DatePicker("Release date", selection: $movie.releaseDate, displayedComponents: .date)
            if !movie.favoritedBy.isEmpty {
                Section("Favorited by") {
                    ForEach(sortedFriends) { friend in
                        Text(friend.name)
                    }
                }
            }
        }
        .navigationTitle(isNew ? "New Movie" : "Movie")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            if isNew {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        context.delete(movie)
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        MovieDetail(movie: SampleData.shared.movie)
    }
}

#Preview("New Movie") {
    NavigationStack {
        MovieDetail(movie: SampleData.shared.movie, isNew: true)
    }
}
