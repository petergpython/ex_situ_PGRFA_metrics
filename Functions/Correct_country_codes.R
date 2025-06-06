##SG:Clean country field according to notes from CountryCodes_toClean file, 
# PG: # PG XAE is CIMMYT and XAM is IRRI as origin of the material, it should not changed to country, ANT is BES
# Decided to avoid converting old countries code to multiple countries as these will cause more problems with the metrics 
correct_country_codes <- function(df, col = 'ORIGCTY'){
  df[col][df[col] == "ANT"] <- "BES"
  df[col][df[col] == "ZAR"] <- "COD"
  df[col][df[col] == "ROM"] <- "ROU"
  df[col][df[col] == "BYS"] <- "BLR"
  # df[col][df[col] == "SCG"] <- "SER, MNE"
  # df[col][df[col] == "YUG"] <- "SLO, HRV, BIH, SRB, MNE, MKD, XKX"
  # df[col][df[col] == "CSK"] <- "CZE, SVK"
  df[col][df[col] == "SUN"] <- "RUS"
  df[col][df[col] == "Pak"] <- "PAK"
  return(df)
}
