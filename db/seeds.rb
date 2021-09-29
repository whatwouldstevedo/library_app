# frozen_string_literal: true

libraries = Library.create([{name: 'Russian Government Library', country: 'Russia', body: 'blablabla'}])
libraries = Library.create([{name: 'United States Government Library', country: 'USA', body: 'qwerty'}])
libraries = Library.create([{name: 'British Government Library', country: 'UK', body: 'loren ipsum'}])
authors = Author.create([{name: 'Alexander', surname: 'Pushkin', country: 'Russia'}])
authors = Author.create([{name: 'Kurt', surname: 'Vonnegut', country: 'USA'])
authors = Author.create([{name: ' Arthur Conan ', surname: 'Doyle', country: 'USA'])
