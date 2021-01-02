function calculateMaxHitPoints() {
	return 50+(healthMultiplier/2)*(5*calculateEffectiveSkill(id, "constitution")+calculateEffectiveSkill(id, "strength"));


}
