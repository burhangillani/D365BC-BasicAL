codeunit 90532 "SBG My Subscriber"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"SBG My Publisher", 'OnAddressLineChanged', '', false, false)]
    local procedure CheckAddressLine(line: Text[100]);
    begin
        if (StrPos(line, '+') > 0) then begin
            Error('Can"t use a plus sign(+) in the address [' + line + ']');
        end;
    end;

}


