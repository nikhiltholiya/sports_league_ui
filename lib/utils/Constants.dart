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

const fetchUserProfiles = """
query (\$userId : String!) {
  userProfiles(userId:\$userId) {
    userId
    firstName
    lastName
    matchesCount
    wonCount
    drawCount
    lostCount
    city
    state
    dob
    age
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

final leagueStatus = /*parseString(*/ '''

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
    winnerOneId
    winnerTwoId
    userStat {
      userName
      loss
      total
      userId
      won
    }
  }
}
''' /*)*/
    ;


//20220315
String? allLeagueApplicationsQuery(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
query(${param.toString().replaceAll('{',' ').replaceAll('}', ' ')}) {
  allLeagueApplications(${paramType.toString().replaceAll('{',' ').replaceAll('}', ' ')}) {
      edges {
        node {
         id
          league {
          id
          city
          endDate
          leagueId
          name
          startDate
          state
          status
          country
          createdAt
          description
          level
          updatedAt
        }
        applicant {
          userId
        }
        status
      }
    }
  }
}
''';
}


//20220313
final allLeagueApplications = '''
query (
\$applicant_UserId: UUID,
\$league_City: String!, 
\$league_State: String!) {

  allLeagueApplications(
    applicant_UserId: \$applicant_UserId,
    league_City: \$league_City,
    league_State: \$league_State) {
      edges {
        node {
         id
          league {
          id
          city
          endDate
          leagueId
          name
          startDate
          state
          status
          country
          createdAt
          description
          level
          updatedAt
        }
        applicant {
          userId
        }
        status
      }
    }
  }
}
''';