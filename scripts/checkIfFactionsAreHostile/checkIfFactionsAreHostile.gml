charac1 = argument0;
charac2 = argument1;

var hostile = false;

//TODO: Add reputation system
if(
(charac1.faction == "Pirate" && charac2.faction == "Neutral") ||
(charac1.faction == "Pirate" && charac2.faction == "Player") ||
(charac1.faction == "Pirate" && charac2.faction == "AIP") ||
(charac1.faction == "Pirate" && charac2.faction == "UEI") ||
(charac1.faction == "Pirate" && charac2.faction == "Centralized Power") ||
(charac1.faction == "Pirate" && charac2.faction == "Unknowable Horror")
||
(charac1.faction == "Neutral" && charac2.faction == "Pirate") ||
(charac1.faction == "Neutral" && charac2.faction == "Unknowable Horror") 
||
(charac1.faction == "Pirate Trader" && charac2.faction == "Unknowable Horror") 
||
(charac1.faction == "AIP" && charac2.faction == "Centralized Power") ||
(charac1.faction == "AIP" && charac2.faction == "Pirate") ||
(charac1.faction == "AIP" && charac2.faction == "Unknowable Horror")
||
(charac1.faction == "UEI" && charac2.faction == "Centralized Power") ||
(charac1.faction == "UEI" && charac2.faction == "Pirate") ||
(charac1.faction == "UEI" && charac2.faction == "Unknowable Horror")
||
(charac1.faction == "Centralized Power" && charac2.faction == "UEI") ||
(charac1.faction == "Centralized Power" && charac2.faction == "AIP") ||
(charac1.faction == "Centralized Power" && charac2.faction == "Pirate") ||
(charac1.faction == "Centralized Power" && charac2.faction == "Unknowable Horror")
||
(charac1.faction == "Unknowable Horror" && charac2.faction == "Neutral") ||
(charac1.faction == "Unknowable Horror" && charac2.faction == "Player") ||
(charac1.faction == "Unknowable Horror" && charac2.faction == "AIP") ||
(charac1.faction == "Unknowable Horror" && charac2.faction == "UEI") ||
(charac1.faction == "Unknowable Horror" && charac2.faction == "Centralized Power") ||
(charac1.faction == "Unknowable Horror" && charac2.faction == "Pirate") ||
(charac1.faction == "Unknowable Horror" && charac2.faction == "Pirate Trader")
||
(charac1.faction == "Player" && charac2.faction == "Pirate") ||
(charac1.faction == "Player" && charac2.faction == "Unknowable Horror") 
){
	hostile = true;
}

return hostile;