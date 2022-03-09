import 'package:gql/language.dart';
const String SUCCESS_MESSAGE = " You will be contacted by us very soon.";


const String leaque = """
query MyQuery {
leagueStat(leagueId: "ae2b8a9e-e87a-4402-a125-dabf5d8f7ef8") {
leagueId
name
city
state
country
startDate
endDate
level
description
format
status
userStat {
loss
total
userId
won
}
}
}
""";

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
const String matchesQuery = """
  query (\$userSearch: String!) {
    allMatches(userSearch:\$userSearch){
      edges {
      node {
        id
        matchId
        matchSet(first: 5) {
          edges {
            node {
              id
              playerOneScore
              playerTwoScore
            }
          }
        }
        playerOne {
          firstName
          userId
          lastName
        }
        playerTwo {
          userId
          lastName
          firstName
        }
      }
    }
    }
  }
""";
<<<<<<< HEAD


final hello = parseString('''
  query hello {
    hello {
      id
    }
  }
  ''');


final leagueStatus = /*parseString(*/'''
=======
const String leagueStatus = """
>>>>>>> main
query (\$leagueId: String!) {
  leagueStat(leagueId: \$leagueId) {
    leagueId
    name
    city
    state
    country
    startDate
    endDate
    level
    description
    status
    format
    userStat {
      loss
      total
      userId
      won
    }
  }
}

<<<<<<< HEAD
'''/*)*/;
=======
""";
>>>>>>> main
