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
const String leagueStatus = """
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

""";
