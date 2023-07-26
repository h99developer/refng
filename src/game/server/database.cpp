#include <iostream>
#include <pqxx/pqxx> 
#include <vector>
#include <optional>
#include <chrono>
#include <iomanip>
#include <sstream>
#include <string>
#include <engine/shared/config.h>
#include <algorithm>

using namespace std;
using namespace pqxx;

std::string psqldbname = "";
std::string psqluser = "";
std::string psqlpassword = "";
std::string psqlhost = "";
std::string psqlport = "";


void DatabaseInit(std::string dbname, std::string user, std::string password, std::string host, std::string port)
{

  psqldbname = dbname;
  psqluser = user;
  psqlpassword = password;
  psqlhost = host;
  psqlport = port;

  if (dbname == "None")
  {
    if (user != "None")
    {
      psqldbname = user;
    }
  } 

  if (user == "None")
  {
    if (dbname != "None")
    {
      psqluser = dbname;

    }
  }

}

int getKills(const std::string& player) {
  std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);
  pqxx::connection conn(dbconn);
  pqxx::work txn(conn);
  pqxx::result res = txn.exec("SELECT kills FROM players WHERE player ='" + player + "'");
  return res[0][0].as<int>();
}

void addPlayer(const std::string& playerName, int kills)
{
  std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);
    try {
        pqxx::connection conn(dbconn);
        if (conn.is_open()) {
            pqxx::work txn(conn);
    
            std::string sql = "SELECT COUNT(*) FROM players WHERE player = '" + playerName + "'";
    
            // выполняем запрос
            pqxx::result result = txn.exec(sql);

            // std::string Rank = GetRank(kills);
    
            int count = result[0][0].as<int>();
            if (count > 0) {
                txn.abort();
            } else {
                sql = "INSERT INTO players (player, kills, normal_spikes, gold_spikes, green_spikes, purple_spikes, team_spikes, false_spikes, shots, hit) VALUES ('" + playerName + "', " + std::to_string(kills) + ", " + std::to_string(0) + ", " + std::to_string(0) + ", " + std::to_string(0) + ", " + std::to_string(0) + ", " + std::to_string(0) + ", " + std::to_string(0) + ", " + std::to_string(0) + ", " + std::to_string(0) + ")";
    
                // выполняем запрос
                txn.exec(sql);
    
                txn.commit();
            }
        } else {
            std::cerr << "Failed to open database." << std::endl;
        }
    } catch (const std::exception& e) {
        std::cerr << "Ошибка addPlayers"<< std::endl;
    }
}

void addKills(const std::string& player, int kills_to_add)
{
  std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);
  try
  {
    pqxx::connection conn(dbconn);
    pqxx::work txn(conn);
    
    txn.exec("UPDATE players SET kills = kills + " + std::to_string(kills_to_add) +
             " WHERE player = " + txn.quote(player));
             
    txn.commit();
    
  }
  catch (const std::exception& e)
  {
    std::cerr << "Ошибка addKills"<< std::endl;
  }
}

void addShotsAndHits(const std::string& player, int shots_to_add, int hits_to_add)
{
  std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);
  try
  {
    pqxx::connection conn(dbconn);
    pqxx::work txn(conn);
    
    txn.exec("UPDATE players SET shots = shots + " + std::to_string(shots_to_add) +
             " WHERE player = " + txn.quote(player));

    txn.exec("UPDATE players SET hit = hit + " + std::to_string(hits_to_add) +
             " WHERE player = " + txn.quote(player));
             
    txn.commit();
    
  }
  catch (const std::exception& e)
  {
    std::cerr << "Ошибка addShotsAndHits"<< std::endl;
  }
}

void addSpikes(const std::string& player, int normal_spikes, int gold_spikes, int green_spikes, int purple_spikes, int team_spikes, int false_spikes)
{
  std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);
  try
  {
    pqxx::connection conn(dbconn);
    pqxx::work txn(conn);
    
    txn.exec("UPDATE players SET normal_spikes = normal_spikes + " + std::to_string(normal_spikes) +
             " WHERE player = " + txn.quote(player));

    txn.exec("UPDATE players SET gold_spikes = gold_spikes + " + std::to_string(gold_spikes) +
             " WHERE player = " + txn.quote(player));

    txn.exec("UPDATE players SET green_spikes = green_spikes + " + std::to_string(green_spikes) +
             " WHERE player = " + txn.quote(player));

    txn.exec("UPDATE players SET purple_spikes = purple_spikes + " + std::to_string(purple_spikes) +
             " WHERE player = " + txn.quote(player));

    txn.exec("UPDATE players SET team_spikes = team_spikes + " + std::to_string(team_spikes) +
             " WHERE player = " + txn.quote(player));

    txn.exec("UPDATE players SET false_spikes = false_spikes + " + std::to_string(false_spikes) +
             " WHERE player = " + txn.quote(player));
             
    txn.commit();
    
  }
  catch (const std::exception& e)
  {
    std::cerr << "Ошибка addSpikes"<< std::endl;
  }
}


//std::vector<std::pair<std::string, int>> getTopPlayers()
//{
//  std::vector<std::pair<std::string, int>> topPlayers;
//
//  try {
//    pqxx::connection conn("dbname=fng user=postgres password=855429Asd hostaddr=127.0.0.1 port=5432");
 //   if (conn.is_open()) {
//
 //     pqxx::work txn(conn);

      
  //    std::string sql = "SELECT player, kills FROM players ORDER BY kills DESC LIMIT 10";

      
  //    pqxx::result result = txn.exec(sql);

      
  //    for (pqxx::result::const_iterator row = result.begin(); row != result.end(); ++row) {
   //     topPlayers.push_back(std::make_pair(row[0].as<std::string>(), row[1].as<int>()));
   //   }
  //  } else {
   //   std::cerr << "Не удалось открыть базу данных." << std::endl;
   // }
//} catch (const std::exception& e) {
 //   std::cerr << "Ошибка getTopPlayers"<< std::endl;
 // }

 // return topPlayers;
//}

std::vector<std::pair<std::string, int>> getTopPlayers(const std::string& column)
{
  std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);
    std::vector<std::pair<std::string, int>> topPlayers;
    try {
        pqxx::connection conn(dbconn);
        if (conn.is_open()) {
            pqxx::work txn(conn);
            std::string sql = "SELECT player, " + column + " FROM players ORDER BY " + column + " DESC LIMIT 10";
            pqxx::result result = txn.exec(sql);
            for (const auto& row : result) {
                std::string playerName = row[0].as<std::string>();
                int value = row[1].as<int>();
                topPlayers.push_back(std::make_pair(playerName, value));
            }
        } else {
            std::cerr << "Failed to open database." << std::endl;
        }
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }
    return topPlayers;
}

void getPlayerData(const std::string& playerName)
{
  std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);
  try {
    pqxx::connection conn(dbconn);
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
      std::cerr << "Не удалось открыть базу данных"<< std::endl;
    }
  } catch (const std::exception& e) {
    std::cerr << "Ошибка getPlayerData"<< std::endl;
  }
}

std::string GetDate()
{
  auto now = std::chrono::system_clock::now();

  std::time_t time = std::chrono::system_clock::to_time_t(now);
  std::tm tm = *std::localtime(&time);

  std::ostringstream oss;
  oss << std::setfill('0')
      << std::setw(2) << tm.tm_mday << '.'
      << std::setw(2) << tm.tm_mon + 1 << '.'
      << std::setw(2) << tm.tm_year - 100 << ' '
      << std::setw(2) << tm.tm_hour << ':'
      << std::setw(2) << tm.tm_min;

    
  std::string date_time_str = oss.str();

  return date_time_str;
}

bool newSession(std::string nick, std::string ip)
{
  std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);
  std::cout << dbconn;
  try {
    pqxx::connection conn(dbconn);
    if (conn.is_open())
    {
      pqxx::work txn(conn);
      std::string Date = GetDate();
      std::string sql = "INSERT INTO sessions (nick, ip, entered_in, out_in) VALUES ('" + nick + "', " + "'" + ip + "'" + ", '" + Date + "', 'None')";

      txn.exec(sql);

      txn.commit();
      

      return true;
    }
    else {
      std::cerr << "Failed to open database." << std::endl;
    }
  } catch (const std::exception& e) {
    std::cerr << "Ошибка подключение к базе данных: " << e.what() << std::endl;
    return false;
  }
}

void closeSession(const std::string& ip) {
  std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);
    try {
        pqxx::connection conn(dbconn);

        pqxx::work txn(conn);

        std::string Date = GetDate();

        std::string sql = "UPDATE sessions SET out_in = '" + Date + "' WHERE ip = '" + ip + "' AND out_in = 'None'";
        txn.exec(sql);

        txn.commit();
    } catch (const std::exception& e) {
        std::cerr << "Ошибка closeSession: " << e.what() << std::endl;
    }
}

struct PlayerStats {
    std::string name;
    int shots;
    int hits;
    int kills;
    double shots_per_hit;
    double shots_per_kill;
};

std::vector<PlayerStats> get_top_accuracy() {
    std::vector<PlayerStats> players;

    std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);

    pqxx::connection conn(dbconn);
    if (!conn.is_open()) {
        std::cerr << "Error: can't connect to PostgreSQL database" << std::endl;
        return players;
    }

    const char *query = "SELECT player, shots, kills, CASE WHEN kills = 0 THEN NULL ELSE shots::float/kills END AS shots_per_kill FROM players WHERE kills > 0 ORDER BY shots_per_kill DESC LIMIT 10";

      // SELECT player, shots, kills, CASE WHEN kills = 0 THEN NULL ELSE shots::float/kills END AS shots_per_kill FROM players WHERE kills > 0 ORDER BY shots_per_kill DESC LIMIT 10

    pqxx::work txn(conn);
    pqxx::result result = txn.exec(query);

    for (auto row : result) {
        PlayerStats player;
        player.name = row["player"].as<std::string>();
        player.shots = row["shots"].as<int>();
        player.kills = row["kills"].as<int>();
        if (row["shots_per_kill"].is_null()) {
            player.shots_per_kill = 0;
        } else {
            player.shots_per_kill = row["shots_per_kill"].as<double>();
        }
        players.push_back(player);
    }

    txn.commit();
    conn.disconnect();

    return players;
}

std::vector<std::string> GetUsersByIP(const std::string& ip_address)
{
    std::vector<std::string> users;
    std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);
    try 
    {

        pqxx::connection conn(dbconn);


        pqxx::work txn(conn);


        std::string sql = "SELECT nick FROM sessions WHERE ip = " + txn.quote(ip_address);


        pqxx::result res = txn.exec(sql);


        for (auto row : res)
        {

            std::string username = row[0].as<std::string>();
            if (std::find(users.begin(), users.end(), username) == users.end())
            {

                users.push_back(username);
            }
        }


        txn.commit();
    }
    catch (const std::exception& e)
    {

        std::cerr << "Error: " << e.what() << std::endl;
    }

    return users;
}

std::string GetRank(
  int kills
)
{
  std::string Rank;
  if (kills < 100) {
    Rank = "Без ранга";
  }
  if (kills >= 100 && kills < 300) {
    Rank = "Клоун";
  }
  if (kills >= 300 && kills < 500) {
    Rank = "Малой";
  }
  if (kills >= 500 && kills < 800) {
    Rank = "Чудак";
  }
  if (kills >= 800 && kills < 1100) {
    Rank = "Робкий";
  }
  if (kills >= 1100 && kills < 1400) {
    Rank = "Новичок";
  }
  if (kills >= 1400 && kills < 1800) {
    Rank = "Пупа"; 
  }
  if (kills >= 1800 && kills < 2200) {
    Rank = "Лупа";
  }
  if (kills >= 2200 && kills < 2600) {
    Rank = "Рядовой";
  }
  if (kills >= 2600 && kills < 3000) {
    Rank = "Шкипер";
  }
  if (kills >= 3000 && kills < 3500) {
    Rank = "Проворный"; 
  }
  if (kills >= 3500 && kills < 4000) {
    Rank = "Буйный";
  }
  if (kills >= 4000 && kills < 4500) {
    Rank = "Мамкин мародер";
  }
  if (kills >= 4500 && kills < 5000) {
    Rank = "Болгарин";
  }
  if (kills >= 5000 && kills < 5600) {
    Rank = "Боец";
  }
  if (kills >= 5600 && kills < 6200) {
    Rank = "Самурай";
  }
  if (kills >= 6200 && kills < 6900) {
    Rank = "Шаолинь";
  }
  if (kills >= 6900 && kills < 7600) {
    Rank = "Жнец";
  }
  if (kills >= 7600 && kills < 8400) {
    Rank = "Охотник на колобков";
  }
  if (kills >= 8400 && kills < 9200) {
    Rank = "Хищник"; 
  }
  if (kills >= 9200 && kills < 10100) {
    Rank = "Блэйд";
  }
  if (kills >= 10100 && kills < 11000) {
    Rank = "Лазерный алхимик";
  }
  if (kills >= 11000 && kills < 12000) {
    Rank = "Повелитель фризов";
  }
  if (kills >= 12000 && kills < 13000) {
    Rank = "Аннигиляторная пушка";
  }
  if (kills >= 13000 && kills < 15000) {
    Rank = "Баба Яга";
  }
  if (kills >= 15000 && kills < 17000) {
    Rank = "Штурмовик";
  }
  if (kills >= 17000 && kills < 20000) {
    Rank = "Падаван";
  }
  if (kills >= 20000 && kills < 23000) {
    Rank = "Джедай";
  }
  if (kills >= 23000 && kills < 27000) {
    Rank = "Ювелир";
  }
  if (kills >= 27000 && kills < 31000) {
    Rank = "Несокрушимый";
  }
  if (kills >= 31000 && kills < 35000) {
    Rank = "Титан";
  }
  if (kills >= 35000 && kills < 40000) {
    Rank = "Батя";
  }
  if (kills >= 40000 && kills < 45000) {
    Rank = "Колосажатель";
  }
  if (kills >= 45000 && kills < 50000) {
    Rank = "Легендарный колобок";
  }
  if (kills >= 50000) {
    Rank = "Повелитель арены";
  }

  return Rank;
}

void updateRank(const std::string& nickname) {
  std::string dbconn = "dbname=" + static_cast<std::string>(psqldbname) + " user=" + static_cast<std::string>(psqluser) + " password=" + static_cast<std::string>(psqlpassword) + " hostaddr=" + static_cast<std::string>(psqlhost) + " port=" + static_cast<std::string>(psqlport);
    try {
        pqxx::connection conn(dbconn);

        pqxx::work txn(conn);

        int kills = getKills(nickname);
        std::string Rank = GetRank(kills);

        std::string sql = "UPDATE players SET lrank = " + txn.quote(Rank) + " WHERE player = " + txn.quote(nickname) + "";
        txn.exec(sql);

        txn.commit();
    } catch (const std::exception& e) {
        std::cerr << "Ошибка updateRank: " << e.what() << std::endl;
    }
}