% !TEX encoding = IsoLatin
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Tämä on BibTeX-tyylitiedosto Tampereen yliopiston tilastotieteen
% tutkielmia varten. Tyylitiedosto pohjautuu JASA:n (Journal of the American
% Statistical Association) lähdeluetteloissa käyttämämään tyyliin.
% 
% Tämä tyylitiedosto on tehty alunperin makebst-ohjelmalla (Copyright 1994-2004
% Patrick W Daly) käyttäen lähdetiedostoa merlin.mbs optioilla
% babel,ay,nat,lang,nm-rev,jnrlst,nmdash,nmd-3,blkyear,dt-beg,yr-par,note-yr,
% tit-qq,qx,atit-u,thtit-a,vnum-x,volp-com,pp-last,num-xser,numser,ser-ed,
% add-pub,pre-pub,edparxc,edby,edbyx,blk-com,blknt,pp,ed,abr,ednx,ord,
% and-xcom,url,url-nt,nfss.
% Tyylitiedostoa on tämän jälkeen muokattu JASA:n tyyliin sopivammaksi.
%
% Tässä tyylitiedostossa olevat englanninkieliset kommentit ovat Oren Patashnikin
% kirjoittamasta tiedostosta btxbst.doc (CTAN/biblio/bibtex/distribs/doc/btxbst.doc).
%
% Tämä tyylitiedosto on tarkoitettu käytettäväksi yhdessä makropakettien
% natbib, babel ja url tai hyperref kanssa. LaTeX-dokumentin esittelyosassa
% tulisi olla tätä varten komennot
% \usepackage[english,finnish]{babel}
% \addto\extrasenglish{\frenchspacing}
% \usepackage[longnamesfirst]{natbib}
% \bibpunct{(}{)}{;}{a}{}{,}
% \usepackage{url} % tai \usepackage{hyperref}
% 
% Tässä tyylitiedostossa edellytetään, että BibTeX-tietueet käyttävät
% language-kenttää, jolla määritellään kyseisen lähdeviitteen kieli.
% Viitteeseen automaattisesti lisättävät sanat valitaan language-kentän
% mukaan. Toistaiseksi määriteltynä on vain englanti -- muissa kuin
% englanninkielisissä lähteissä käytetään suomenkielisiä sanoja.
%
% Tätä tyylitiedostoa ei ole testattu kovin perusteellisesti, joten se ei
% välttämättä toimi oikein tai toivotulla tavalla kaikilla (virheettömillä)
% BibTeX-tietokannoilla. Jos siis löydät virheen tai keksit jonkin korjaus-
% tai parannuskeinon, niin voit vapaasti muokata tätä tiedostoa, mutta
% ilmoita virheistä ja korjauksista allekirjoittaneelle.
%
% 2004/12/12 Jarmo Niemelä, jarmo.niemela@uta.fi
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Mahdolliset tietueiden kentät määritellään ENTRY-komennolla.
ENTRY
  { address
%       Usually the address of a publisher or other type of organization.
%       Put information in this field only if it helps the reader find the
%       thing---for example you should omit the address of a major
%       publisher entirely.  For a PROCEEDINGS or an INPROCEEDINGS,
%       however, it's the address of the conference; for those two entry
%       types, include the publisher's or organization's address, if
%       necessary, in the publisher or organization field.
    author
%       Name(s) of author(s), in BibTeX name format.
    booktitle
%       Book title when the thing being referenced isn't the whole book.
%       For book entries, the title field should be used instead.
    chapter
%       Chapter (or section or whatever) number.
    edition
%       Edition of a book -- should be an ordinal (e.g., "Second").
    editor
%       Name(s) of editor(s), in BibTeX name format.
%       If there is also an author field, then the editor field should be
%       for the book or collection that the work appears in.
    eid
    howpublished
%        How something strange has been published (begins sentence).
    institution
%       Sponsoring institution of a technical report.
    journal
%       Journal name (macros are provided for many).
    key
%       Alphabetizing, labeling, and cross-referencing key
%       (needed when an entry has no author or editor).
    language
%       Lähdeviitteen kieli.
    month
%       Month (macros are provided).
    note
%       To help the reader find a reference (begins sentence).
    number
%       Number of a journal or technical report, or of a work in a series.
    organization
%       Organization sponsoring a conference (or publishing a manual); if
%       the editor (or author) is empty, and if the organization produces
%       an awkward label or cross reference, you should put appropriately
%       condensed organization information in the key field as well.
    pages
%       Page number or numbers (use `--' to separate a range, use `+'
%       to indicate pages following that don't form a simple range).
    publisher
%       Publisher name.
    school
%       School name (for theses).
    series
%       The name of a series or set of books.
%       An individual book will will also have it's own title.
    title
%       The title of the thing you're referred to.
    type
%       Type of a Techreport (e.g., "Research Note") to be used instead of
%       the default "Technical Report"; or, similarly, the type of a
%       thesis; or of a part of a book.
    url
    volume
%       The volume number of a journal or multivolume work.
    year
%       The year should contain only numerals (technically, it should end
%       with four numerals, after purification; doesn't a begin sentence).
  }
% There are no integer entry variables:
  {}
% These string entry variables are used to form the citation label:
  { label extra.label sort.label short.list }


% Each entry function starts by calling output.bibitem, to write the
% \bibitem and its arguments to the .BBL file.  Then the various fields
% are formatted and printed by output or output.check.  Those functions
% handle the writing of separators (commas, periods, \newblock's),
% taking care not to do so when they are passed a null string.
% Finally, fin.entry is called to add the final period and finish the
% entry.
%
% A bibliographic reference is formatted into a number of `blocks':
% in the open format, a block begins on a new line and subsequent
% lines of the block are indented.  A block may contain more than
% one sentence (well, not a grammatical sentence, but something to
% be ended with a sentence ending period).  The entry functions should
% call new.block whenever a block other than the first is about to be
% started.  They should call new.sentence whenever a new sentence is
% to be started.  The output functions will ensure that if two
% new.sentence's occur without any non-null string being output between
% them then there won't be two periods output.  Similarly for two
% successive new.block's.
%
% The output routines don't write their argument immediately.
% Instead, by convention, that argument is saved on the stack to be
% output next time (when we'll know what separator needs to come
% after it).  Meanwhile, the output routine has to pop the pending
% output off the stack, append any needed separator, and write it.
%
% To tell which separator is needed, we maintain an output.state.
% It will be one of these values:
%   before.all      just after the \bibitem
%   mid.sentence    in the middle of a sentence: comma needed
%                   if more sentence is output
%   after.sentence  just after a sentence: period needed
%   after.block     just after a block (and sentence):
%                   period and \newblock needed.
%
INTEGERS { output.state before.all mid.sentence after.sentence after.block }
FUNCTION {init.state.consts}
{ #0 'before.all :=        % before.all := 0
  #1 'mid.sentence :=      % mid.sentence := 1
  #2 'after.sentence :=    % after.sentence := 2
  #3 'after.block :=       % after.block := 3
}


% Globaalit merkkijonomuuttujat:
STRINGS { s t }


% The output.nonnull function saves its argument (assumed to be nonnull)
% on the stack, and writes the old saved value followed by any needed
% separator. The ordering of the tests is decreasing frequency of occurrence.
FUNCTION {output.nonnull}
{ 's :=                                   % s := pinossa oleva merkkijono
  output.state mid.sentence =             % Jos output.state = mid.sentence
    { ", " * write$ }                     % niin tulostetaan pinossa oleva merkkijono, pilkku ja välilyönti
    { output.state after.block =          % muutoin, jos output.state = after.block
        { add.period$ write$              % niin tulostetaan pinossa oleva merkkijono ja piste,
          newline$                        % rivinvaihto
          "\newblock " write$             % ja "\newblock "
        }
        { output.state before.all =       % muutoin, jos output.state = before.all
            'write$                       % niin tulostetaan pinossa oleva merkkijono
            { add.period$ " " * write$ }  % muutoin tulostetaan pinossa oleva merkkijono piste ja välilyönti
          if$
        }
      if$
      mid.sentence 'output.state :=       % output.state := mid.sentence
    }
  if$
  s                                       % s:n arvo pinoon
}


% The output function calls output.nonnull if its argument is non-empty;
% its argument may be a missing field (thus, not necessarily a string)
FUNCTION {output}
{ duplicate$ empty$
    'pop$
    'output.nonnull
  if$
}


% The output.check function is the same as the output function except that, if
% necessary, output.check warns the user that the t field shouldn't be empty
% (this is because it probably won't be a good reference without the field;
% the entry functions try to make the formatting look reasonable even when
% such fields are empty).
FUNCTION {output.check}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull
  if$
}


% The fin.entry function finishes off an entry by adding a period to the
% string remaining on the stack. If the state is still before.all
% then nothing was produced for this entry, so the result will look bad,
% but the user deserves it. (We don't omit the whole entry because the
% entry was cited, and a bibitem is needed to define the citation label.)
FUNCTION {fin.entry}
{ add.period$ "\par}" *
  write$
  newline$
}


% The new.sentence function prepares for a new sentence to be output.
FUNCTION {new.sentence}
{ output.state after.block =                 % Jos output.state = after.block,
    'skip$                                   % niin ei tehdä mitään
    { output.state before.all =              % muutoin, jos output.state = before.all,
        'skip$                               % niin ei tehdä mitään
        { after.sentence 'output.state := }  % muutoin output.state := after.sentence
      if$
    }
  if$
}


% Funktio add.blank lisää välilyönnin ja asettaa output.state:= before.all
FUNCTION {add.blank}
{  " " * before.all 'output.state :=
}


FUNCTION {not}
{   { #0 }  % Jos pinossa oleva luku on > 0, niin pinoon 0,
    { #1 }  % muuten pinoon 1.
  if$
}


FUNCTION {and}
% Jos pinosta luettu luku on > 0, niin skip$ (1 and 1 = 1, 1 and 0 = 0),
% muuten korvataan pinossa seuraavana oleva luku 0:lla.
{   'skip$
    { pop$ #0 }
  if$
}


FUNCTION {or}
% Jos pinosta luettu luku on > 0, niin korvataan pinossa seuraavana
% oleva luku 1:llä, muuten skip$ (0 or 1 = 1, 0 or 0 = 0).
{   { pop$ #1 }
    'skip$
  if$
}


% Here are some functions for formatting chunks of an entry.
% By convention they either produce a string that can be followed by
% a comma or period (using add.period$, so it is OK to end in a period),
% or they produce the null string.

% A useful utility is the field.or.null function, which checks if the
% argument is the result of pushing a `missing' field (one for which no
% assignment was made when the current entry was read in from the database)
% or the result of pushing a string having no non-white-space characters.
% It returns the null string if so, otherwise it returns the field string.
% Its main (but not only) purpose is to guarantee that what's left on the
% stack is a string rather than a missing field.
FUNCTION {field.or.null}
{ duplicate$ empty$  % Jos pinossa on empty$,
    { pop$ "" }      % niin korvataan se tyhjällä merkkijonolla,
    'skip$           % muuten skip$.
  if$
}


% Jos pinossa oleva merkkijono ei ole tyhjä, niin funktio emphasize
% sijoittaa sen LaTeX-komennon \emph argumentiksi ja palauttaa näin
% saadun merkkijonon pinoon. Muussa tapauksessa pinoon palautetaan
% tyhjä merkkijono.
FUNCTION {emphasize}
{ duplicate$ empty$
    { pop$ "" }
    { "\emph{" swap$ * "}" * }
  if$
}


% For several functions we'll need to connect two strings with a
% tie (~) if the second one isn't very long (fewer than 3 characters).
% The tie.or.space.connect function does that.
FUNCTION {tie.or.space.prefix}
{ duplicate$ text.length$ #3 <   % Jos merkkijonon pituus on < 3,
    { "~" }                      % niin pinoon sitova väli,
    { " " }                      % muutoin pinoon välilyönti.
  if$
  swap$                          % Vaihdetaan merkkijonon ja välilyönnin paikat.
}


% Funktio capitalize lisää LaTeX-komennon \capitalize pinossa olevan
% merkkijonon eteen (muuttaa ensimmäisen kirjaimen isoksi).
FUNCTION {capitalize}
{ "\capitalize" swap$ * }


% Funktio space.word lisää välilyönnit merkkijonon ympärille. 
FUNCTION {space.word}
{ " " swap$ * " " * }


% Lähdeluetteloon automaattisesti lisättävät sanat määritellään
% funktioina, joiden arvo riippuu kyseisen tietueen kielestä.
% Englanninkielisissä lähteissä käytetään englanninkielisiä sanoja,
% kaikissa muissa käytetään suomenkielisiä sanoja. Muita kieliä
% voi lisätä tarvittaessa lisäämällä kullekin kielelle oman if$-testin.

FUNCTION {bbl.and}
{ "\&" }

FUNCTION {bbl.etal}
{ "et~al."}

FUNCTION {bbl.editors}
{ language "english" =
    { "eds." }
    { "toim." }
  if$
}

FUNCTION {bbl.editor}
{ language "english" =
    { "ed." }
    { "toim." }
  if$
}

FUNCTION {bbl.edby}
{ language "english" =
    { "edited by" }
    { "toimittanut" }
  if$
}

FUNCTION {bbl.edition}
{ language "english" =
    { "ed." }
    { "p." }
  if$
}

FUNCTION {bbl.volume}
{ language "english" =
    { "Vol." }
    { "osa" }
  if$
}

FUNCTION {bbl.of}
{ language "english" =
    { "of" }
    { "sarjasta" }
  if$
}

FUNCTION {bbl.number}
{ language "english" =
    { "no." }
    { "n:o" }
  if$
}

FUNCTION {bbl.nr}
{ language "english" =
    { "no." }
    { "n:o" }
  if$
}

FUNCTION {bbl.in}
{ language "english" =
    { "in" }
    { "teoksessa" }
  if$
}

FUNCTION {bbl.pages}
{ language "english" =
    { "pp." }
    { "s." }
  if$
}

FUNCTION {bbl.page}
{ language "english" =
    { "p." }
    { "s." }
  if$
}

FUNCTION {bbl.chapter}
{ language "english" =
    { "Chap." }
    { "luku" }
  if$
}

FUNCTION {bbl.techrep}
{ language "english" =
    { "Tech. Rep." }
    { "tekn. rap." }
  if$
}

FUNCTION {bbl.mthesis}
{ language "english" =
    { "Master's thesis" }
    { "pro gradu -tut\-ki\-el\-ma" }
  if$
}

FUNCTION {bbl.phdthesis}
{ language "english" =
    { "Ph.D. thesis" }
    { "v\^^b{a}it\^^b{o}skirja" }
  if$
}

FUNCTION {bbl.first}
{ language "english" =
    { "1st" }
    { "1." }
  if$
}

FUNCTION {bbl.second}
{ language "english" =
    { "2nd" }
    { "2." }
  if$
}

FUNCTION {bbl.third}
{ language "english" =
    { "3rd" }
    { "3." }
  if$
}

FUNCTION {bbl.fourth}
{ language "english" =
    { "4th" }
    { "4." }
  if$
}

FUNCTION {bbl.fifth}
{ language "english" =
    { "5th" }
    { "5." }
  if$
}

FUNCTION {bbl.st}
{ language "english" =
    { "st" }
    { "." }
  if$
}

FUNCTION {bbl.nd}
{ language "english" =
    { "nd" }
    { "." }
  if$
}

FUNCTION {bbl.rd}
{ language "english" =
    { "rd" }
    { "." }
  if$
}

FUNCTION {bbl.th}
{ language "english" =
    { "th" }
    { "." }
  if$
}


% Kuukausien nimiä ei käytetä, mutta jos niitä käytettäisiin,
% niin nekin täytyisi määritellä komennolla FUNCTION.
MACRO {jan} {"January"}
MACRO {feb} {"February"}
MACRO {mar} {"March"}
MACRO {apr} {"April"}
MACRO {may} {"May"}
MACRO {jun} {"June"}
MACRO {jul} {"July"}
MACRO {aug} {"August"}
MACRO {sep} {"Septempber"}
MACRO {oct} {"October"}
MACRO {nov} {"November"}
MACRO {dec} {"December"}


% Funktiota eng.ord tarvitaan funktiossa convert.edition.
FUNCTION {eng.ord}
{ duplicate$ "1" swap$ *
  #-2 #1 substring$ "1" =
     { bbl.th * }
     { duplicate$ #-1 #1 substring$
       duplicate$ "1" =
         { pop$ bbl.st * }
         { duplicate$ "2" =
             { pop$ bbl.nd * }
             { "3" =
                 { bbl.rd * }
                 { bbl.th * }
               if$
             }
           if$
          }
       if$
     }
   if$
}


MACRO {acmcs} {"ACM Computing Surveys"}
MACRO {acta} {"Acta Informatica"}
MACRO {cacm} {"Communications of the ACM"}
MACRO {ibmjrd} {"IBM Journal of Research and Development"}
MACRO {ibmsj} {"IBM Systems Journal"}
MACRO {ieeese} {"IEEE Transactions on Software Engineering"}
MACRO {ieeetc} {"IEEE Transactions on Computers"}
MACRO {ieeetcad} {"IEEE Transactions on Computer-Aided Design of Integrated Circuits"}
MACRO {ipl} {"Information Processing Letters"}
MACRO {jacm} {"Journal of the ACM"}
MACRO {jcss} {"Journal of Computer and System Sciences"}
MACRO {scp} {"Science of Computer Programming"}
MACRO {sicomp} {"SIAM Journal on Computing"}
MACRO {tocs} {"ACM Transactions on Computer Systems"}
MACRO {tods} {"ACM Transactions on Database Systems"}
MACRO {tog} {"ACM Transactions on Graphics"}
MACRO {toms} {"ACM Transactions on Mathematical Software"}
MACRO {toois} {"ACM Transactions on Office Information Systems"}
MACRO {toplas} {"ACM Transactions on Programming Languages and Systems"}
MACRO {tcs} {"Theoretical Computer Science"}


% Funktio bibinfo.check tarkistaa puuttuuko tietueesta jokin kenttä.
% Funktion parametrit ovat kyseisen kentän arvo sekä kentän nimi merkkijonona.
% Esimerkiksi: title "title" bibinfo.check.
FUNCTION {bibinfo.check}
{ swap$                  % Vaihdetaan kentän arvo pinon päällimmäiseksi.
  duplicate$ missing$    % Jos kenttä puuttuu,
    { pop$ pop$ "" }     % niin poistetaan pinosta kenttä ja sen nimi ja lisätään pinoon ""; 
    { swap$              % muutoin vaihdetaan kentän nimi pinon päällimmäiseksi
      pop$ }             % ja poistetaan se.
  if$
}


% Funktio bibinfo.warn on muuten sama kuin bibinfo.check, mutta
% tulostaa lisäksi varoitukset puuttuvasta tai tyhjästä kentästä.
FUNCTION {bibinfo.warn}
{ swap$
  duplicate$ missing$
    { swap$ "missing " swap$ * " in " * cite$ * warning$ pop$ "" }
    { duplicate$ empty$
        { swap$ "empty " swap$ * " in " * cite$ * warning$ }
        { swap$ pop$ }
      if$
    }
  if$
}


STRINGS  { bibinfo }


INTEGERS { nameptr namesleft numnames }


% The format.names function formats the argument (which should be in
% BibTeX name format) into "Von Last, First, Junior", separated by commas
% and with an "and" before the last (but ending with "et~al." if the last
% of multiple authors is "others"). This function's argument should always
% contain at least one name.
FUNCTION {format.names}
{ 'bibinfo :=
  duplicate$ empty$ 'skip$ {
  's :=
  "" 't :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr
      "{vv~}{ll}{, f.}{, jj}"
      format.name$
      bibinfo bibinfo.check
      't :=
      nameptr #1 >
        {
          namesleft #1 >
            { ", " * t * }
            {
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                {
                  " " * bbl.etal *
                }
                {
                  bbl.and
                  space.word * t *
                }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
  } if$
}


% Format.names.ed is like format.authors, but it uses the editor field.
FUNCTION {format.names.ed}
{
  'bibinfo :=
  duplicate$ empty$ 'skip$ {
  's :=
  "" 't :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr
      "{f.~}{vv~}{ll}{, jj}"
      format.name$
      bibinfo bibinfo.check
      't :=
      nameptr #1 >
        {
          namesleft #1 >
            { ", " * t * }
            {
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                {

                  " " * bbl.etal *
                }
                {
                  bbl.and
                  space.word * t *
                }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
  } if$
}


FUNCTION {format.key}
{ empty$
    { key field.or.null }
    { "" }
  if$
}


% The format.authors function returns the result of format.names(author).
FUNCTION {format.authors}
{ author "author" format.names }


% Funktio get.bbl.editor valitsee funktion bbl.editor tai bbl.editors
% sen mukaan, onko toimittajia yksi vai useampia.
FUNCTION {get.bbl.editor}
{ editor num.names$ #1 >   % Jos num.names$(editor) > 1,
    'bbl.editors           % niin bbl.editors,
    'bbl.editor            % muutoin bbl.editor
  if$
}


% Funktio format.editors muotoilee toimittajien nimet ja lisää näiden
% perään " (bbl.editor)" tai " (bbl.editors)" sen mukaan, onko
% toimittajia yksi vai useampia.
FUNCTION {format.editors}
{ editor "editor" format.names duplicate$ empty$ 'skip$
    {
      " " *
      get.bbl.editor
   "(" swap$ * ")" *
      *
    }
  if$
}


% Funktio select.language tulostaa .bbl-tiedostoon komennon
% \selectlanguage, mikäli language kenttä ei ole tyhjä.
FUNCTION {select.language}
{ language empty$
    'skip$
    { "\selectlanguage{" language * "}" * write$ newline$ }
  if$
}


FUNCTION {format.note}
{ url empty$                                  % Jos url on tyhjä,
    'skip$                                    % niin ei tehdä mitään;
    { "\urlprefix\url{" url * "}" * output }  % muutoin tulostetaan "\urlprefix\url{url}".
  if$
  note empty$                                 % Jos note on tyhjä,
    { "" }                                    % niin pinoon "";
    { note #1 #1 substring$                   % muutoin pinoon kentän note ensimmäinen merkki.
      duplicate$ "{" =                        % Jos se on "{",
        'skip$                                % niin ei tehdä mitään;
        { output.state mid.sentence =         % muutoin, jos output.state = mid.sentence,
          { "l" }                             % niin kentän note ensimmäinen kirjain pieneksi;
          { "u" }                             % muutoin kentän note ensimmäinen kirjain isoksi.
        if$
        change.case$
        }
      if$
      note #2 global.max$ substring$ *        % Sijoitetaan muutettu alkukirjain kentän alkuun.
      "note" bibinfo.check                    % (Onko tämä rivi tarpeen?)
    }
  if$
}


% The format.title function is used for non-book-like titles.
FUNCTION {format.title}
{ title "title" bibinfo.check
  duplicate$ empty$
    'skip$
    { "\enquote{" swap$ * "}, " * }
  if$
}


FUNCTION {end.quote.title}
{ title empty$
    'skip$
    { before.all 'output.state := }
  if$
}


FUNCTION {format.full.names}
{'s :=
 "" 't :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr
      "{vv~}{ll}" format.name$
      't :=
      nameptr #1 >
        {
          namesleft #1 >
            { ", " * t * }
            {
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                {
                  " " * bbl.etal *
                }
                {
                  bbl.and
                  space.word * t *
                }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}


FUNCTION {author.editor.key.full}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            'key
          if$
        }
        { editor format.full.names }
      if$
    }
    { author format.full.names }
  if$
}


FUNCTION {author.key.full}
{ author empty$
    { key empty$
         { cite$ #1 #3 substring$ }
          'key
      if$
    }
    { author format.full.names }
  if$
}


FUNCTION {editor.key.full}
{ editor empty$
    { key empty$
         { cite$ #1 #3 substring$ }
          'key
      if$
    }
    { editor format.full.names }
  if$
}


FUNCTION {make.full.names}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.full
    { type$ "proceedings" =
        'editor.key.full
        'author.key.full
      if$
    }
  if$
}


% The output.bibitem function writes the \bibitem for the current entry
% (the label should already have been set up), and sets up the separator
% state for the output functions.  And, it leaves a string on the stack
% as per the output convention.
FUNCTION {output.bibitem}
{ newline$
  "{" write$
  select.language
  "\bibitem[{" write$
  label write$
  ")" make.full.names duplicate$ short.list =
     { pop$ }
     { * }
   if$
  "}]{" * write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}


% The n.dashify function makes each single `-' in a string a double `--'
% if it's not already
FUNCTION {n.dashify}
{
  't :=
  ""
    { t empty$ not }
    { t #1 #1 substring$ "-" =
        { t #1 #2 substring$ "--" = not
            { "--" *
              t #2 global.max$ substring$ 't :=
            }
            {   { t #1 #1 substring$ "-" = }
                { "-" *
                  t #2 global.max$ substring$ 't :=
                }
              while$
            }
          if$
        }
        { t #1 #1 substring$ *
          t #2 global.max$ substring$ 't :=
        }
      if$
    }
  while$
}


FUNCTION {word.in}
{ bbl.in " " * }


% Funktio format.date muotoilee vuosiluvun. Jos vuosiluku puuttuu,
% niin ei tulosteta mitään.
FUNCTION {format.date}
{ year "year" bibinfo.check
  duplicate$ empty$
    'skip$
    { extra.label *
      before.all 'output.state :=
      " (" swap$ * ")" *
    }
  if$
}


% The format.btitle is for formatting the title field when it is a book-like
% entry -- the style used here keeps it in uppers-and-lowers and emphasizes it.
FUNCTION {format.btitle}
{ title "title" bibinfo.check
  duplicate$ empty$
    'skip$
    { emphasize }
  if$
}


% The either.or.check function complains if both fields or an either-or pair
% are nonempty.
FUNCTION {either.or.check}
{ empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}


% The format.bvolume function is for formatting the volume and perhaps
% series name of a multivolume work.  If both a volume and a series field
% are there, we assume the series field is the title of the whole multivolume
% work (the title field should be the title of the thing being referred to),
% and we add an "of <series>".  This function is called in mid-sentence.
FUNCTION {format.bvolume}
{ volume empty$
    { "" }
    { bbl.volume volume tie.or.space.prefix
      "volume" bibinfo.check * *
      series "series" bibinfo.check
      duplicate$ empty$ 'pop$
        { swap$ bbl.of space.word * swap$
          emphasize * }
      if$
      "volume and number" number either.or.check
    }
  if$
}


% Funktio is.num tarkistaa onko pinossa merkki "0"..."9".
FUNCTION {is.num}
% Muutetaan pinon päällimmäinen merkki ASCII-koodin mukaiseksi
% kokonaisluvuksi n ja kirjoitetaan se pinoon:
{ chr.to.int$
% Kopioidaan saatu kokonaisluku n pinon päälle:
  duplicate$
% Kirjoitetaan pinoon merkin "0" ASCII-koodi:
  "0" chr.to.int$
% Jos n >= ASCII(0), niin pinoon 1, muuten pinoon 0:
  < not
% Pinon päällä on nyt 1 tai 0 ja seuraavana n.
% Vaihdetaan näiden paikat:
  swap$
% Kirjoitetaan pinoon merkin "9" ASCII-koodi:
  "9" chr.to.int$
% Jos n <= ASCII(9), niin pinoon 1, muuten pinoon 0:
  > not
% Jos pinossa on 1 1 (eli ASCII(0) <= n <= ASCII(9)), niin pinoon 1, muuten 0: 
  and
}


% Funktio extract.num lukee numeroista "0"..."9"
% koostuvan merkkijonon muuttujaan s.
FUNCTION {extract.num}
{ duplicate$ 't :=                     % t := pinossa oleva merkkijono
  "" 's :=                             % s := tyhjä merkkijono
  { t empty$ not }                     % while (t not empty) do
  { t #1 #1 substring$                 % pinoon merkkijonon t ensimmäinen merkki
    t #2 global.max$ substring$ 't :=  % Poistetaan merkkijonosta t sen ensimmäinen merkki
    duplicate$ is.num                  % jos pinossa on numero,
      { s swap$ * 's := }              % niin s := s * merkki,
      { pop$ "" 't := }                % muuten ohitetaan merkki ja asetetaan t := ""
    if$
  }
  while$
  s empty$                             % jos s on tyhjä,
    'skip$                             % niin ei tehdä mitään,
    { pop$ s }                         % muuten korvataan pinossa oleva merkkijono s:llä
  if$
}


FUNCTION {convert.edition}
{ extract.num "l" change.case$ 's :=
  s "first" = s "1" = or                         % jos s = "first" tai s = "1",
    { bbl.first 't := }                          % niin t := bbl.first,
    { s "second" = s "2" = or                    % muutoin jos s = "second" tai "2",
        { bbl.second 't := }                     % niin t := bbl.second,
        { s "third" = s "3" = or                 % muutoin jos s = "third" tai "3",
            { bbl.third 't := }                  % niin t := bbl.third,
            { s "fourth" = s "4" = or            % muutoin jos s = "fourth" tai "4",
                { bbl.fourth 't := }             % niin t := bbl.fourth,
                { s "fifth" = s "5" = or         % muutoin jos s = "fifth" tai "5",
                    { bbl.fifth 't := }          % niin t := bbl.fifth,
                    { s #1 #1 substring$ is.num  % muutoin jos s:n ensimmäinen merkki on numero,
                        { s eng.ord 't := }      % niin t := eng.ord(s)
                        { edition 't := }        % muutoin t := edition
                      if$
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
  t                                              % t:n arvo pinoon
}


FUNCTION {format.edition}
{ edition                           % edition pinoon
  duplicate$ empty$                 % Jos edition on tyhjä,
    'skip$                          % niin ei tehdä mitään,
    { convert.edition               % muutoin ?
      output.state mid.sentence =   % Jos output.state = mid.sentence,
        { "l" }                     % niin muutetaan edition pienaakkosiksi,
        { "t" }                     % muutoin muutetaan alkukirjain isoksi.
      if$
      change.case$
      "edition" bibinfo.check
      " " * bbl.edition *           % Pinoon edition * " " * bbl.edition
    }
  if$
}


% The multi.page.check function examines the page field for a "-" or "," or "+"
% so that format.pages can use "page" instead of "pages" if none exists.
% Note: global.max$ here means "take the rest of the string"
INTEGERS { multiresult }
FUNCTION {multi.page.check}
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and
    }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
        { #1 'multiresult := }
        { t #2 global.max$ substring$ 't := }
      if$
    }
  while$
  multiresult
}


% The format.pages function is used for formatting a page range.
FUNCTION {format.pages}
{ pages duplicate$ empty$          % Jos pages on tyhjä,
    'skip$                         % niin ei tehdä mitään;
    { duplicate$ multi.page.check  % muutoin tarkistetaan onko sivuja yksi vai useampia.
        { bbl.pages swap$          % Jos sivuja on useampia, niin käytetään komentoa bbl.pages
          n.dashify }              % ja muutetaan yhdysviiva - ajatusviivaksi --,
        { bbl.page swap$ }         % muutoin käytetään komentoa bbl.page.
      if$
      tie.or.space.prefix          % pinossa bbl.page(s) "~" tai " " pages 
      "pages" bibinfo.check        % tarkistetaan puuttuuko kenttä pages
      * *                          % pinossa bbl.page(s) * "~" tai " " * pages
    }
  if$
}


% The format.volume.pages function is for the volume and pages
% of a journal article.
FUNCTION {format.volume.pages}
{ volume field.or.null         % Jos volume puuttuu, niin korvataan se merkkijonolla "".
  duplicate$ empty$            % Jos volume on tyhjä,
    { pop$ format.pages }      % niin muotoillaan sivut lyhenteiden kanssa;
    { pages duplicate$ empty$  % muutoin, jos pages on tyhjä,
        'skip$                 % niin ei tehdä mitään;
        { swap$ ", " * swap$   % muutoin lisätään volume:n perään ", "
          n.dashify            % muutetaan yhdysviiva ajatusviivaksi
          *                    % pinossa volume * ", " * pages
        }
      if$
    }
  if$
}


% The format.chapter.pages, if the chapter is present, puts whatever is in the
% type field (or else "chapter" if type is empty) in front of a chapter number.
% It then appends the pages, if present.  This doesn't begin a sentence.
FUNCTION {format.chapter.pages}
{ chapter empty$
    { "" }
    { type empty$
        { bbl.chapter }
        { type "l" change.case$
          "type" bibinfo.check
        }
      if$
      chapter tie.or.space.prefix
      "chapter" bibinfo.check
      * *
    }
  if$
}


FUNCTION {format.booktitle}
{ booktitle "booktitle" bibinfo.check
  emphasize
}


FUNCTION {format.in.booktitle}
{ format.booktitle
  duplicate$ empty$
    'skip$
    { word.in swap$ * }
  if$
}


FUNCTION {format.in.editor}
{ editor duplicate$ empty$
    'skip$
    { "editor" format.names.ed
      get.bbl.editor
      " " * swap$ *
    }
  if$
}


% The function format.thesis.type returns either the (case-changed) type field,
% if it is defined, or else the default string already on the stack
% (like "Master's thesis" or "PhD thesis").
FUNCTION {format.thesis.type}
{ type duplicate$ empty$
    'pop$
    { swap$ pop$
      "t" change.case$ "type" bibinfo.check
    }
  if$
}


% The function format.tr.number makes a string starting with "Technical Report"
% (or type, if that field is defined), followed by the number if there is one;
% it returns the starting part (with a case change) even if there is no number.
% This is used at the beginning of a sentence.
FUNCTION {format.tr.number}
{ number "number" bibinfo.check
  type duplicate$ empty$
    { pop$ bbl.techrep }
    'skip$
  if$
  "type" bibinfo.check
  swap$ duplicate$ empty$
    { pop$ "t" change.case$ }
    { tie.or.space.prefix * * }
  if$
}


FUNCTION {format.article.crossref}
{ word.in " \cite{" * crossref * "}" * }


FUNCTION {format.book.crossref}
{ volume duplicate$ empty$
    { "empty volume in " cite$ * "'s crossref of " * crossref * warning$
      pop$ word.in
    }
    { bbl.volume
      swap$ tie.or.space.prefix "volume" bibinfo.check * * bbl.of space.word *
    }
  if$
  " \cite{" * crossref * "}" *
  " (" swap$ * ")" *
  before.all 'output.state :=
}


FUNCTION {format.incoll.inproc.crossref}
{ word.in " \cite{" * crossref * "}" * }


FUNCTION {format.org.or.pub}
{ 't :=
  ""
  address empty$ t empty$ and
    'skip$
    { address "address" bibinfo.check *
      t empty$
        'skip$
        { address empty$
            'skip$
            { ": " * }
          if$
          t *
        }
      if$
    }
  if$
}


FUNCTION {format.publisher.address}
{ publisher "publisher" bibinfo.warn
  format.org.or.pub
}


FUNCTION {format.organization.address}
{ organization "organization" bibinfo.check
  format.org.or.pub
}


STRINGS {oldname}
FUNCTION {name.or.dash}
{ 's :=                       % s := pinossa oleva merkkijono (nimi)
   oldname empty$             % Jos oldname on tyhjä,
     { s 'oldname := s }      % niin oldname := s ja pinoon s,
     { s oldname =            % muutoin, jos oldname = s,
         { "---{}---{}---" }  % niin pinoon "---{}---{}---", 
         { s 'oldname := s }  % muutoin oldname := s ja pinoon s.
       if$
     }
   if$
}


% Funktio format.bvolume.number.series.edition muotoilee kirjan osan/numeron,
% sarjan ja painoksen sekä lisää näiden ympärille sulkeet jasa:n tyylin mukaisesti.
FUNCTION {format.bvolume.number.series.edition}
{ volume empty$
    { number empty$
        { series field.or.null }
        { series empty$
            { number "number" bibinfo.check }
            { output.state mid.sentence =
                { bbl.number }
                { bbl.number capitalize }
              if$
              number tie.or.space.prefix "number" bibinfo.check * *
              bbl.in space.word *
              series "series" bibinfo.check *
            }
          if$
        }
      if$
    }
    { bbl.volume volume tie.or.space.prefix
      "volume" bibinfo.check * *
      series "series" bibinfo.check
      duplicate$ empty$
        'pop$
        { swap$ bbl.of space.word * swap$
          emphasize * }
      if$
      "volume and number" number either.or.check
    }
  if$
  edition empty$
    'skip$
    { duplicate$ empty$
        'skip$
        { ", " * }
      if$
      format.edition *
    }
  if$
  duplicate$ empty$
    'skip$
    { " (" swap$ * ")" *
      before.all 'output.state := }
  if$ 
}


FUNCTION {article}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  name.or.dash
  format.date "year" output.check
  format.title "title" output.check
  end.quote.title
  crossref missing$
    { journal "journal" bibinfo.check
      emphasize
      "journal" output.check
      format.volume.pages output }
    { format.article.crossref output.nonnull
      format.pages output }
  if$
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {book}
{ output.bibitem
  author empty$
    { format.editors "author and editor" output.check
      editor format.key output
      add.blank
      name.or.dash }
    { format.authors output.nonnull
      name.or.dash
      crossref missing$
        { "author and editor" editor either.or.check }
        'skip$
      if$
    }
  if$
  format.date "year" output.check
  format.btitle "title" output.check
  crossref missing$
    { format.bvolume.number.series.edition output
      format.publisher.address output }
    { format.book.crossref output.nonnull }
  if$
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {booklet}
{ output.bibitem
  format.authors output
  author format.key output
  name.or.dash
  format.date "year" output.check
  format.title "title" output.check
  end.quote.title
  howpublished "howpublished" bibinfo.check output
  address "address" bibinfo.check output
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {inbook}
{ output.bibitem
  author empty$
    { format.editors "author and editor" output.check
      editor format.key output
      name.or.dash }
    { format.authors output.nonnull
      name.or.dash
      crossref missing$
        { "author and editor" editor either.or.check }
        'skip$
      if$
    }
  if$
  format.date "year" output.check
  format.btitle "title" output.check
  crossref missing$
    { format.bvolume.number.series.edition output
      format.publisher.address output }
    { format.book.crossref output.nonnull }
  if$
  format.chapter.pages "chapter and pages" output.check
  format.pages "pages" output.check
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {incollection}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  name.or.dash
  format.date "year" output.check
  format.title "title" output.check
  end.quote.title
  crossref missing$
    { format.in.booktitle "booktitle" output.check
      format.bvolume.number.series.edition output
      format.in.editor output
      format.publisher.address output
      format.chapter.pages output
    }
    { format.incoll.inproc.crossref output.nonnull
      format.chapter.pages output }
  if$
  format.pages "pages" output.check
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {inproceedings}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  name.or.dash
  format.date "year" output.check
  format.title "title" output.check
  end.quote.title
  crossref missing$
    { format.in.booktitle "booktitle" output.check
      format.bvolume.number.series.edition output
      format.in.editor output
      publisher empty$
        { format.organization.address output }
        { organization "organization" bibinfo.check output
          format.publisher.address output
        }
      if$
      format.bvolume output
    }
    { format.incoll.inproc.crossref output.nonnull
    }
  if$
  format.pages "pages" output.check
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {conference} { inproceedings }


FUNCTION {manual}
{ output.bibitem
  format.authors output
  author format.key output
  name.or.dash
  format.date "year" output.check
  format.btitle "title" output.check
  format.bvolume.number.series.edition output
%  format.edition output
  organization "organization" bibinfo.check output
  address "address" bibinfo.check output
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {mastersthesis}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  name.or.dash
  format.date "year" output.check
  format.title
  "title" output.check
  end.quote.title
  bbl.mthesis format.thesis.type output.nonnull
  school "school" bibinfo.warn output
  address "address" bibinfo.check output
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {misc}
{ output.bibitem
  format.authors output
  author format.key output
  name.or.dash
  format.date "year" output.check
  format.title output
  end.quote.title
  howpublished "howpublished" bibinfo.check output
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {phdthesis}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  name.or.dash
  format.date "year" output.check
  format.title
  "title" output.check
  end.quote.title
  bbl.phdthesis format.thesis.type output.nonnull
  school "school" bibinfo.warn output
  address "address" bibinfo.check output
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {proceedings}
{ output.bibitem
  format.editors output
  editor format.key output
  name.or.dash
  format.date "year" output.check
  format.btitle "title" output.check
  format.bvolume.number.series.edition output
  publisher empty$
    { format.organization.address output }
    { organization "organization" bibinfo.check output
      format.publisher.address output
    }
  if$
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {techreport}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  name.or.dash
  format.date "year" output.check
  format.title
  "title" output.check
  end.quote.title
  format.tr.number output.nonnull
  institution "institution" bibinfo.warn output
  address "address" bibinfo.check output
  new.sentence
  format.note output
  fin.entry
}


FUNCTION {unpublished}
{ output.bibitem
  format.authors "author" output.check
  author format.key output
  name.or.dash
  format.date "year" output.check
  format.title "title" output.check
  end.quote.title
  new.sentence
  format.note "note" output.check
  fin.entry
}


FUNCTION {default.type} { misc }


% Komento READ lukee lähdeviitteet viitetietokannasta.
% Tyylitiedosto saa sisältää vain yhden READ-komennon.
READ


% The sortify function converts to lower case after purify$ing; it's
% used in sorting and in computing alphabetic labels after sorting
FUNCTION {sortify}
{ purify$
  "l" change.case$
}


INTEGERS { len }


% The chop.word(w,len,s) function returns either s or, if the first len
% letters of s equals w (this comparison is done in the third line of the
% function's definition), it returns that part of s after w.
FUNCTION {chop.word}
{ 's :=
  'len :=
  s #1 len substring$ =
    { s len #1 + global.max$ substring$ }
    's
  if$
}


FUNCTION {format.lab.names}
{ 's :=
  "" 't :=
  s #1 "{vv~}{ll}" format.name$
  s num.names$ duplicate$
  #2 >
    { pop$
      " " * bbl.etal *
    }
    { #2 <
        'skip$
        { s #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
            {
              " " * bbl.etal *
            }
            { bbl.and space.word * s #2 "{vv~}{ll}" format.name$
              * }
          if$
        }
      if$
    }
  if$
}


FUNCTION {author.key.label}
{ author empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
    { author format.lab.names }
  if$
}


FUNCTION {author.editor.key.label}
{ author empty$
    { editor empty$
        { key empty$
            { cite$ #1 #3 substring$ }
            'key
          if$
        }
        { editor format.lab.names }
      if$
    }
    { author format.lab.names }
  if$
}


FUNCTION {editor.key.label}
{ editor empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        'key
      if$
    }
    { editor format.lab.names }
  if$
}


FUNCTION {calc.short.authors}
{ type$ "book" =
  type$ "inbook" =
  or
    'author.editor.key.label
    { type$ "proceedings" =
        'editor.key.label
        'author.key.label
      if$
    }
  if$
  'short.list :=
}


FUNCTION {calc.label}
{ calc.short.authors
  short.list
  "("
  *
  year duplicate$ empty$
     { pop$ "" }
     'skip$
  if$
  *
  'label :=
}


% The sort.format.names function takes an argument that should be in
% BibTeX name format, and returns a string containing "   "-separated
% names in the format described above.  The function is almost the same
% as format.names.
FUNCTION {sort.format.names}
{ 's :=
  #1 'nameptr :=
  ""
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr
      "{vv{ } }{ll{ }}{  f{ }}{  jj{ }}"
      format.name$ 't :=
      nameptr #1 >
        {
          "   "  *
          namesleft #1 = t "others" = and
            { "zzzzz" * }
            { t sortify * }
          if$
        }
        { t sortify * }
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}


% The sort.format.title function returns the argument,
% but first any leading "A "'s, "An "'s, or "The "'s are removed.
% The chop.word function uses s, so we need another string variable, t
FUNCTION {sort.format.title}
{ 't :=
  "A " #2
    "An " #3
      "The " #4 t chop.word
    chop.word
  chop.word
  sortify
  #1 global.max$ substring$
}


% The auxiliary functions here, for the presort function, are analogous to
% the ones for calc.label; the same comments apply, except that the
% organization field takes precedence here over the key field.  For sorting
% purposes, we still remove a leading "The " from the organization field.
FUNCTION {author.sort}
{ author empty$
    { key empty$
        { "to sort, need author or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { author sort.format.names }
  if$
}


FUNCTION {author.editor.sort}
{ author empty$
    { editor empty$
        { key empty$
            { "to sort, need author, editor, or key in " cite$ * warning$
              ""
            }
            { key sortify }
          if$
        }
        { editor sort.format.names }
      if$
    }
    { author sort.format.names }
  if$
}


FUNCTION {editor.sort}
{ editor empty$
    { key empty$
        { "to sort, need editor or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { editor sort.format.names }
  if$
}


% There is a limit, entry.max$, on the length of an entry string variable
% (which is what its sort.key$ is), so we take at most that many characters
% of the constructed key, and hope there aren't many references that match
% to that many characters!
FUNCTION {presort}
{ calc.label
  label sortify
  "    "
  *
  type$ "book" =
  type$ "inbook" =
  or
    'author.editor.sort
    { type$ "proceedings" =
        'editor.sort
        'author.sort
      if$
    }
  if$
  #1 entry.max$ substring$
  'sort.label :=
  sort.label
  *
  "    "
  *
  title field.or.null
  sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}


ITERATE {presort}


SORT


STRINGS { last.label next.extra }


INTEGERS { last.extra.num number.label }


FUNCTION {initialize.extra.label.stuff}
{ #0 int.to.chr$ 'last.label :=   % last.label := "0"
  "" 'next.extra :=               % next.extra := ""
  #0 'last.extra.num :=           % last.extra.num := 0
  #0 'number.label :=             % number.label := 0
}


FUNCTION {forward.pass}
{ last.label label =
    { last.extra.num #1 + 'last.extra.num :=
      last.extra.num int.to.chr$ 'extra.label :=
    }
    { "a" chr.to.int$ 'last.extra.num :=
      "" 'extra.label :=
      label 'last.label :=
    }
  if$
  number.label #1 + 'number.label :=
}


FUNCTION {reverse.pass}
{ next.extra "b" =
    { "a" 'extra.label := }
    'skip$
  if$
  extra.label 'next.extra :=
  extra.label
  duplicate$ empty$
    'skip$
    { "{\natexlab{" swap$ * "}}" * }
  if$
  'extra.label :=
  label extra.label * 'label :=
}


EXECUTE {initialize.extra.label.stuff}


ITERATE {forward.pass}


REVERSE {reverse.pass}


FUNCTION {bib.sort.order}
{ sort.label
  "    "
  *
  year field.or.null sortify
  *
  "    "
  *
  title field.or.null
  sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}


ITERATE {bib.sort.order}


SORT


FUNCTION {begin.bib}
{ preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  "\begin{thebibliography}{" number.label int.to.str$ * "}" *
  write$ newline$
  "\newcommand{\enquote}[1]{''#1''}"
  write$ newline$
  "\providecommand{\natexlab}[1]{#1}"
  write$ newline$
  "\providecommand{\url}[1]{\texttt{#1}}"
  write$ newline$
  "\providecommand{\iflanguage}[3]{#3}"
  write$ newline$
  "\providecommand{\urlprefix}{\iflanguage{english}{Available from Internet: }{Saatavilla Internetist\^^b{a}: }}"
  write$ newline$
  "\providecommand{\selectlanguage}[1]{\relax}"
  write$ newline$
% Seuraavia kolmea riviä ei tarvita, jos kielen mukaan muuttuvat
% sanat määritellään jo tässä tiedostossa.
  "\newcommand{\Capitalize}[1]{\uppercase{#1}}" write$ newline$
  "\newcommand{\capitalize}[1]{\expandafter\Capitalize#1}" write$ newline$
}


% Funktio end.bib kirjoittaa thebibliography-ympäristön lopun.
FUNCTION {end.bib}
{ newline$
  "\end{thebibliography}" write$ newline$
}


% Seuraavat komennot tulostavat lähdeluettelon bbl-tiedostoon.
% Aluksi bbl-tiedostoon kirjoitetaan thebibliography-ympäristön alku
% ja muut tarvittavat komennot:
EXECUTE {begin.bib}


% Seuraavaksi alustetaan tilamuuttujien arvot:
EXECUTE {init.state.consts}


% Sitten kirjoitetaan lähdeviitteet bbl-tiedostoon. Komento
% ITERATE käy läpi tietokannoista luetun lähdeviitteiden listan
% yksi kerrallaan ja kutsuu kunkin tietueen (listan alkion) kohdalla
% tietueen tyypin mukaista funktiota. Esim. jos tietue on tyyppiä BOOK,
% niin kutsutaan funktiota book jne. Nämä puolestaan kirjoittavat
% .bbl-tiedostoon vastaavat lähdeviitteet.
ITERATE {call.type$}


% Lopuksi kirjoitetaan thebibliography-ympäristön loppu:
EXECUTE {end.bib}


%% End of file 'utastmth.bst'.
