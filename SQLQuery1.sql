SELECT
    CASE
        WHEN HomeTeam = 'Man United' THEN 'Man United vs ' + AwayTeam
        WHEN AwayTeam = 'Man United' THEN 'Man United vs ' + HomeTeam
        ELSE 'Unknown Match'
    END AS [EMU VS],

    CASE 
        WHEN HomeTeam = 'Man United' THEN 'Home'
        WHEN AwayTeam = 'Man United' THEN 'Away'
        ELSE 'Unknown'
    END AS [Tipe],

    Date,
    Season,
    Referee,

    CASE 
        WHEN HomeTeam = 'Man United' AND FT_Result = 'H' THEN 1
        WHEN AwayTeam = 'Man United' AND FT_Result = 'A' THEN 1
        ELSE 0
    END AS win,

    CASE 
        WHEN (HomeTeam = 'Man United' OR AwayTeam = 'Man United') AND FT_Result = 'D' THEN 1
        ELSE 0
    END AS draw,

    CASE 
        WHEN HomeTeam = 'Man United' AND FT_Result = 'A' THEN 1
        WHEN AwayTeam = 'Man United' AND FT_Result = 'H' THEN 1
        ELSE 0
    END AS lose,

    CASE 
        WHEN HomeTeam = 'Man United' AND H_Shots > A_sHOTS THEN 1
        WHEN AwayTeam = 'Man United' AND A_sHOTS > H_Shots THEN 1
        WHEN H_Shots = A_sHOTS THEN 0
        ELSE 0
    END AS Shot_Result,

    CASE 
        WHEN HomeTeam = 'Man United' AND H_SOT > A_SOT THEN 1
        WHEN AwayTeam = 'Man United' AND A_SOT > H_SOT THEN 1
        WHEN H_SOT = A_SOT THEN 0
        ELSE 0
    END AS SOT_Result,


    CASE 
        WHEN HomeTeam = 'Man United' AND H_Fouls < A_Fouls THEN 1
        WHEN AwayTeam = 'Man United' AND A_Fouls < H_Fouls THEN 1
        WHEN H_Fouls = A_Fouls THEN 0
        ELSE 0
    END AS Fouls_Result,

    CASE 
        WHEN HomeTeam = 'Man United' AND H_Corners > A_Corners THEN 1
        WHEN AwayTeam = 'Man United' AND A_Corners > H_Corners THEN 1
        WHEN H_Corners = A_Corners THEN 0
        ELSE 0
    END AS Corners_Result,

    CASE 
        WHEN HomeTeam = 'Man United' AND H_Yellow < A_Yellow THEN 1
        WHEN AwayTeam = 'Man United' AND A_Yellow < H_Yellow THEN 1
        WHEN H_Yellow = A_Yellow THEN 0
        ELSE 0
    END AS Yellow_Result,

    CASE 
        WHEN HomeTeam = 'Man United' AND H_Red < A_Red THEN 1
        WHEN AwayTeam = 'Man United' AND A_Red < H_Red THEN 1
        WHEN H_Red = A_Red THEN 0
        ELSE 0
    END AS Red_Result

FROM Match
WHERE HomeTeam = 'Man United' OR AwayTeam = 'Man United';
