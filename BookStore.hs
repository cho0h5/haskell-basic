data BookInfo = Book Int String [String]
    deriving (Show)

data BookReview = BookReview BookInfo CustomerID String

type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)


type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
    | CashOnDelivery
    | Invoice CustomerID
      deriving (Show)
 

--nicerID      (Book id _     _      ) = id
--nicerTitle   (Book _  title _      ) = title
--nicerAuthors (Book _  _     authors) = authors
data Customer = Customer {
      customerID      :: CustomerID
    , customerName    :: String
    , customerAddress :: Address
    } deriving (Show)
