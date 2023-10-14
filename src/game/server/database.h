#include <string>
#include <vector>
#include <iostream>
#include <optional>
#include <engine/shared/config.h>
#include <algorithm>

struct PlayerStats {
    std::string name;
    int shots;
    int hits;
    int kills;
    double shots_per_hit;
    double shots_per_kill;
};

void addPlayer(const std::string& playerName, int kills);
void addKills(const std::string& playerName, int killsToAdd);
void addSpikes(const std::string& player, int normal_spikes, int gold_spikes, int green_spikes, int purple_spikes, int team_spikes, int false_spikes);
std::vector<std::pair<std::string, int>> getTopPlayers(const std::string& column);
void getPlayerData(const std::string& playerName);
bool newSession(std::string nick, std::string ip);
void closeSession(const std::string& ip);
void addShotsAndHits(const std::string& player, int shots_to_add, int hits_to_add);
std::vector<PlayerStats> get_top_accuracy();
void DatabaseInit(std::string dbname, std::string user, std::string password, std::string host, std::string port);
std::vector<std::string> GetUsersByIP(const std::string& ip_address);
void updateRank(const std::string& nickname);