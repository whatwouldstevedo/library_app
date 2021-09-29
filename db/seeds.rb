# frozen_string_literal: true

libraries = Library.create([{ name: 'Russian Government Library' }, { name: 'United States Government Library'},{ name: 'British Government Library' }])
Author.create(name: 'Alexander', surname: 'Pushkin', country: 'Russia', libraries: library.first)
Author.create(name: 'Kurt', surname: 'Vonnegut', country: 'USA', libraries: library.second)
Author.create(name: 'Arthur Conan', surname: 'Doyle', country: 'UK', libraries: library.third)
