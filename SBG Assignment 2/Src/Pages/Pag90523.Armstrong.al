page 90523 "SBG Armstrong Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;

    trigger OnOpenPage()
    var
        IntJ: Integer;
        IntL: Integer;
        IntPower: Integer;
        IntNumber: Integer;
        IntResult: Integer;
        IntList: List of [Integer];
        MagicNumbers: Text;
    begin
        for IntL := 1 to 10000 do begin
            Evaluate(IntPower, CopyStr(Format(intl), StrLen(Format(IntL)), 1));
            for IntJ := 1 to StrLen(Format(IntL)) do begin
                Evaluate(IntNumber, CopyStr(Format(IntL), IntJ, 1));

                IntResult += Power(IntNumber, IntPower);
            end;

            if IntResult = IntL then
                IntList.Add(IntResult);
            Clear(IntResult);
            foreach IntL in IntList do
                MagicNumbers += Format(IntL) + '\';
            Message(MagicNumbers);
        end;
    end;


}