package org.swiftsuspenders.injectionresults
{
   import org.swiftsuspenders.Injector;
   
   public class InjectValueResult extends InjectionResult
   {
       
      
      private var m_value:Object;
      
      public function InjectValueResult(value:Object)
      {
         super();
         this.m_value = value;
      }
      
      override public function getResponse(injector:Injector) : Object
      {
         return this.m_value;
      }
      
      override public function equals(otherResult:InjectionResult) : Boolean
      {
         if(otherResult == this)
         {
            return true;
         }
         if(!(otherResult is InjectValueResult))
         {
            return false;
         }
         var castedResult:InjectValueResult = InjectValueResult(otherResult);
         return castedResult.m_value == this.m_value;
      }
   }
}
