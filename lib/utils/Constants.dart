const String SUCCESS_MESSAGE = " You will be contacted by us very soon.";
const String homepageQuery = """
  query (\$userId: String!) {
    userProfiles(userId:\$userId){
    matchesCount
    drawCount
    lostCount
    city
    dob
    state
    firstName
    lastName
    userId
    wonCount
    age
    }
  }
""";
