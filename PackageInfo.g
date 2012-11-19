#############################################################################
##
##  PackageInfo.g for the package `FR'                    Laurent Bartholdi
##
SetPackageInfo( rec(
PackageName := "FR",
Subtitle := "Computations with functionally recursive groups",
Version := "2.0.0",
Date := "19/11/2012",
## <#GAPDoc Label="Version">
## <!ENTITY Version "2.0.0">
## <!ENTITY Date "19/11/2012">
## <#/GAPDoc>
ArchiveURL := Concatenation("https://github.com/downloads/laurentbartholdi/fr/fr-",~.Version),
ArchiveFormats := ".tar.gz",
Persons := [
  rec(
    LastName      := "Bartholdi",
    FirstNames    := "Laurent",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "laurent.bartholdi@gmail.com",
    WWWHome       := "http://www.uni-math.gwdg.de/laurent",
    PostalAddress := Concatenation( [
                       "Mathematisches Institut\n",
                       "Bunsenstraße 3-5\n",
                       "D-37073 Göttingen\n",
                       "Germany" ] ),
    Place         := "Göttingen",
    Institution   := "Georg-August Universität zu Göttingen"
  )
],

Status := "deposited",
CommunicatedBy := "Götz Pfeiffer (NUI Galway)",
AcceptDate := "",

README_URL := "http://laurentbartholdi.github.com/fr/README.fr",
PackageInfoURL := "http://laurentbartholdi.github.com/fr/PackageInfo.g",
AbstractHTML := "The <span class=\"pkgname\">FR</span> package allows \
   GAP to manipulate groups generated by automata, and more generally \
   functionally recursive groups",
PackageWWWHome := "http://laurentbartholdi.github.com/fr/",

PackageDoc := rec(
  BookName  := "FR",
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Functionally recursive and automata groups",
  ArchiveURLSubset := ["doc"],
  Autoload  := true
),

Dependencies := rec(
  GAP := ">=4.5.0",
  NeededOtherPackages := [["FGA",">=1.1"],
                      ["Polycyclic",">=2.2"],
                      ["GAPDoc",">=1.0"]],
  SuggestedOtherPackages := [["GBNP",">=0.9"],
                      ["NQ",">=2.4"],
                      ["NQL",">=0.10"]],
  # additional desired packages: graphviz, display
  ExternalConditions := []
),

AvailabilityTest := ReturnTrue,
                    
BannerString := Concatenation("Loading FR ", String( ~.Version ), " ...\n"),

Autoload := false,
TestFile := "tst/testall.g",
Keywords := ["functionally recursive group", "mealy machine", "automata group"]
));
