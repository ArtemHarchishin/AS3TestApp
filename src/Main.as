package
{
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.utils.Dictionary;
	
	public class Main extends Sprite
	{
		public function Main()
		{
			if (stage)
			{
				initialize();
			} else
			{
				addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			}
		}
		
		private function initialize():void
		{
//			bitwiseOp();
//			castOp();
//			dictionary();
//			vector();
			NaNOp();
		}
		
		private function NaNOp():void
		{
			var s:String = "0";
			var a:Number = parseInt(s);
			trace(Boolean(a));
		}
		
		private function vector():void
		{
			var vec:Vector.<String> = new Vector.<String>();
			vec.push("a");
			vec.push("b");
			vec.push("c");
			vec.push("d");
			
			trace(vec);
			
			var val:String;
			for each (val in vec)
			{
				vec.removeAt(vec.indexOf(val));
			}
			
			trace(vec.length ? vec : "vec is empty" );
			
			vec.push("a");
			vec.push("b");
			vec.push("c");
			vec.push("d");
			
			trace(vec);
			
			var backup:Vector.<String> = vec;
			
			for (var i:int = 0; i < vec.length; i++)
			{
				val = vec[i];
				vec.splice(i, 1);
				i--;
			}
			
			trace(vec.length ? vec : "vec is empty", backup);
			
			vec.push("a");
			vec.push("b");
			vec.push("c");
			vec.push("d");
			
			trace(vec);
			trace(vec.length || false);
			
			for (i = vec.length - 1; i >= 0; i--)
			{
				val = vec[i];
				vec.splice(i, 1);
			}
			
			trace(vec.length ? vec : "vec is empty" );
		}
		
		private function dictionary():void
		{
			var dict:Dictionary = new Dictionary();
			dict["a"] = 1;
			dict["b"] = 2;
			dict["c"] = 3;
			dict["d"] = 4;
			
			for each (var dictElement:int in dict)
			{
				trace(dictElement);
			}
			
			for (var dictKey:String in dict)
			{
				trace(dictKey);
			}
		}
		
		private function castOp():void
		{
			var a:A = new A();
			var b:B = new B();
			var ab:AB = new AB();
			var cb:B;
			var ca:A;
			
			/* cb = B(a); // <- Error */
			
			cb = B(ab);
			
			/*ca = A(ab); // <- Error */
			
			var bool:Boolean;
			trace(int(bool), int(!bool));
		}
		
		private function bitwiseOp():void
		{
			var foo:Boolean = false;
			foo &&= false;
			trace("foo = " + foo);
			foo = foo && true;
			trace("foo = " + foo);
			
			var baz:Boolean = false;
			foo = false;
			baz &&= !foo && true;
			trace("baz = " + baz);
			baz = baz && !foo && true;
			trace("baz = " + baz);
			
			foo = false;
			baz = int(!foo) && int(true);
			trace("baz = " + baz);
			baz = int(baz) & int(!foo) && int(true);
			trace("baz = " + baz);
			
//			foo = false;
//			baz &= !foo && true; // Error:(48, 0) [AS3TestApp-debug (module AS3TestApp)]:
			// Implicit coercion of a value of type Boolean to an unrelated type Number.
//			trace("baz = " + baz);
			
			var cCanBuy:Boolean = false;
			trace("1 - cCanBuy = ", cCanBuy, ", isActive return false");
			cCanBuy &&= isActive(false);
			trace("cCanBuy = ", cCanBuy);
			
			cCanBuy = true;
			trace("2 - cCanBuy = ", cCanBuy, ", isActive return true");
			cCanBuy &&= isActive(true);
			trace("cCanBuy = ", cCanBuy);
			
			cCanBuy = false;
			trace("3 - cCanBuy = ", cCanBuy, ", isActive return true");
			cCanBuy &&= isActive(true);
			trace("cCanBuy = ", cCanBuy);
			
			cCanBuy = true;
			trace("4 - cCanBuy = ", cCanBuy, ", isActive return false");
			cCanBuy &&= isActive(false);
			trace("cCanBuy = ", cCanBuy);
			
			var gCanBuy:Boolean = false;
			var sCanBuy:Boolean = false;
			trace("1 - sCanBuy = ", sCanBuy, ", gCanBuy = ", gCanBuy);
			gCanBuy ||= sCanBuy;
			trace("gCanBuy = ", gCanBuy);
			
			gCanBuy = true;
			sCanBuy = false;
			trace("2 - sCanBuy = ", sCanBuy, ", gCanBuy = ", gCanBuy);
			gCanBuy ||= sCanBuy;
			trace("gCanBuy = ", gCanBuy);
			
			gCanBuy = true;
			sCanBuy = true;
			trace("3 - sCanBuy = ", sCanBuy, ", gCanBuy = ", gCanBuy);
			gCanBuy ||= sCanBuy;
			trace("gCanBuy = ", gCanBuy);
			
			gCanBuy = false;
			sCanBuy = true;
			trace("4 - sCanBuy = ", sCanBuy, ", gCanBuy = ", gCanBuy);
			gCanBuy ||= sCanBuy;
			trace("gCanBuy = ", gCanBuy);
		}
		
		private function isActive(retVal:Boolean):Boolean
		{
			trace("isActive()");
			return retVal;
		}
		
		private function addedToStageHandler(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			initialize();
		}
	}
}
