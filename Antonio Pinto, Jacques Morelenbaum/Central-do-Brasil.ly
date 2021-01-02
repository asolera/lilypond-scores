\version "2.20.0"

\paper {
  #(set-paper-size "a4")
  % ragged-last-bottom = ##f
  score-markup-spacing = #6
}

\header {
  title = "Central do Brasil"
  instrument = "for solo piano"
  composer = "Antonio Pinto e Jacques Morelenbaum"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    by Andrew Solera
    with \with-url #"http://lilypond.org/web/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
  copyright = \markup \italic \center-column {
    \line {
      Based on main theme from Central Station (Central do Brasil) film (1998)
    }
    \line {
      Inspired by Youtube videos https://www.youtube.com/watch?v=g05ClF_pvF8
    }
    \line {
      and https://www.youtube.com/watch?v=YFmMbGcwUbg
    }
  }
}

\language "english"

global = {
  \key c \major
  \time 4/4
  \tempo "Adagio" 4 = 65
}

introductionRight = \relative c' {
  c'1(\mp | %m1
  \appoggiatura c8 d2. d4 | %m2
  d'2.~\decr d8 d,16 d'16 | %m3
  c1) | %m4
  d,2.\enddecr( g4 | %m5
  e2)  a,4( c4 | %m6
  d2.) d4( | %m7
  c4.\cr a8 f4 a4)\endcr | \break %m8
}

introductionLeft = \relative c {
  \set Staff.pedalSustainStyle = #'mixed
  <f a c>1\sustainOn | %m1
  <f a b>1\sustainOff\sustainOn | %m2
  <d f a>1\sustainOff\sustainOn | %m3
  <c e a>1\sustainOff\sustainOn | %m4
  <g' bf d>1\sustainOff\sustainOn | %m5
  <a c e>1\sustainOff\sustainOn | %m6
  <fs a d>1\sustainOff\sustainOn | %m7
  <f a c>2\sustainOff\sustainOn <d f a>4\sustainOff\sustainOn <c f a>4 | \break %m8
}

MainLaMinorRight = \relative c' { 
  <e c'>4.->( a8 e4.-> a8) 
}

MainLaMinorLeft = \relative c { 
  <a e'>8\sustainOff\sustainOn c8 <a e'>8 c8 <a e'>8 c8 <a e'>8 c8
}

MainReMinorRight = \relative c' { 
  <f c'>4.->( a8 f4.-> a8) 
}

MainReMinorLeft = \relative c { 
  <d a'>8\sustainOff\sustainOn f8 <d a'>8 f8 <d a'>8 f8 <d a'>8 f8
}

firstVerseRight = \relative c' {
  c'1~\mp( | %m15
  c2~ c8 e8 d8 c8 | %m16
  f,2.~\decr f8 c'8 | %m17
  e,2.) r8 c'8(\enddecr | %m18
  d1~\p\cr | %m19
  d4) g8( f8 e8 d8 c8 d8) | %m20
  e4.(\endcr\decr c8 a4. f'8) | %m21
  e4.( c8 a4.\fermata c8)\enddecr | %m22
  d4.(\cr^"A tempo" a8 f4. d'8) | %m23
  c4.( a8 f4. a8)\endcr | %m24
}

firstVerseLeft = \relative c {
  <f a c>4\sustainOff\sustainOn <f a c>4 <f a c>4 <f a c>4 | %m15
  <f a b>4\sustainOff\sustainOn <f a b>4 <f a b>4 <f a b>4 | %m16
  <d f a>4\sustainOff\sustainOn <d f a>4 <d f a>4 <d f a>4 | %m17
  <c e a>4\sustainOff\sustainOn <c e a>4 <c e a>4 r4 | %m18
  <bf' g'>8\sustainOff\sustainOn d8 <bf g'>8 d8 <bf f'>8 d8 <bf f'>8 d8 | %m19
  <bf e>8\sustainOff\sustainOn d8 <bf e>8 d8 <bf f'>8 d8 <bf f'>8 d8 | %m20
  <a e'>8\sustainOff\sustainOn c8 <a e'>8 c8 <a f'>8 c8 <a e'>8 c8 | %m21
  <fs, d'>8\sustainOff\sustainOn a <fs d'>8 a r2 | %m22
  <f c'>8\sustainOff\sustainOn a <f c'>8 a <f d'>8 a <f c'>8 a | %m23
  <d, a'>8\sustainOff\sustainOn f <d a'>8 f <c a'>8 f <c a'>8 f | %m24
}

secondVerseRight = \relative c' {
  c'1~\mf( | %m35
  c2~ c8 e8 d8 c8 | %m36
  f,2.~\cr f8) c'8( | %m37
  e,2.) r8 c'8( | %m38
  d1~ | %m39
  d4) g8( f8 e8 d8 c8 d8)\endcr | %m40
  e4.( c8 a4. f'8) | %m41
  e4.( c8 a4. c8) | %m42
  d4.(\cr a8 f4. d'8 | %m43
  \autoBeamOff c8) \autoBeamOn <c, c'>8( <d d'>8 <e e'>8 <f f'>8 <g g'>8 <a a'>8 <b b'>8)\endcr | %m44
}

secondVerseLeft = \relative c {
  <f a c>4\sustainOff\sustainOn <f a c>4 <f a c>4 <f a c>4 | %m35
  <f a b>4\sustainOff\sustainOn <f a b>4 <f a b>4 <f a b>4 | %m36
  <d f a>4\sustainOff\sustainOn <d f a>4 <c f a>4 <c f a>4 | %m37
  <c e a>4\sustainOff\sustainOn <c e a>4 <a c e >4 <a c e>4 | %m38
  <g' bf d>4\sustainOff\sustainOn <g bf d>8 d8 <f bf d>4 <f bf d>4 | %m39
  <e bf' d>4\sustainOff\sustainOn <e bf' d>4 <f bf d>4 <f bf d>4 | %m40
  <a c e>4\sustainOff\sustainOn <a c e>4 <a c f>4 <a c e>4 | %m41
  <fs a d>4\sustainOff\sustainOn <fs a d>4 <fs a d>4 <fs a d>4 | %m42
  <f a c>4\sustainOff\sustainOn <f a c>4 <f a c>4 <f a c>4 | %m43
  <d f a>4\sustainOff\sustainOn <d f a>4 <c f a>4 <c f a>4 | %m44
}

finalRitornelloRight = \relative c'' {
  <c c'>8\f->( <a a'>8 <c c'>8 <d d'>8 <c c'>8-> <a a'>8 <e e'>8 <a a'>8) | %m45
  <c c'>8->( <a a'>8 <c c'>8 <d d'>8 <c c'>8-> <a a'>8 <e e'>8 <a a'>8) | %m46
  <c c'>8->( <a a'>8 <c c'>8 <d d'>8 <c c'>8-> <a a'>8 <f f'>8 <a a'>8) | %m47
  <c c'>8->( <a a'>8 <c c'>8 <d d'>8 <c c'>8-> <a a'>8 <f f'>8 <a a'>8) | %m48
  <c e a c>2\ff( <b e a b>2 | %m49
  <a c e a>2 <e e'>2) | %m50
  <e' a c e>2( <d f a d>2 | %m51
  <a a'>2 <d d'>2) | %m52
  <e a c e>1( | %m53
  <c c'>2 <d d'>4 <c c'>4) | %m54
  <e a c e>2( <a, a'>2~ | %m55
  <a a'>4) <d d'>2( <f, f'>4 | %m56
  <a c e a>2\decr <e e'>2~ | %m57
  <e e'>1) | %m58
  \override TextSpanner.bound-details.left.text = "dim. e rit."
  <a c e a>2(\startTextSpan <e e'>2~ | %m59
  <e e'>1~ |  %m60
  <e e'>1\fermata\stopTextSpan\enddecr) |  %m61 (fine)
}

finalRitornelloLeft = \relative c { 
  \MainLaMinorLeft | %m45
  \MainLaMinorLeft | %m46
  \MainReMinorLeft | %m47
  \MainReMinorLeft | %m48
  \MainLaMinorLeft | %m49
  \MainLaMinorLeft | %m50
  \MainReMinorLeft | %m51
  \MainReMinorLeft | %m52
  \MainLaMinorLeft | %m53
  \MainLaMinorLeft | %m54
  \MainReMinorLeft | %m55
  \MainReMinorLeft | %m56
  \MainLaMinorLeft | %m57
  \MainLaMinorLeft | %m58
  \MainLaMinorLeft | %m59
  \MainLaMinorLeft | %m60
  <a e'>1 | %m61 (fine)
}

firstRitornelloRight = \relative c' {
  \MainLaMinorRight | %m9
  \MainLaMinorRight | %m10
  \MainReMinorRight | %m11
  \MainReMinorRight | %m12
  \MainLaMinorRight | %m13
  <e c'>2.~->\decr <e c'>8 a8\enddecr | %m14
}

firstRitornelloLeft = \relative c {
  \MainLaMinorLeft | %m9
  \MainLaMinorLeft | %m10
  \MainReMinorLeft | %m11
  \MainReMinorLeft | %m12
  \MainLaMinorLeft | %m13
  <a e'>8\sustainOff\sustainOn c8 <a e'>8 c8 <a e'>8 c8 <a e'>4 | \break %m14
}

secondRitornelloRight = \relative c' {
  \MainLaMinorRight | %m25
  \MainLaMinorRight | %m26
  \MainReMinorRight | %m27
  \MainReMinorRight | %m28
  \MainLaMinorRight | %m29
  \MainLaMinorRight | %m30
  \MainReMinorRight | %m31
  \MainReMinorRight | %m32
  \MainLaMinorRight | %m33
  <e c'>2.~->\decr <e c'>8 a8\enddecr | %m34
}

secondRitornelloLeft = \relative c {
  \MainLaMinorLeft | %m25
  \MainLaMinorLeft | %m26
  \MainReMinorLeft | %m27
  \MainReMinorLeft | %m28
  \MainLaMinorLeft | %m29
  \MainLaMinorLeft | %m30
  \MainReMinorLeft | %m31
  \MainReMinorLeft | %m32
  \MainLaMinorLeft | %m33
  <a e'>8\sustainOff\sustainOn c8 <a e'>8 c8 <a e'>8 c8 <a e'>4 | \break %m34
}

right = \relative c' {
  \global
  \introductionRight %m1 ~ %m8
  \tempo "Andante" 4 = 90
  \firstRitornelloRight %m9 ~ %m14
  \firstVerseRight | %m15 ~ %m24
  \secondRitornelloRight %m25 ~ %m34
  \secondVerseRight %m35 ~ %m44
  \finalRitornelloRight %m45 ~ %m61
  \bar "|."
}

left = \relative c {
  \global
  \introductionLeft | %m1 ~ %m8
  \tempo "Andante" 4 = 90
  \firstRitornelloLeft %m9 ~%m14
  \firstVerseLeft | %m15 ~ %m24
  \secondRitornelloLeft %m25 ~ %m34
  \secondVerseLeft %m35 ~ %m44
  \finalRitornelloLeft %m45 ~ %m61
  \bar "|."
}

% for PDF/print purpose
\score {
  \new PianoStaff <<
    \new Staff = "right" \right
    \new Staff = "left" { \clef bass \left }
  >>
  \layout { }
}

% for MIDI purpose
\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \unfoldRepeats { \right }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \unfoldRepeats { \left } }
  >>
  \midi {
    \tempo 4=80
  }
}