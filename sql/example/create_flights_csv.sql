CREATE TABLE IF NOT EXISTS
minio.ontime.flights_csv (
    Year INT,
    Quarter INT,
    Month INT,
    DayofMonth INT,
    DayOfWeek INT,
    FlightDate VARCHAR,
    UniqueCarrier VARCHAR,
    AirlineID INT,
    Carrier VARCHAR,
    TailNum VARCHAR,
    FlightNum INT,
    OriginAirportID INT,
    OriginAirportSeqID INT,
    OriginCityMarketID INT,
    Origin VARCHAR,
    OriginCityName VARCHAR,
    OriginState VARCHAR,
    OriginStateFips INT,
    OriginStateName VARCHAR,
    OriginWac INT,
    DestAirportID INT,
    DestAirportSeqID INT,
    DestCityMarketID INT,
    Dest VARCHAR,
    DestCityName VARCHAR,
    DestState VARCHAR,
    DestStateFips INT,
    DestStateName VARCHAR,
    DestWac INT,
    CRSDepTime INT,
    DepTime INT,
    DepDelay INT,
    DepDelayMinutes INT,
    DepDel15 INT,
    DepartureDelayGroups INT,
    DepTimeBlk VARCHAR,
    TaxiOut INT,
    WheelsOff INT,
    WheelsOn INT,
    TaxiIn INT,
    CRSArrTime INT,
    ArrTime INT,
    ArrDelay INT,
    ArrDelayMinutes INT,
    ArrDel15 INT,
    ArrivalDelayGroups INT,
    ArrTimeBlk VARCHAR,
    Cancelled TINYINT,
    CancellationCode VARCHAR,
    Diverted TINYINT,
    CRSElapsedTime INT,
    ActualElapsedTime INT,
    AirTime INT,
    Flights INT,
    Distance INT,
    DistanceGroup INT,
    CarrierDelay INT,
    WeatherDelay INT,
    NASDelay INT,
    SecurityDelay INT,
    LateAircraftDelay INT,
    FirstDepTime INT,
    TotalAddGTime INT,
    LongestAddGTime INT,
    DivAirportLandings INT,
    DivReachedDest INT,
    DivActualElapsedTime INT,
    DivArrDelay INT,
    DivDistance INT,
    Div1Airport VARCHAR,
    Div1AirportID INT,
    Div1AirportSeqID INT,
    Div1WheelsOn INT,
    Div1TotalGTime INT,
    Div1LongestGTime INT,
    Div1WheelsOff INT,
    Div1TailNum VARCHAR,
    Div2Airport VARCHAR,
    Div2AirportID INT,
    Div2AirportSeqID INT,
    Div2WheelsOn INT,
    Div2TotalGTime INT,
    Div2LongestGTime INT,
    Div2WheelsOff INT,
    Div2TailNum VARCHAR,
    Div3Airport VARCHAR,
    Div3AirportID INT,
    Div3AirportSeqID INT,
    Div3WheelsOn INT,
    Div3TotalGTime INT,
    Div3LongestGTime INT,
    Div3WheelsOff INT,
    Div3TailNum VARCHAR,
    Div4Airport VARCHAR,
    Div4AirportID INT,
    Div4AirportSeqID INT,
    Div4WheelsOn INT,
    Div4TotalGTime INT,
    Div4LongestGTime INT,
    Div4WheelsOff INT,
    Div4TailNum VARCHAR,
    Div5Airport VARCHAR,
    Div5AirportID INT,
    Div5AirportSeqID INT,
    Div5WheelsOn INT,
    Div5TotalGTime INT,
    Div5LongestGTime INT,
    Div5WheelsOff INT,
    Div5TailNum VARCHAR  
)
WITH (
    external_location = 's3a://data/airline/',
    format = 'TEXTFILE',
    textfile_field_separator = ','
);
