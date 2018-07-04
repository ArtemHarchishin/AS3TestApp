package
{
	public class PATTERN_UNIT
	{
		public static const none:int = -1;
		// цветные фишки
		public static const c1:int = 0;
		public static const c2:int = 1;
		public static const c3:int = 2;
		public static const c4:int = 3;
		public static const c5:int = 4;
		public static const c6:int = 5;
		// случайная цветная фишка
		public static const Cr:int = 6;
		// петарда, бомба, динамит, tnt, молния
		public static const Fc:int = 7;
		public static const Bb:int = 8;
		public static const Dn:int = 9;
		public static const Tn:int = 10;
		public static const Li:int = 11;
		// Баночка с медом
		public static const BoxWithPlague:int = 12;
		// Желуди
		public static const Trash:int = 13;
		// Салют
		public static const HelpBonus:int = 14;
		public static const HelpBonus1:int = 15;
		public static const HelpBonus2:int = 16;
		public static const HelpBonus3:int = 17;
		public static const HelpBonus4:int = 18;
		public static const HelpBonus5:int = 19;
		public static const HelpBonus6:int = 20;
		// Баночка с вареньем
		public static const Jam:int = 21;
		public static const Jam1:int = 22;
		public static const Jam2:int = 23;
		public static const Jam3:int = 24;
		public static const Jam4:int = 25;
		public static const Jam5:int = 26;
		public static const Jam6:int = 27;
		// Тайм бомба
		public static const TimeBomb:int = 28;
		public static const TimeBomb1:int = 29;
		public static const TimeBomb2:int = 30;
		public static const TimeBomb3:int = 31;
		public static const TimeBomb4:int = 32;
		public static const TimeBomb5:int = 33;
		public static const TimeBomb6:int = 34;
		// Фишка загадка
		public static const Surprise:int = 35;
		public static const Surprise1:int = 36;
		public static const Surprise2:int = 37;
		public static const Surprise3:int = 38;
		public static const Surprise4:int = 39;
		public static const Surprise5:int = 40;
		public static const Surprise6:int = 41;
		// Лапка для собаки
		public static const DogPaw:int = 42;
		public static const DogPaw1:int = 43;
		public static const DogPaw2:int = 44;
		public static const DogPaw3:int = 45;
		public static const DogPaw4:int = 46;
		public static const DogPaw5:int = 47;
		public static const DogPaw6:int = 48;
		// Лимонад
		public static const Lemonade:int = 49;
		
		public static function fromString(s:String, def:int = none):int
		{
			if (s in PATTERN_UNIT)
			{
				return PATTERN_UNIT[s];
			}
			return def;
		}
	}
}
