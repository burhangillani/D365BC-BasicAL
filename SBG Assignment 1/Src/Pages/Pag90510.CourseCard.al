page 90510 "SBG Course Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'SBG Course Card';
    SourceTable = "SBG Course";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(Code; Code) { ApplicationArea = all; }
                field(Name; Name) { ApplicationArea = all; }
                field(Description; Description) { ApplicationArea = all; }
                field(Duration; Duration) { ApplicationArea = all; }
                field(Prices; Prices) { ApplicationArea = all; }
                field(Type; Type) { ApplicationArea = all; }
                field(Active; Active) { ApplicationArea = all; }
                field(Difficulty; Difficulty) { ApplicationArea = all; }
                field("Passing Rate"; "Passing Rate") { ApplicationArea = all; }
                field("Instructor Code"; "Instructor Code") { ApplicationArea = all; }
                field("Instructor Name"; "Instructor Name") { ApplicationArea = all; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Resource Card")
            {
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor Code");
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
            }
        }
    }


}