const String SUCCESS_MESSAGE = " You will be contacted by us very soon.";

//Add rating from service side
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
    rating
    picture
  }
}

""";

final leagueStatus = '''
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
      loss
      picture
      rating
      total
      userId
      userName
      won
    }
  }
}
''';

//20220315
String allLeagueApplicationsQuery(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
query(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
  allLeagueApplications(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
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

String allUsers(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
  query(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
  allUsers(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
    edges {
      node {
        userId
        aboutMe
        active
        city
        country
        dateJoined
        deleted
        email
        dob
        firstName
        gender
        isActive
        id
        isStaff
        lastLogin
        lastName
        phone
        picture
        rating
        state
      }
    }
  }
}
''';
}

// query(${param.toString().replaceAll('{', ' ').replaceAll('}', ' ')}) {
// allMessaging(${paramType.toString().replaceAll('{', ' ').replaceAll('}', ' ')})
String allMessaging(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
  query(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
  allMessaging(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
      edges {
      node {
        createdAt
        id
        message
        messageId
        updatedAt
        recipient {
          city
          country
          firstName
          id
          lastName
          picture
          rating
          userId
          state
          active
        }
        sender {
          city
          country
          firstName
          id
          lastName
          picture
          rating
          userId
          state
          active
        }
      }
    } 
  }
}
''';
}

String allMatches(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      query allMatches(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          allMatches(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
              edges {
                 node {
                   id
                   startDate
                   court
                   playerOne {
                     userId
                     aboutMe
                     active
                     city
                     country
                     dateJoined
                     deleted
                     email
                     dob
                     firstName
                     gender
                     isActive
                     id
                     isStaff
                     lastLogin
                     lastName
                     phone
                     picture
                     rating
                     state
                   }
                   playerTwo {
                     userId
                     aboutMe
                     active
                     city
                     country
                     dateJoined
                     deleted
                     email
                     dob
                     firstName
                     gender
                     isActive
                     id
                     isStaff
                     lastLogin
                     lastName
                     phone
                     picture
                     rating
                     state
                   }
                   matchSet(first: 10) {
                     edges {
                       node {
                         id
                         playerOneScore
                         playerTwoScore
                         matchSetId
                         match {
                           court
                           id
                         }
                       }
                     }
                   }
                 }
               }
          }
      }
''';
}

// Add additional param in match =
// matchId
// startDate
// createdAt
// endDate


//Mutations
String SubmitScore(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
    mutation (${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
      submitScore(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
        submitScore {
          court
          createdAt
          endDate
          format
          id
          matchId
          matchStatus
          startDate
          updatedAt
        }
      }
    }
  ''';
}

String RegisterPlayer(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation Register(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          register(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
                success
                errors
                refreshToken
                token
          }
      }
''';
}

String sendPasswordResetEmail(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation SendPasswordResetEmail(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          sendPasswordResetEmail(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
                success
                errors
          }
      }
''';
}

String passwordReset(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation passwordReset(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          passwordReset(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
                success
                errors
          }
      }
''';
}

String passwordChange(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation passwordChange(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          passwordChange(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
                success
                refreshToken
                errors
                token
          }
      }
''';
}

String resendActivationEmail(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation resendActivationEmail(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          resendActivationEmail(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
                success
                errors
          }
      }
''';
}

String tokenAuth(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation tokenAuth(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          tokenAuth(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
               refreshToken
               success
               token
               unarchiving
               errors
               user {
                  userId
                  aboutMe
                  active
                  city
                  country
                  dateJoined
                  deleted
                  email
                  dob
                  firstName
                  gender
                  isActive
                  id
                  isStaff
                  lastLogin
                  lastName
                  phone
                  picture
                  rating
                  state
               }
          }
      }
''';
}

String updateAccount(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation updateAccount(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          updateAccount(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
            errors
            success   
      }
     }
''';
}

// const String uploadImage = r'''
// mutation($file: Upload!) {
//   upload(file: $file)
// }
// ''';

String uploadImage(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
    mutation(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
      uploadImage(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)})
      {
        success
      }
    }
''';
}

String revokeToken(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation revokeToken(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          revokeToken(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
           errors
           revoked
           success   
      }
    }
''';
}

String sendMessage(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation sendMessage(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          sendMessage(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
              messaging {
                 createdAt
                 id
                 message
                 messageId
                 updatedAt
                 recipient {
                    userId
                    email
                    firstName
                    lastName
                 }
                 sender {
                    userId
                    email
                    firstName
                    lastName
                 }
             }  
          }
      }
''';
}

String userQuery(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation userQuery(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          userQuery(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
              userQuery {
                createdAt
                id
                updatedAt
                message
             }  
          }
      }
''';
}

String leagueApplication(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation leagueApplication(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          leagueApplication(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
              leagueApplication {
                id
                leagueAppId
                status
                message
              } 
          }
      }
''';
}

String verifyToken(Map<String, dynamic>? param, Map<String, dynamic>? paramType) {
  return '''
      mutation verifyToken(${param.toString().trim().substring(1, param.toString().trim().length - 1)}) {
          verifyToken(${paramType.toString().trim().substring(1, paramType.toString().trim().length - 1)}) {
              errors
              payload
              success
          }
      }
''';
}
