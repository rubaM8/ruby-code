# 📚 Quiz App README

Welcome to the **Quiz App**! This fun and interactive Rack-based web application is designed to test your knowledge on various topics, focusing on Palestinian culture, history, and cuisine. Let’s dive in!

## 📝 Table of Contents

1. [Features](#-features)
2. [Installation](#-installation)
3. [Usage](#-usage)
4. [How It Works](#-how-it-works)
5. [Questions](#-questions)

## 🌟 Features

- **Interactive Quiz:** 🎉 Answer questions and see your score in real-time.
- **Session Management:** 💾 Your progress is saved, allowing you to pick up right where you left off.
- **Reset Option:** 🔄 Start fresh whenever you want by resetting your session.
- **Dynamic Views:** 📊 Enjoy a responsive layout that presents questions, results, and error messages.

## 🚀 Installation

To set up the Quiz App on your local machine, follow these steps:

1. **Clone the repository:**

   ```bash
   git clone https://github.com/rubaM8/ruby-code.git
   cd rackApp
   ```

2. **Install dependencies:**

   Make sure you have Ruby and Rack installed. You can install them using:

   ```bash
   gem install rack erb
   ```

   or

      ```bash
   bundle install 
   ```

4. **Run the application:**

   Start the Rack server:

   ```bash
   rackup -ilib
   ```

5. **Access the app:**

   Open your web browser and go to `http://localhost:9292` to start quizzing yourself!

## 🎮 Usage

- **Take the Quiz:** 📝 Answer the questions presented one by one.
- **View Your Score:** 📈 After answering all questions, you’ll receive your final score.
- **Reset:** 🔄 If you want to retake the quiz, click the reset option.

## 🔍 How It Works

The Quiz App is built using Rack, which is a minimal, modular web server interface for Ruby. Here’s a quick overview of the main components:

- **Session Management:** The application keeps track of your score and the current question index through sessions.
- **Dynamic Question Loading:** Questions are loaded from an in-app array, providing a vibrant array of topics to explore.
- **ERB Templates:** HTML views are dynamically generated using Embedded Ruby (ERB), making it easy to inject data into the HTML.

## ❓ Questions

The quiz includes questions such as:

1. **What significant 2005 movement aimed to promote boycotts, divestment, and sanctions against Israel?**
   - BDS Movement
   - Oslo Accords
   - PLO
   - Intifada

2. **What traditional dish, made with chicken, onions, and sumac, is considered a staple of Palestinian cuisine?**
   - Musakhan
   - Maqluba
   - Mujadara
   - Knafeh

And many more that celebrate Palestinian heritage!

---

I hope you enjoy using the Quiz App and learn something new along the way! Happy quizzing! 🎉
