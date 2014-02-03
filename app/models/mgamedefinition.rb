class Mgamedefinition < ActiveRecord::Base
  attr_accessible :formatid, :typeid, :min_players, :max_players, :entryfee, :drop_pts, :maxscore, :usebot, :note, :min_ante, :max_ante, :min_buyin, :max_buyin, :min_stake, 
  :max_stake, :gametimer
  
  # def change
   # attr_accessible execute "CREATE TABLE `mgamedefinition` (id integer NOT NULL AUTO_INCREMENT,`formatid` integer NOT NULL, `typeid` integer NOT NULL,
  # `min_players` integer DEFAULT '0',`max_players` integer DEFAULT '0',`entryfee` float DEFAULT NULL,`drop_pts` integer DEFAULT '25',
  # `max_score` integer DEFAULT '0',`usebot` integer NOT NULL DEFAULT '1',`notes` varchar(128) DEFAULT NULL,`min_ante` integer DEFAULT NULL,
  # `max_ante` integer DEFAULT NULL,`min_buyin` integer DEFAULT NULL,`max_buyin` integer DEFAULT NULL, `min_stake` integer DEFAULT NULL,`max_stake` integer DEFAULT NULL,
  # `gametimer` integer DEFAULT '1',  PRIMARY KEY (`id`), KEY `gametypeid_idx` (`typeid`) USING BTREE) ENGINE=InnoDB";
  # end
end
