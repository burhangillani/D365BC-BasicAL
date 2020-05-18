codeunit 90532 "SBG My Subscriber"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"SBG My Publisher", 'OnAddressLineChanged', '', false, false)]
    local procedure CheckAddressLine(line: Text[100]);
    begin
        if (StrPos(ad))
    end;

}


