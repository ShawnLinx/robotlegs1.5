package org.swiftsuspenders.injectionresults
{
   import org.swiftsuspenders.InjectionConfig;
   import org.swiftsuspenders.Injector;
   
   public class InjectOtherRuleResult extends InjectionResult
   {
       
      
      private var m_rule:InjectionConfig;
      
      public function InjectOtherRuleResult(rule:InjectionConfig)
      {
         super();
         this.m_rule = rule;
      }
      
      override public function getResponse(injector:Injector) : Object
      {
         return this.m_rule.getResponse(injector);
      }
      
      override public function equals(otherResult:InjectionResult) : Boolean
      {
         if(otherResult == this)
         {
            return true;
         }
         if(!(otherResult is InjectOtherRuleResult))
         {
            return false;
         }
         var castedResult:InjectOtherRuleResult = InjectOtherRuleResult(otherResult);
         return castedResult.m_rule == this.m_rule;
      }
   }
}
