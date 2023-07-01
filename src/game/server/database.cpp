#include <iostream>
#include <pqxx/pqxx> 
#include <string>
#include <vector>
#include <optional>

using namespace std;
using namespace pqxx;

void addPlayer(const std::string& playerName, int kills)
{
  try {
    pqxx::connection conn("dbname=tw user=tw password=OwnLittleWorld hostaddr=193.124.113.236 port=5432");
    if (conn.is_open()) {
      pqxx::work txn(conn);

      
      std::string sql = "SELECT COUNT(*) FROM players WHERE player = '" + playerName + "'";

      // выполняем запрос
      pqxx::result result = txn.exec(sql);

      
      int count = result[0][0].as<int>();
      if (count > 0) {
        txn.abort();
      } else {
        
        sql = "INSERT INTO players (player, kills) VALUES ('" + playerName + "', " + std::to_string(kills) + ")";

        // выполняем запрос
        txn.exec(sql);

        txn.commit();
      }
    } else {
      std::cerr << "Failed to open database." << std::endl;
    }
  } catch (const std::exception& e) {
    std::cerr << e.what() << std::endl;
  }
}

void addKills(const std::string& player, int kills_to_add)
{
  try
  {
    pqxx::connection conn("dbname=tw user=tw password=OwnLittleWorld hostaddr=193.124.113.236 port=5432");
    pqxx::work txn(conn);
    
    txn.exec("UPDATE players SET kills = kills + " + std::to_string(kills_to_add) +
             " WHERE player = " + txn.quote(player));
             
    txn.commit();
    
  }
  catch (const std::exception& e)
  {
    std::cerr << "Ошибка при обновлении количества убийств для игрока " << player << ": " << e.what() << std::endl;
  }
}


std::vector<std::pair<std::string, int>> getTopPlayers()
{
  std::vector<std::pair<std::string, int>> topPlayers;

  try {
    pqxx::connection conn("dbname=tw user=tw password=OwnLittleWorld hostaddr=193.124.113.236 port=5432");
    if (conn.is_open()) {

      pqxx::work txn(conn);

      
      std::string sql = "SELECT player, kills FROM players ORDER BY kills DESC LIMIT 10";

      
      pqxx::result result = txn.exec(sql);

      
      for (pqxx::result::const_iterator row = result.begin(); row != result.end(); ++row) {
        topPlayers.push_back(std::make_pair(row[0].as<std::string>(), row[1].as<int>()));
      }
    } else {
      std::cerr << "Failed to open database." << std::endl;
    }
  } catch (const std::exception& e) {
    std::cerr << e.what() << std::endl;
  }

  return topPlayers;
}

void getPlayerData(const std::string& playerName)
{
  try {
    pqxx::connection conn("dbname=tw user=tw password=OwnLittleWorld hostaddr=193.124.113.236 port=5432");
    if (conn.is_open()) {

      pqxx::work txn(conn);

      
      std::string sql = "SELECT player, kills, rank FROM "
                        "(SELECT player, kills, RANK() OVER (ORDER BY kills DESC) AS rank FROM players) AS player_rank "
                        "WHERE player = " + txn.quote(playerName);

      
      pqxx::result result = txn.exec(sql);

      
      if (result.size() > 0) {
        
        std::cout << "Player: " << result[0][0].as<std::string>() << std::endl;
        std::cout << "Kills: " << result[0][1].as<int>() << std::endl;
        std::cout << "Rank: " << result[0][2].as<int>() << std::endl;
      } else {
        std::cout << "Player not found." << std::endl;
      }
    } else {
      std::cerr << "Failed to open database." << std::endl;
    }
  } catch (const std::exception& e) {
    std::cerr << e.what() << std::endl;
  }
}