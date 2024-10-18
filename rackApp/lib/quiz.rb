require "rack"
require "erb"

class Quiz
  def self.call(env)
    req = Rack::Request.new(env)
    res = Rack::Response.new

    session = req.session
    initialize_session(session)

    if req.path == "/" && req.post?
      handle_answer(req, session)
      res.redirect("/")
    elsif req.path == "/"
      res.write(render_quiz_view(session))
    else
      res.write(render_template("error.html.erb"))
    end

    res.finish
  end

  def self.initialize_session(session)
    session[:score] ||= 0
    session[:question_index] ||= 0
  end

  def self.reset_session(session)
    session[:score] = 0
    session[:question_index] = 0
  end

  def self.handle_answer(req, session)
    if req.params["reset"]
      reset_session(session)
      return
    end

    questions = load_questions
    user_answer = req.params["guess"]
    current_question = questions[session[:question_index]]

    if user_answer == current_question[:correct]
      session[:score] += 1
    end
    session[:question_index] += 1
  end

  def self.render_quiz_view(session)
    questions = load_questions

    if session[:question_index] >= questions.size
      render_template("results.html.erb", score: session[:score])
    else
      current_question = questions[session[:question_index]]
      render_template("index.html.erb", question: current_question, index: session[:question_index])
    end
  end

  def self.render_template(template, locals = {})
    content = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(content)).result_with_hash(locals)
  end

  def self.load_questions
    [
      { clue: "What significant 2005 movement aimed to promote boycotts, divestment, and sanctions against Israel?", correct: "BDS Movement", options: ["BDS Movement", "Oslo Accords", "PLO", "Intifada"] },
      { clue: "What traditional dish, made with chicken, onions, and sumac, is considered a staple of Palestinian cuisine?", correct: "Musakhan", options: ["Maqluba", "Musakhan", "Mujadara", "Knafeh"] },
      { clue: "What is the name of the Palestinian armed group that has been involved in various resistance activities since the late 20th century?", correct: "Hamas", options: ["Fatah", "Hamas", "PFLP", "Islamic Jihad"] },
      { clue: "What city is home to the Al-Aqsa Mosque and is considered one of the holiest cities in Islam?", correct: "Jerusalem", options: ["Hebron", "Bethlehem", "Jerusalem", "Nazareth"] },
      { clue: "Which city is known for its historical significance and is famous for its olive oil production?", correct: "Nablus", options: ["Gaza", "Nablus", "Ramallah", "Tulkarm"] },
      { clue: "What traditional Palestinian dress, often embroidered with unique patterns, is a symbol of cultural identity?", correct: "Thobe", options: ["Keffiyeh", "Thobe", "Jilbab", "Abaya"] },
      { clue: "What popular Palestinian dance symbolizes community and celebration, often performed at weddings?", correct: "Dabke", options: ["Dabke", "Raqs Sharqi", "Zaffa", "Belly Dance"] },
      { clue: "What dish, made with lentils and rice, reflects the simplicity and resilience of Palestinian cuisine?", correct: "Mujadara", options: ["Mujadara", "Hummus", "Tabbouleh", "Falafel"] },
      { clue: "What is the name of the Palestinian poet known for his influential works on identity and resistance?", correct: "Mahmoud Darwish", options: ["Yousef Idris", "Mahmoud Darwish", "Tawfiq Zayyad", "Ibrahim Nasrallah"] },
      { clue: "Which Palestinian author is known for the book 'Mornings in Jenin' that explores the Palestinian experience?", correct: "Susan Abulhawa", options: ["Agha Shahid Ali", "Susan Abulhawa", "Mahmoud Darwish", "Salman Rushdie"] },
    ]
  end
end

