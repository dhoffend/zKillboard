--



DROP TABLE IF EXISTS `zz_participants`;

CREATE TABLE `zz_participants` (

  `killID` int(32) NOT NULL,

  `solarSystemID` int(16) NOT NULL,

  `regionID` int(16) DEFAULT NULL,

  `dttm` datetime NOT NULL,

  `total_price` decimal(16,2) NOT NULL DEFAULT '0.00',

  `points` mediumint(4) NOT NULL,

  `number_involved` smallint(4) NOT NULL,

  `isVictim` tinyint(1) NOT NULL,

  `shipTypeID` int(16) NOT NULL,

  `groupID` int(16) NOT NULL,

  `vGroupID` int(16) DEFAULT NULL,

  `weaponTypeID` int(16) NOT NULL,

  `shipPrice` decimal(16,2) NOT NULL,

  `damage` int(8) NOT NULL,

  `factionID` int(16) NOT NULL,

  `allianceID` int(16) NOT NULL,

  `corporationID` int(16) NOT NULL,

  `characterID` int(16) NOT NULL,

  `finalBlow` tinyint(1) NOT NULL,

  KEY `isVictim` (`isVictim`),

  KEY `shipTypeID` (`shipTypeID`),

  KEY `factionID` (`factionID`),

  KEY `allianceID` (`allianceID`),

  KEY `corporationID` (`corporationID`),

  KEY `characterID` (`characterID`),

  KEY `groupID` (`groupID`),

  KEY `killID` (`killID`),

  KEY `solarSystemID` (`solarSystemID`),

  KEY `regionID` (`regionID`),

  KEY `vGroupID` (`vGroupID`),

  KEY `total_price` (`total_price`),

  KEY `points` (`points`),

  KEY `number_involved` (`number_involved`),

  KEY `isVictim_2` (`isVictim`,`shipTypeID`),

  KEY `regionID_2` (`regionID`,`isVictim`),

  KEY `allianceID_2` (`allianceID`,`isVictim`),

  KEY `factionID_2` (`factionID`,`isVictim`),

  KEY `characterID_2` (`characterID`,`isVictim`),

  KEY `corporationID_2` (`corporationID`,`isVictim`),

  KEY `allianceID_3` (`allianceID`,`vGroupID`),

  KEY `corporationID_4` (`corporationID`,`vGroupID`),

  KEY `groupID_2` (`groupID`,`shipTypeID`),

  KEY `shipTypeID_2` (`shipTypeID`,`isVictim`),

  KEY `shipTypeID_3` (`shipTypeID`,`isVictim`,`total_price`),

  KEY `groupID_3` (`groupID`,`isVictim`),

  KEY `characterID_4` (`characterID`,`dttm`),

  KEY `dttm` (`dttm`),

  KEY `corporationID_5` (`corporationID`,`dttm`),

  KEY `allianceID_6` (`allianceID`,`dttm`),

  KEY `isVictim_3` (`isVictim`,`dttm`),

  KEY `allianceID_4` (`allianceID`,`isVictim`,`dttm`),

  KEY `shipTypeID_4` (`shipTypeID`,`isVictim`,`dttm`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPRESSED

/*!50100 PARTITION BY RANGE (year(dttm))

(PARTITION y2007 VALUES LESS THAN (2008) ENGINE = InnoDB,

 PARTITION y2008 VALUES LESS THAN (2009) ENGINE = InnoDB,

 PARTITION y2009 VALUES LESS THAN (2010) ENGINE = InnoDB,

 PARTITION y2010 VALUES LESS THAN (2011) ENGINE = InnoDB,

 PARTITION y2011 VALUES LESS THAN (2012) ENGINE = InnoDB,

 PARTITION y2012 VALUES LESS THAN (2013) ENGINE = InnoDB,

 PARTITION y2013 VALUES LESS THAN (2014) ENGINE = InnoDB,

 PARTITION y2014 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;



--

-- Table structure for table `zz_participants_temporary`

