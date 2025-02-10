# Book Lending Library Application

## Live Demo
I have a live demo for the system: [View Here](https://drive.google.com/file/d/1vRLbymqWmzCugg9gutGQ6pkb3VWFke2n/view?usp=sharing)

## Overview
This is a simple book lending library application built using **Ruby on Rails 8** with its default authentication system. The application allows users to browse available books, borrow books, return books, and manage their borrowed books. It ensures proper book availability tracking and prevents multiple borrowings of the same book.

## Features
- **User Authentication**: Users can register, log in, and log out (using Rails 8's default authentication).
- **Book Listing Page**: Displays all books along with their availability status.
- **Book Details Page**: Shows book details and allows borrowing if available.
- **Borrowing System**: Users can borrow books, and a borrowing record is created with a **due date (2 weeks from borrowing date).**
- **Return Books**: Users can return books they have borrowed.
- **User Profile Page**: Lists books currently borrowed by the user.
- **Model Validations**: Ensures presence of title, author, ISBN, and uniqueness of ISBN.
- **Error Handling**: Prevents borrowing of an already borrowed book.
- **Tests**: Implemented using Rails' default testing framework to ensure high test coverage.

## Installation

### Prerequisites
Ensure you have the following installed:
- Ruby 3.x
- Rails 8.x
- PostgreSQL (or SQLite for local development)
- Bundler

### Setup
1. Clone the repository:
   ```sh
   git clone https://github.com/MaikoAlloys/Book-Lending-Library-Application.git
   cd Book-Lending-Library-Application
   ```
2. Install dependencies:
   ```sh
   bundle install
   ```
3. Set up the database:
   ```sh
   rails db:create db:migrate db:seed
   ```
4. Start the Rails server:
   ```sh
   rails server
   ```
5. Open your browser and go to:
   ```
   http://localhost:3000
   ```

## Running Tests
To run the test suite, execute:
```sh
rails test
```

## Usage
1. **Sign up or log in** to access the system.
2. Browse available books.
3. Click on a book to view details.
4. Borrow a book (if available).
5. View borrowed books in your profile.
6. Return books when done.

## Repository
GitHub Repository: [Book Lending Library Application](https://github.com/MaikoAlloys/Book-Lending-Library-Application)

## License
This project is licensed under the MIT License.

---
**Happy Coding! 🚀**

