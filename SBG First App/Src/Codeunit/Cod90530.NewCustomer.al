codeunit 90530 "SBG New Customer Celeberation"
{
    procedure CeleberateNewCustomer(MyCustomer: Record Customer; ExtraMessage: Text)
    begin
        Message('Whoa! welcome to new customer %1 !! %2', MyCustomer."No.", ExtraMessage);
    end;

    [EventSubscriber(ObjectType::Table, 18, 'OnAfterInsertEvent', '', true, true)]
    local procedure CustomeronAfterInsert(var Rec: Record Customer)
    begin
        CeleberateNewCustomer(Rec, 'Congratulation! from the Codeunit!! :) ');
    end;
}