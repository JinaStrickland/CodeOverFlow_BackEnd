# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Answer.destroy_all
Company.destroy_all
Question.destroy_all
User.destroy_all


code_over_flow = Company.create(name: "CodeOverFlow")


u1 = User.create(
    username: "Jina Smith",
    email: "jina@gmail.com",
    password_digest: "jina",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTujUAbrUr4nk7BtPYpfy4llFW03uxz0bCTqg&usqp=CAU",
    company: code_over_flow
)
u2 = User.create(
    username: "Solomon Yard",
    email: "solomon@gmail.com",
    password_digest: "solomon",
    image: "https://john-darke.co.uk/wp-content/uploads/2019/04/male-image.jpg",
    company: code_over_flow
)
u3 = User.create(
    username: "Jane May",
    email: "jane@gmail.com",
    password_digest: "jane",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTAf_DARs3j-x3klIyxyDanfMFShffMn0LrCw&usqp=CAU",
    company: code_over_flow
)
u4 = User.create(
    username: "Bob Williams",
    email: "bob@gmail.com",
    password_digest: "bob",
    image: "https://www.latrobemassagecentre.com.au/wp-content/uploads/2016/04/Male-Image.jpg",
    company: code_over_flow
)
u5 = User.create(
    username: "Suzy Jones",
    email: "suzy@gmail.com",
    password_digest: "suzy",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTujUAbrUr4nk7BtPYpfy4llFW03uxz0bCTqg&usqp=CAU",
    company: code_over_flow
)


q1 = Question.create(
    title: "What do these three dots in React do?",
    body: "What does the ... do in React code and what is it called?  {...this.props}",
    tag: "React",
    user: u1
    )
q2 = Question.create(
    title: "Rails Controller Constant",
    body: 'Is there anything as "Controller Constant" in Rails?  If yes, how and where do we use it?  And what will be the varieties of constants like model, controller, etc.',
    tag: "Rails",
    user: u1
    )
q3 = Question.create(
    title: "Number in the array that are not divisible by 3 or 5?",
    body: "How do I display the number in the array that are not divisible by 3 or 5?",
    tag: "Ruby",
    user: u2
    )
q4 = Question.create(
    title: "What is the difference between state and props in React?",
    body: "Can props and state can change and when should we use state?",
    tag: "React",
    user: u2
    )
q5 = Question.create(
    title: "How to remove unwanted character using hash in Ruby?",
    body: "How do I remove the wnated character in Ruby using hash?",
    tag: "Ruby",
    user: u3
    )
q6 = Question.create(
    title: "What's the difference between ||= and |= with booleans",
    body: "I understaqnd that a ||= b behaves like a || a = b and that a |= b behaves like a = a | b.  When working with booleans, does it make a difference which you use?",
    tag: "Ruby",
    user: u3
    )
q7 = Question.create(
    title: "How do I return the response from an asynchronous call?",
    body: "I have a function which makes an asynchronous request. How can I return the response from this function? I tried returning the value from the callback, as well as assigning the result to a local variable inside the function and returning that one, but none of those ways actually return the response.",
    tag: "Java Script",
    user: u4
    )
q8 = Question.create(
    title: "Why console.log is printing two times on first render",
    body: "I created a component and inside that I have a on click function and I have a console statement. Can anyone explain why it is displaying two times on the render?",
    tag: "React",
    user: u4
    )
q9 = Question.create(
    title: "How to change video js source with a link click",
    body: 'How can I change video source by clicking on one of my links?  I undertand that I have to use event listeners and just change the <source> depending on what link I click, but I am not that good at programing or googeling. The video player I am using is "video js"',
    tag: "Java Script",
    user: u5
    )


a1 = Answer.create(
    body: '{...this.props} spreads out the "own" enumerable properties in props as discrete properties you are creating.',
    user: u1,
    question: q1
    )
a2 = Answer.create(
    body: "The three dots represent the Speard Operator. It allows us to do few things in Javascript: concatenate array, destructuring an array, and combining two objects.",
    user: u2,
    question: q1
    )
a3 = Answer.create(
    body: "Props and state are related.  The state of component will often become the props of a child component.  Props are passed to the child within the render method of the parent as the second argument.",
    user: u5,
    question: q4
    )
a4 = Answer.create(
    body: "Use state to store the data your current page needs in your controller-view.  Use props to pass data and event handlers down to your child components.  Props are immutable and state is mutable",
    user: u3,
    question: q4
    )
a5 = Answer.create(
    body: "If the input is not extremely long, String#gsub would do.  It's always better to whitelist wanted character, rather than blacklist unwanted ones.  String.gsub(/[^\w\s=\(\)]+/, '') ",
    user: u4,
    question: q5
    )
a6 = Answer.create(
    body: "That's not quite right.  In general the x= operator behaves like A = A X B where X is one of the supported operators.  Notably it's always on the right side of the ==. The | version is typically understood to do binary math.  Whereas || a higher leverl logical test on the truthiness of values. In Ruby only nil and false are considered non-truthful, all other values are considered truthful.",
    user: u3,
    question: q6
    )
a7 = Answer.create(
    body: "You are using Ajax incorrectly. The idea is not to have it return anything, but instead hand off the data to something called a callback function, which handles the data. Returning anything in the submit handler will not do anything. You must instead either hand off the data, or do what you want with it directly inside the success function.",
    user: u1,
    question: q7
    )
a8 = Answer.create(
    body: "Another approach to return a value from an asynchronous function is to pass in an object that will store the result from the asynchronous function.",
    user: u2,
    question: q7
    )
a9 = Answer.create(
    body: "One is printing immediately because of the function, and the other one is because of the React.strictMode in the index.js file. I would remove the <React.StrictMode> from index.js and it should render once.",
    user: u2,
    question: q8
    )
a10 = Answer.create(
    body: 'Take a look at this link. "https://stackoverflow.com/questions/27140952/how-to-change-video-source-onclick" ',
    user: u1,
    question: q9
    )
a11 = Answer.create(
    body: "It would be easier to give your <source> object an ID.  Then reference the object by the ID using document.getElementById and document.addEventLister",
    user: u3,
    question: q9
    )


# ruby question: Why is .each not returning the new array?
    