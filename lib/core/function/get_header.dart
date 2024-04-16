//  Map<String, String> getHeaders({withAuth = false}) {
//     Map<String, String> headers;
//     headers = {
//       "Accept": "application/json",
//     };
    
//     if (globals.isLogin) {
//       headers["Authorization"] = "Bearer " + globals.token;
//     }
//     return headers;
//   }