package org.swiftsuspenders.injectionresults
{
   import org.swiftsuspenders.Injector;
   
   public class InjectSingletonResult extends InjectionResult
   {
       
      
      private var m_responseType:Class;
      
      private var m_response:Object;
      
      public function InjectSingletonResult(responseType:Class)
      {
         super();
         this.m_responseType = responseType;
      }
      
      override public function getResponse(injector:Injector) : Object
      {
         return this.m_response = this.m_response || this.createResponse(injector);
      }
      
      override public function equals(otherResult:InjectionResult) : Boolean
      {
         if(otherResult == this)
         {
            return true;
         }
         if(!(otherResult is InjectSingletonResult))
         {
            return false;
         }
         var castedResult:InjectSingletonResult = InjectSingletonResult(otherResult);
         return castedResult.m_response == this.m_response && castedResult.m_responseType == this.m_responseType;
      }
      
      private function createResponse(injector:Injector) : Object
      {
         return injector.instantiate(this.m_responseType);
      }
   }
}
