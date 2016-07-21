shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Local Authentication System"),
    sidebarPanel(
      textInput('userid', 'Please enter your user id', value = "", width = NULL, placeholder = NULL),
      passwordInput('passwordid', 'Please enter your password' , value = "", width = NULL),
      actionButton('loginButton', 'Login'),
      p('Note: Authorised user id is valak with password as valak2016')
    ),
    mainPanel(
      h4('User ID'),
      verbatimTextOutput("userIdValue"),
      
      h4('Password'),
      verbatimTextOutput("passwordValue"),
      
      conditionalPanel(condition = 'input["loginButton"] && input["userid"] && input["passwordid"]',  h4('Results of authentication'), verbatimTextOutput("statusValue"))
    )
  )
)