#pragma once

#include <filesystem>
#include <map>
#include <string>

extern "C++" void ap_getparents(char *name);

using namespace std;
class LC32Filesystem {

private:
    bool isSubpath(const string& target, const string& base);
    bool pathLeftToRight(vector<string> leftVec, vector<string> rightVec, char *input, char *output);

public:
    void destroy() {
        delete this;
    }

    LC32Filesystem() {}
    void addMountpoint(string guest, string host);
    bool pathGuestToHost(uint32_t inputAddr, char *output);
    bool pathGuestToHost(char *input, char *output);
    bool pathHostToGuest(char *input, uint32_t outputAddr);
    bool pathHostToGuest(char *input, char *output);

    vector<string> guestmpVec;
    vector<string> hostmpVec;
};

