\version "2.18.2"

% HAPPY BIRTHDAY for Guitar
% arranged by Tom Swan

% Various definitions follow, mostly obvious
\paper {
  #(include-special-characters)
  #(set-paper-size "letter")
}

\layout { ragged-right = ##f }

\header {
  title = "Happy Birthday"
  arranger = "Arranged by Tom Swan"
  copyright = "Copyright &copyright; 2017 by Tom Swan"
  tagline = "www.tomswan.com"
}

globalDefs = { 
  \key a \major 
  \time 3/4 
}

% Notes, fingerings, and string numbers
% <> is a chord; r rest; is sharp (es flat); 4 qtr note; 8 8th note; 2 half note
% -2 finger; \2 string; ' raise pitch; , lower pitch; | bar line
notesVoiceA = \relative c' {
  \set TabStaff.minimumFret = #4
  \set TabStaff.restrainOpenStrings = ##t
  \set fingeringOrientations = #'(left)
  r2 <gis-2 cis e>8 <gis cis e> |
  <gis cis fis-4>4 <gis cis e> <gis cis e a> |
  <a d gis\2-4>2 <gis d' e>8 <gis d' e> |
  <gis d' fis>4 <gis d' e> <gis d' e b'> | \break
  <gis cis e a>2 <gis cis e>8 <gis cis e> |
  <cis fis b e>4 <a d gis cis> <fis b e a> |
  <a d gis\2> <dis, a' c fis> <b' f' a d>8 <b f' a d> |
  <a e' gis cis>4 <fis b e a> <gis d' fis b>
  \set TabStaff.minimumFret = #0
  \arpeggioArrowUp
  <a, a' e' gis cis>2\fermata\arpeggio r4 |
}

% Group some things together for convenience
guitarVoiceA = {
  \globalDefs 
  \notesVoiceA 
  \bar "|."
}

% Create the score and tablature systems
\score {
  <<
    \new Staff { 
      \clef "treble_8" 
      \guitarVoiceA 
    }
    \new TabStaff { 
      \notesVoiceA 
    }
  >>
  \layout { }
}
