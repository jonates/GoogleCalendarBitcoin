#install.packages("googleVis")

library(googleVis)

df <- read.csv2("https://raw.githubusercontent.com/jonates/GoogleCalendarBitcoin/master/BTC_BRL_MercadoBitcoin2018.csv", dec=",", header=TRUE)

df$Dia <- as.Date(df$Dia)

Cal_variacao_Bitcoin <- gvisCalendar(df, 
                                   datevar="Dia", 
                                   numvar="Variacao",
                                   options=list(
                                     title="Variação do Bitcoin por dia, Mercado Bitcoin, 2018.",
                                     width=1250,
                                     height=220,
                                     calendar="{yearLabel: { fontName: 'Times-Roman',
                               fontSize: 32, color: '#4677e1', bold: true},
                               cellSize: 20,
                               cellColor: { stroke: 'blue', strokeOpacity: 0.05 },
                         noDataPattern : {backgroundColor : '#76a7fa' , color : '#a0c3ff'},
                         daysOfWeek: 'DSTQQSS',
                         focusedCellColor: {stroke:'red'}}"
                                   )
)
plot(Cal_variacao_Bitcoin)








