query 90501 "Posted Sales Invoice EIE"
{
    Caption = 'Posted Sales Invoice EIE';

    elements
    {
        dataitem(Sales_Invoice_Header; "Sales Invoice Header")
        {
            column(Document_No; "No.")
            {
            }
            column(Shipment_Date; "Shipment Date")
            {
            }
            column(Due_Date; "Due Date")
            {
            }
            column(Document_Date; "Document Date")
            {
            }
            column(Salesperson_Code; "Salesperson Code")
            {
            }
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            {
            }
            column(Sell_to_City; "Sell-to City")
            {
            }
            column(Sell_to_County; "Sell-to County")
            {
            }
            dataitem(Sales_Invoice_Line; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = Sales_Invoice_Header."No.";
                column(Quantity; Quantity)
                {
                }
                column(Amount; Amount)
                {
                }
                column(Item_No; "No.")
                {
                }
                column(Description; Description)
                {
                }
                column(Posting_Date; "Posting Date")
                {
                }

            }
        }
    }
}

