page 90520 "SBG Data Type Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'SBG Course Card';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }


    }
    trigger OnOpenPage()

    begin
        Message('The value of %1 is %2', 'yesOrNo', yesOrNo);
        Message('The value of %1 is %2', 'Amount', Amount);
        Message('The value of %1 is %2', 'WhenWasIt', WhenWasIt);
        Message('The value of %1 is %2', 'WhatTime', WhatTime);
        Message('The value of %1 is %2', 'Description', Description);
        Message('The value of %1 is %2', 'CodeNumber', CodeNumber);
        Message('The value of %1 is %2', 'Ch', Ch);
        Message('The value of %1 is %2', 'Color', Color);
    end;

    var
        LoopNo: Integer;
        yesOrNo: Boolean;
        Amount: Decimal;
        WhenWasIt: Date;
        WhatTime: Time;
        Description: Text[30];
        CodeNumber: Code[10];
        Ch: Char;
        Color: Option Red,Orange,Yellow,Green,Blue,Violet;
}