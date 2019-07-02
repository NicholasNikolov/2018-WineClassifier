
# DATA READIN -------------------------------------------------------------

dataset = read.csv("winemag-data-130k-v2.csv")
dataset[dataset==""]=NA
dataset = na.omit(dataset)
dataset=dataset[,-c(1,6,7,8)]

choiceWines = c("Pinot Gris","Pinot Noir","Cabernet Sauvignon","Chardonnay","Malbec","Zinfandel","Riesling","Merlot")
dataset = dataset[grepl(paste(choiceWines,collapse="|"),
              dataset[,5]),]
dataset = dataset[!grepl("Franc",dataset[,5]),]
dataset = dataset[!grepl("Ã",dataset[,5]),]

omitWines = c("Cabernet Merlot","Viognier","Merlot-Cabernet","Blanc","Semillon","Syrah","Johannisberg","Sangiovese",
              "Shiraz","Barbera","Tempranillo","Merlot-Malbec","Tannat","Chardonnay-Riesling","White","Pinot-Chardonnay",
              "Malbec-Cabernet","Malbec-Merlot","Sauvignon-Malbec","Riesling-Chardonnay","Sauvignon-Merlot")
dataset = dataset[!grepl(paste(omitWines,collapse="|"),dataset[,5]),]
dataset$province = droplevels(dataset$province)
# VARIABLE CREATION -------------------------------------------------------

# DRY
dry = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("dry",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    dry[i]=1
  }
}

# TANNIC
tannic = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("tannic",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    tannic[i]=1
  }
}

# SOFT
soft = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("soft",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    soft[i]=1
  }
}


# CHERRY
cherry = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("cherry",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    cherry[i]=1
  }
}


# STIFF
stiff = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("stiff",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    stiff[i]=1
  }
}

# THICK
thick = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("thick",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    thick[i]=1
  }
}

# CREAMY
creamy = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("creamy",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    creamy[i]=1
  }
}

# TART
tart = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("tart",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    tart[i]=1
  }
}

# BITTER
bitter = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("bitter",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    bitter[i]=1
  }
}

# BERRY
berry = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("berry",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    berry[i]=1
  }
}

# RED
red = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("red",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    red[i]=1
  }
}

# WHITE
white = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("white",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    white[i]=1
  }
}

# PEACH
peach = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("peach",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    peach[i]=1
  }
}

# DEEP
deep = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("deep",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    deep[i]=1
  }
}

# OAK
oak = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("oak",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    oak[i]=1
  }
}

# SMOKY
smoky = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("smoky",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    smoky[i]=1
  }
}

# RICH
rich = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("rich",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    rich[i]=1
  }
}

# VANILLA
vanilla = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("vanilla",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    vanilla[i]=1
  }
}

# MEDIUM
medium = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("medium",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    medium[i]=1
  }
}

# PEPPER
pepper = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("pepper",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    pepper[i]=1
  }
}

# PLUM
plum = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("plum",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    plum[i]=1
  }
}

# CRISP
crisp = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("crisp",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    crisp[i]=1
  }
}

# SWEET
sweet = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("sweet",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    sweet[i]=1
  }
}

# DARK
dark = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("dark",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    dark[i]=1
  }
}

# FULL-BODIED
fullBodied = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("full-bodied",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    fullBodied[i]=1
  }
}

# FULL-BODIED_s
fullBodied_s = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("full bodied",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    fullBodied_s[i]=1
  }
}

# MEDIUM-BODIED
mediumBodied = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("medium-bodied",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    mediumBodied[i]=1
  }
}

# MEDIUM-BODIED_s
mediumBodied_s = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("medium bodied",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    mediumBodied_s[i]=1
  }
}

# REFRESHING
refreshing = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("refreshing",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    refreshing[i]=1
  }
}

# spice
spice = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("spice",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    spice[i]=1
  }
}

# SAVORY
savory = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("savory",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    savory[i]=1
  }
}

# ROUND
round = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("round",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    round[i]=1
  }
}

# ORANGE
orange = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("orange",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    orange[i]=1
  }
}

# SMOOTH
smooth = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("smooth",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    smooth[i]=1
  }
}

# BRIGHT
bright = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("bright",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    bright[i]=1
  }
}

# SPICY
spicy = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("spicy",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    spicy[i]=1
  }
}

# STONE
stone = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("stone",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    stone[i]=1
  }
}

# LICORICE
licorice = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("licorice",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    licorice[i]=1
  }
}

# LIVELY
lively = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("lively",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    lively[i]=1
  }
}

# FRUITY
fruity = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("fruity",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    fruity[i]=1
  }
}

# MINERAL
mineral = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("mineral",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    mineral[i]=1
  }
}

# CHERRIES
cherries = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("cherries",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    cherries[i]=1
  }
}

# CHARLKY
chalky = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("chalky",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    chalky[i]=1
  }
}

# DENSE
dense = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("dense",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    dense[i]=1
  }
}

# RASPBERRY
raspberry = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("raspberry",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    raspberry[i]=1
  }
}

# GRAPHITE
graphite = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("graphite",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    graphite[i]=1
  }
}

# TOAST
toast = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("toast",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    toast[i]=1
  }
}

# TOBACCO
tobacco = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("tobacco",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    tobacco[i]=1
  }
}

# STRUCTURED
structured = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("structured",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    structured[i]=1
  }
}

# BLACK
black = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("black",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    black[i]=1
  }
}

# BALANCED
balanced = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("balanced",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    balanced[i]=1
  }
}

# BALSAMIC
balsamic = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("balsamic",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    balsamic[i]=1
  }
}

# COOL
cool = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("cool",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    cool[i]=1
  }
}

# JAM
jam = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("jam",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    jam[i]=1
  }
}

# CINNAMON
cinnamon = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("cinnamon",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    cinnamon[i]=1
  }
}

# CINNAMON
cinnamon = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("cinnamon",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    cinnamon[i]=1
  }
}

# CINNAMON
cinnamon = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("cinnamon",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    cinnamon[i]=1
  }
}

# TANG
tang = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("tang",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    tang[i]=1
  }
}

# COFFEE
coffee = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("coffee",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    coffee[i]=1
  }
}
# TESTED WITH 33% error
# BLACKBERRY
blackberry = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("blackberry",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    blackberry[i]=1
  }
}

# ROAST
roast = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("roast",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    roast[i]=1
  }
}

# FIRM
firm = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("firm",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    firm[i]=1
  }
}

# CEDAR
cedar = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("cedar",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    cedar[i]=1
  }
}

# BEEF
beef = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("beef",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    beef[i]=1
  }
}

# COMPLEX
complex = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("complex",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    complex[i]=1
  }
}

# CRANBERRY
cranberry = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("cranberry",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    cranberry[i]=1
  }
}

# CARAMEL
caramel = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("caramel",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    caramel[i]=1
  }
}

# MOCHA
mocha = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("mocha",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    mocha[i]=1
  }
}

# rose
rose = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("rose",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    mocha[i]=1
  }
}


# INTENSE
intense = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("intense",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    intense[i]=1
  }
}

# CONCENTRATED
concentrated = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("concentrated",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    concentrated[i]=1
  }
}

# EARTHY
earthy = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("earthy",taset[i,1],ignore.case=TRUE)==TRUE)
  {
    earthy[i]=1
  }
}

# STRONG
strong = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("strong",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    strong[i]=1
  }
}

# SOUR
sour = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("sour",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    sour[i]=1
  }
}

# MEAT
meat = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("meat",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    meat[i]=1
  }
}

# CASSIS
cassis = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("cassis",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    cassis[i]=1
  }
}

# SHARP
sharp = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("sharp",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    sharp[i]=1
  }
}

# VINTAGE
vintage = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("vintage",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    vintage[i]=1
  }
}

# BLACK CHERRY
bcf = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("black cherry",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    bcf[i]=1
  }
}

# FRENCH OAK
nfo = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("french oak",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    nfo[i]=1
  }
}

# FULL BODIED
fbw = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("full bodied",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    fbw[i]=1
  }
}

# MEDIUM BODIED
mbw = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("medium bodied",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    mbw[i]=1
  }
}

# FRUIT FLAVORS
tff = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("fruit flavors",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    tff[i]=1
  }
}

# SWEET SMOKY OAK
sso = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("sweet smoky oak",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    sso[i]=1
  }
}

# STONE FRUIT FLAVORS
sff = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("stone fruit flavors",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    sff[i]=1
  }
}

# FINE GRAINED TANNINS
fgt = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("fine grained tannins",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    fgt[i]=1
  }
}

# DARK FRUIT FLAVORS
dff = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("dark fruit flavors",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    dff[i]=1
  }
}

# BLACK FRUIT FLAVORS
bff = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("black fruit flavors",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    bff[i]=1
  }
}

# LIGHT IN COLOR
lic = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("light in color",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    lic[i]=1
  }
}

# HIGH IN ALCOHOL
hia = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("high in alcohol",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    hia[i]=1
  }
}

# RUSSIAN RIVER VALLEY
rrv = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("russian river valley",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    rrv[i]=1
  }
}

# BUTTERED TOAST
bt = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("buttered toast",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    bt[i]=1
  }
}

# BLACK PEPPER
bp = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("black pepper",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    bp[i]=1
  }
}

# RED CHERRY
rc = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("red cherry",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    rc[i]=1
  }
}

# CRISP ACIDITY
ca = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("crisp acidity",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    ca[i]=1
  }
}

# FIRM TANNINS
ft = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("firm tannins",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    ft[i]=1
  }
}

# LIGHT BODIED
lbodied = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("light bodied",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    lbodied[i]=1
  }
}

# BLACK PLUM
bplum = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("black plum",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    bplum[i]=1
  }
}

# DRY
bonedry = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("dry",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    bonedry[i]=1
  }
}

# BLACK CHERRIES
blkcherries = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("black cherries",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    blkcherries[i]=1
  }
}

# CHERRY FLAVORS
chflavors = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("cherry flavors",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    bt[i]=1
  }
}

# DARK CHOCOLATE
drkchocolate = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("dark chocolate",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    drkchocolate[i]=1
  }
}

# BLACK CURRANT
blkcurrant = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("black currant",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    blkcurrant[i]=1
  }
}

# OAK FLAVORS
oakflavors = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("oak flavors",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    oakflavors[i]=1
  }
}

# SPICE FLAVORS
spflavors = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("spice flavors",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    spflavors[i]=1
  }
}

# GREEN APPLE
greenapple = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("green apple",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    greenapple[i]=1
  }
}

# TROPICAL FRUIT
trpfruit = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("tropical fruit",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    trpfruit[i]=1
  }
}

# RED CURRANT
redcurrant = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("red currant",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    redcurrant[i]=1
  }
}

# PETIT VERDOT

petitverdot = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("petit verdot",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    petitverdot[i]=1
  }
}

# HIGH TONED
hightoned = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("high toned",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    hightoned[i]=1
  }
}

# VARIETAL WINE
varietalwine = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("varietal wine",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    varietalwine[i]=1
  }
}

# WHITE PEPPER
whitepepper = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("white pepper",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    whitepepper[i]=1
  }
}

# BRISK ACITITY
briskacidity = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("brisk acidity",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    briskacidity[i]=1
  }
}

# BRIGHT ACIDITY
brightacidity = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("bright acidity",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    brightacidity[i]=1
  }
}

# BLACK LICORICE
blacklicorice = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("black licorice",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    blacklicorice[i]=1
  }
}

# BARREL SPICE
barrelspice = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("barrel spice",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    barrelspice[i]=1
  }
}

# GRAINED TANNINS
grainedtannins = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("grained tannins",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    grainedtannins[i]=1
  }
}

# SMOOTH TANNINS
smoothtannins = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("smooth tannins",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    smoothtannins[i]=1
  }
}

# 100% VARIETAL
varietal = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("100% varietal",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    varietal[i]=1
  }
}

# SWEET
sweet = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("sweet",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    sweet[i]=1
  }
}

# DARK RED
darkred = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("dark red",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    darkred[i]=1
  }
}

# BLACK TEA
blacktea = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("black tea",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    blacktea[i]=1
  }
}

# FOREST FLOOR
forestfloor = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("forest floor",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    forestfloor[i]=1
  }
}

# ROSE PETALS
rosepetals = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("rose petals",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    rosepetals[i]=1
  }
}

# SILKY TEXTURE
silkytexture = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("silky texture",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    silkytexture[i]=1
  }
}

# SOUR CHERRY
sourcherry = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("sour cherry",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    sourcherry[i]=1
  }
}

# CABERNET SAUVIGNON
cabernet = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("cabernet sauvignon",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    cabernet[i]=1
  }
}

# Chardonnay
chardonnay = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("chardonnay",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    chardonnay[i]=1
  }
}

# MALBEC
malbec = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("malbec",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    malbec[i]=1
  }
}

# MERLOT
merlot = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("merlot",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    merlot[i]=1
  }
}

# PINOT GRIS
pinotgris = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("pinot gris",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    pinotgris[i]=1
  }
}

# PINOT NOIR
pinotnoir = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("pinot noir",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    pinotnoir[i]=1
  }
}

# RIESLING
riesling = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("riesling",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    riesling[i]=1
  }
}

# ZINFANDEL
zinfandel = rep(0,length(dataset[,4]))

for(i in 1:length(dataset[,3]))
{
  if(grepl("zinfandel",dataset[i,1],ignore.case=TRUE)==TRUE)
  {
    zinfandel[i]=1
  }
}

# Add Almond, Apple, Apricot,
# berries, blueberry, candied,
# chocolate, 
# clean, cocoa,
# cranberry, currant,
# easy, elegant, espresso, flower, fragrant,
# grapefruit, green,
# grilled, herb, honey,leather, lemon,
# 
# racy(21),
# 
# silky(25),
# 
# subtle(23), supple(24), 
# thyme(21),
# tropical(30), velvety(21), vibrant(36), 
#

# UPDATED DATASET ---------------------------------------------------------

fullData = cbind.data.frame(factor(dataset[,5]),dataset[,2],dataset[,3],dataset[,4],
                            dry,tannic,soft,cherry,stiff,thick,
                            creamy,tart,bitter,berry,red,white,peach,deep,oak,
                            smoky,rich,vanilla,medium,pepper,plum,crisp,sweet,dark,
                            fullBodied,fullBodied_s,mediumBodied,mediumBodied_s,refreshing,spice,
                            savory,round,orange,smooth,bright,spicy,stone,licorice,lively,fruity,
                            mineral,cherries,chalky,dense,raspberry,graphite,
                            toast,tobacco,structured,black,balanced,balsamic,cool,cinnamon,
                            tang,jam,coffee,blackberry,roast,firm,cedar,beef,complex,cranberry,
                            caramel,mocha,rose,intense,concentrated,earthy,strong,sour,meat,
                            cassis,sharp,vintage,bcf,nfo,fbw,mbw,tff,sso,sff,fgt,dff,
                            bff,lic,hia,rrv,bt,bp,rc,ca,ft,lbodied,bplum,bonedry,blkcherries,drkchocolate,
                            blkcurrant,oakflavors,spflavors,greenapple,trpfruit,redcurrant,petitverdot,
                            hightoned,varietalwine,whitepepper,briskacidity,brightacidity,blacklicorice,
                            barrelspice,grainedtannins,smoothtannins,cabernet,chardonnay,malbec,merlot,
                            pinotgris,pinotnoir,riesling,zinfandel)
names(fullData)[1] <- "variety"
names(fullData)[2] <- "score"
names(fullData)[3] <- "price"
names(fullData)[4] <- "province"

write.csv(fullData,file="fullData.csv",row.names=FALSE)

# TRAIN/TEST --------------------------------------------------------------

train=sample(length(fullData[,3]),length(fullData[,3])/1.75)
test = (-train)

X_train = fullData[train,-1]
y_train = fullData[train,1]

X_test = fullData[test,-1]
y_test = fullData[test,1]

# RANDOM FOREST -----------------------------------------------------------

library(randomForest)
# tuneModel = tuneRF(X_train,y_train,mtryStart=20,ntreeTry=250,stepFactor=2,improve=0.01)
wineCutoff = c(.125,.125,.125,.125,.125,.125,.125,.125)
rfModel = randomForest(x=X_train,y=y_train,ntree=20,mtry=20,importance=TRUE,
                       type = "classification",cutoff = wineCutoff,do.trace=TRUE)
rfModel
importance(rfModel)

plot(rfModel,main="Random Forest Error Plot")

rfPred = predict(rfModel,newdata = X_test)

mean(y_test == rfPred)
table(y_test,rfPred)

importance(rfModel)

# Using h2o Framework
library(h2o)
h2o.init(nthreads=-1)

fullData_rf <- h2o.importFile(path="fullData.csv")

fullData_rf.split <- h2o.splitFrame(data=fullData_rf, ratios=0.75)

nnTrain = fullData_rf.split[[1]]
nnTest = fullData_rf.split[[2]]

h2oRFModel = h2o.randomForest(y='variety',training_frame=nnTrain,validation_frame=nnTest,ntrees=2000,max_depth=25)
h2oRFPred = h2o.pred(h2oRFModel,newdata=nnTest)
RFPreds = as.data.frame(h2oRFPred)[,1]
mean(RFPreds!=as.data.frame(nnTest)[,1])

# NEURAL NETWORK ----------------------------------------------------------

library(h2o)
h2o.init(nthreads=-1)

fullData_nn <- h2o.importFile(path="fullData.csv")

fullData_nn.split <- h2o.splitFrame(data=fullData_nn, ratios=0.75) # Original ratios 0.75

nnTrain = fullData_nn.split[[1]]
nnTest = fullData_nn.split[[2]]

minError = .4
for(i in 21:30) #15,13||12,10* -- .24646782 13,14 --.2185
{
  for(j in 21:30)
  {
    dlModel = h2o.deeplearning(y='variety',training_frame=nnTrain,
                               activation='Maxout',
                               epochs=25,train_samples_per_iteration=-2,loss='CrossEntropy',
                               hidden=c(12,12))
    dlPred = h2o.predict(dlModel,newdata=nnTest)
    dlPred = as.data.frame(dlPred)[,1]
    if(mean(dlPred!=as.data.frame(nnTest)[,1])<minError)
    {
      print(c("Min Error with layers ",j,i,mean(dlPred!=as.data.frame(nnTest)[,1])))
      minError = mean(dlPred!=as.data.frame(nnTest)[,1])
    }
  }
}

# errorVec = rep(0,33)
for(k in seq(from=10,to=30,by=1))
{
  dlModel = h2o.deeplearning(y='variety',training_frame=nnTrain,activation='Maxout',
                             epochs=20,train_samples_per_iteration=-2,loss='CrossEntropy',
                             hidden=c(k))
  dlPred = h2o.predict(dlModel,newdata=nnTest)
  dlPred = as.data.frame(dlPred)[,1]
  # errorVec[k] = mean(dlPred!=as.data.frame(nnTest)[,1])
  print(mean(dlPred!=as.data.frame(nnTest)[,1]))
  if(mean(dlPred!=as.data.frame(nnTest)[,1])<minError)
  {
    print(c("Min Error with layers ",j,i,mean(dlPred!=as.data.frame(nnTest)[,1])))
    print(c("Layer 1: ",k))
    minError = mean(dlPred!=as.data.frame(nnTest)[,1])
  }
}

errorVec[errorVec==0] <- NA
errorVec<-errorVec[complete.cases(errorVec)]
plot(errorVec,xlim=c(1,33),ylab="Error",type="l")

dlModel = h2o.deeplearning(y='variety',training_frame=nnTrain,activation='Maxout',
                            epochs=20,train_samples_per_iteration=-2,loss='CrossEntropy',
                            hidden=c(12,10))
dlPred = h2o.predict(dlModel,newdata=nnTest[5,-1])
dlPred = as.data.frame(dlPred)[,1]
# table(dlPred,as.data.frame(nnTest)[,1])
mean(dlPred!=as.data.frame(nnTest)[,1])


# Binary Classification ---------------------------------------------------

# PINOT NOIR
datasetPinot = fullData
datasetPinot$variety = ifelse(datasetPinot$variety=="Pinot Noir",1,0)
train = sample(length(datasetPinot$variety),length(datasetPinot$variety)/1.67)
test = (-train)
library(gbm)

gbmModel = gbm(variety~.,data=datasetPinot[train,],distribution="adaboost",shrinkage=0.01,n.cores=4,n.trees=3000,interaction.depth=1)
gbmPred = predict(gbmModel,newdata=datasetPinot[test,],n.trees=3000,type="response")
gbmPred = ifelse(gbmPred>0.3,1,0)

table(gbmPred,datasetPinot$variety[test])

# MALBEC
datasetMalbec = fullData
datasetMalbec$variety = ifelse(datasetMalbec$variety=="Malbec",1,0)
train = sample(length(datasetMalbec$variety),length(datasetMalbec$variety)/1.67)
test = (-train)
library(gbm)

gbmModel = gbm(variety~.,data=datasetMalbec[train,],distribution="adaboost",shrinkage=0.01,n.cores=4,n.trees=3000,interaction.depth=2)
gbmPred = predict(gbmModel,newdata=datasetMalbec[test,],n.trees=3000,type="response")
gbmPred = ifelse(gbmPred>0.3,1,0)

table(gbmPred,datasetMalbec$variety[test])
