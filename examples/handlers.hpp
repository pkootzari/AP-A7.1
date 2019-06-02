#ifndef _MY_HANDLERS_
#define _MY_HANDLERS_

#include "../server/server.hpp"
#include <cstdlib> // for rand and srand
#include <ctime>   // for time
#include <iostream>
#include "manager.h"
#include "user.h"
#include "publisher.h"
#include "customer.h"

class LoginHnadler : public RequestHandler {
public:
  LoginHnadler(Manager* _manager);
  Response *callback(Request *);
private: 
  Manager* manager;
};

class SignupHandler : public RequestHandler {
public:
  SignupHandler(Manager* _manager);
  Response *callback(Request *);
private:
  Manager* manager;
};

// class RandomNumberHandler : public RequestHandler {
// public:
//   Response *callback(Request *);
// };

// class LoginHandler : public RequestHandler {
// public:
//   Response *callback(Request *);
// };

// class UploadHandler : public RequestHandler {
// public:
//   Response *callback(Request *);
// };

// class ColorHandler : public TemplateHandler {
// public:
//   ColorHandler(std::string filePath);
//   std::map<std::string, std::string> handle(Request *req);
// };

#endif
