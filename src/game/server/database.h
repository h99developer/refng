#include <string>
#include <vector>
#include <iostream>
#include <optional>

void addPlayer(const std::string& playerName, int kills);
void addKills(const std::string& playerName, int killsToAdd);
std::vector<std::pair<std::string, int>> getTopPlayers();
void getPlayerData(const std::string& playerName);