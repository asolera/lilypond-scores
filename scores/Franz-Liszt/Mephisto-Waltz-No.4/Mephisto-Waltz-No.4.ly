\version "2.20.0"

\paper {
  #(set-paper-size "a4")
  % ragged-last-bottom = ##f
  score-markup-spacing = #6
}

\header {
  title = "Mephisto Waltz No.4"
  composer = "Franz Liszt"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    by Andrew Solera
    with \with-url #"http://lilypond.org/web/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

\language "english"

global = {
  \key d \major
  \time 6/8
  \tempo "Allegro vivace" 4. = 120
  \set Staff.pedalSustainStyle = #'mixed
}

right = \relative c {
  \global
  \change Staff = "left"
  \voiceOne
  r8^\p cs-. ds-. e-.[ r fs-.] | %m1
  r gs-. r a-. b-. cs-. | %m2
  \change Staff = "right"
  r cs-. ds-. e-.[ r fs-.] | %m3
  r_\markup { \italic "staccato" } gs-. r \stemDown a-. b-. cs-. | %m4
  \stemNeutral r\cresc <cs, cs'>-. <ds ds'>-. <e e'>-.[ r <fs fs'>-.] | %m5
  r <gs gs'>-. r <a a'>-. <b b'>-. <cs cs'>-. | %m6
  r <gs gs'>-. r <a a'>-. <b b'>-. <cs cs'>-.\! | %m7
  r\cr <fs, fs'>-. <gs gs'>-. <a a'>-. <b b'>-. <cs cs'>-.\! | %m8
  <d d'>4._\markup { \dynamic f \italic "con brio" } <e e'>4. | %m9
  <es es'>4. <fs fs'>4. | %m10
  <b b'>4. <bf bf'>4. | %m11
  <a a'>4. <fs fs'>4. | %m12
  <d d'>4. <e e'>4. | %m13
  <es es'>4. <fs fs'>4. | %m14
  <b b'>4. <bf bf'>4. | %m15
  <a a'>4. <fs fs'>4. | %m16
  <d d'>4( <cs cs'>8 <d d'>4) r8 | %m17
  <b b'>4( <as as'>8 <b b'>4 <cs cs'>8) | %m18
  <ds ds'> <e e'> <es es'> <fs fs'> <gs gs'> <as as'> | %m19
  <b b'> <as as'> <gs gs'> <fs fs'> <b, b'> <cs cs'> | %m20
  <d! d'!>4( <cs cs'>8 <d d'>4) r8 | %m21
  <b b'>4( <as as'>8 <b b'>4 <cs cs'>8) | %m22
  <ds ds'> <e e'> <es es'> <fs fs'> <gs gs'> <as as'> | %m23
  <b b'> <as as'> <gs gs'> <fs fs'> <b, b'> <cs cs'> | %m24
  \key c \minor
  <ef ef'>4._\markup { \italic "sempre" \dynamic f }^\markup { \italic "legato" } <f f'>4. | %m25
  <fs fs'>4. <g g'>4. | %m26
  <c c'>4. <b b'>4. | %m27
  <bf! bf'!>4. <g g'>4. | %m28
  <ef ef'>4. <f f'>4. | %m29
  <fs fs'>4. <g g'>4. | %m30
  <c c'>4. <b b'>4. | %m31
  <bf! bf'!>4. <g g'>4. | %m32
  <ef ef'>4( <d d'>8 <ef ef'>4) r8 | %m33
  <c c'>4( <b b'>8 <c c'>4 <d d'>8) | %m34
}

left = \relative c {
  \global
  \voiceTwo
  r8 cs,-. ds-. e-. r fs-. | %m1
  r gs-. r a-. b-. cs-. | %m2
  \stemUp
  r <cs, cs'>-. <ds ds'>-. <e e'>-.[ r <fs fs'>-.] | %m3
  r <gs gs'>-. r \stemDown <a a'>-. <b b'>-. <cs cs'>-. | %m4
  \stemNeutral r <cs, cs'>-. <ds ds'>-. <e e'>-.[ r <fs fs'>-.] | %m5
  r <gs gs'>-. r <a a'>-. <b b'>-. <cs cs'>-. | %m6
  r <gs gs'>-. r <a a'>-. <b b'>-. <cs cs'>-. | %m7
  r <fs, fs'>-. <gs gs'>-. <a a'>-. <b b'>-. <cs cs'>-. | %m8
  << 
    { \stemNeutral r8\sustainOn \clef treble <fs a d> <fs a d> <fs a d>\sustainOff <fs a d> <fs a d> } \\
    { \stemDown <fs, fs'>4 s2 } 
  >> | %m9
  <a' d es>8 <a d es> <a d es> <a d fs> <a d fs> <a d fs> | %m10
  << 
    { \stemNeutral r8\sustainOn \clef treble <d fs b> <d fs b> <d fs bf>\sustainOff <d fs bf> <d fs bf> } \\
    { \clef bass \stemDown <fs,, fs'>4 s2 } 
  >> | %m11
  <cs'' fs a>8 <cs fs a> <cs fs a> <a cs fs> <a cs fs> <a cs fs> | %m12
  << 
    { \stemNeutral r8\sustainOn \clef treble <fs a d> <fs a d> <fs a d>\sustainOff <fs a d> <fs a d> } \\
    { \clef bass \stemDown <fs, fs'>4 s2 } 
  >> | %m13
  <a' d es>8 <a d es> <a d es> <a d fs> <a d fs> <a d fs> | %m14
  << 
    { \stemNeutral r8\sustainOn \clef treble <d fs b> <d fs b> <d fs bf>\sustainOff <d fs bf> <d fs bf> } \\
    { \clef bass \stemDown <fs,, fs'>4 s2 } 
  >> | %m15
  <cs'' fs a>8 <cs fs a> <cs fs a> <a cs fs> <a cs fs> <a cs fs> | %m16
  << 
    { \stemNeutral r8 \clef treble <fs b d> <fs b d> <fs b d> <fs b d> <fs b d> | %m17
       <fs d' fs>8 <fs d' fs> <fs d' fs> <fs d' fs> r r } \\ %m18
    { \clef bass \stemDown <fs, fs'>4\sustainOn s2 | %m17
       s2.\sustainOff } %m18
  >> | %m17~%m18
  << 
    { \stemNeutral r8 \clef treble <fs' b ds> <fs b ds> <fs b ds> <fs b ds> <fs b ds> | %m19
       r \clef treble <fs b ds> <fs b ds> <fs b ds> r r } \\ %m20
    { \clef bass \stemDown <fs, fs'>4\sustainOn s2 | %m19
      \clef bass <fs fs'>4 s4 s4\sustainOff } %m20
  >> | %m19~%m20
  << 
    { \stemNeutral r8 \clef treble <fs' b d> <fs b d> <fs b d> <fs b d> <fs b d> | %m21
       <fs d' fs>8 <fs d' fs> <fs d' fs> <fs d' fs> r r } \\ %m22
    { \clef bass \stemDown <fs, fs'>4\sustainOn s2 | %m21
       s2\sustainOff\sustainOn s8 s16 s16\sustainOff } %m22
  >> | %m21~%m22
  << 
    { \stemNeutral r8 \clef treble <fs' b ds> <fs b ds> <fs b ds> <fs b ds> <fs b ds> | %m23
       r \clef treble <fs b ds> <fs b ds> <fs b ds> r r } \\ %m24
    { \clef bass \stemDown <fs, fs'>4\sustainOn s2 | %m23
      \clef bass <fs fs'>4\sustainOff\sustainOn s4 s4\sustainOff } %m24
  >> | %m23~%m24
  \key c \minor
  << 
    { \stemNeutral r8 \clef treble <g' bf ef> <g bf ef> <g bf ef> <g bf ef> <g bf ef> | %m25
      <bf ef fs>8 <bf ef fs> <bf ef fs> <bf ef g> <bf ef g> <bf ef g> | } \\ %m26
    { \clef bass \stemDown <g, g'>4\sustainOn s2 | %m25
    s2 s8 s16 s16\sustainOff } %m26
  >> | %m25~%m26
  << 
    { \stemNeutral r8 \clef treble <ef'' g c> <ef g c> <ef g b!> <ef g b> <ef g b> | %m27
      <d g bf!>8 <d g bf> <d g bf> <bf d g> <bf d g> <bf d g> | } \\ %m28
    { \clef bass \stemDown <g, g'>4\sustainOn s2 | %m27
    s2\sustainOff\sustainOn s8 s16 s16\sustainOff } %m28
  >> | %m27~%m28
  << 
    { \stemNeutral r8 \clef treble <g' bf ef> <g bf ef> <g bf ef> <g bf ef> <g bf ef> | %m29
      <bf ef fs>8 <bf ef fs> <bf ef fs> <bf ef g> <bf ef g> <bf ef g> | } \\ %m30
    { \clef bass \stemDown <g, g'>4\sustainOn s2 | %m29
    s2 s8 s16 s16\sustainOff } %m30
  >> | %m29~%m30
  << 
    { \stemNeutral r8 \clef treble <ef'' g c> <ef g c> <ef g b!> <ef g b> <ef g b> | %m31
      <d g bf!>8 <d g bf> <d g bf> <bf d g> <bf d g> <bf d g> | } \\ %m32
    { \clef bass \stemDown <g, g'>4\sustainOn s2 | %m31
    s2\sustainOff\sustainOn s8 s16 s16\sustainOff } %m32
  >> | %m31~%m32
  << 
    { \stemNeutral r8 \clef treble <g' c ef> <g c ef> <g c ef> <g c ef> <g c ef> | %m33
       <g ef' g>8 <g ef' g> <g ef' g> <g ef' g> r r } \\ %m34
    { \clef bass \stemDown <g, g'>4\sustainOn s2 | %m33
       s2.\sustainOff } %m34
  >> | %m33~%m34
}


\score {
  \new PianoStaff <<
    \new Staff = "right" \right
    \new Staff = "left" { \clef bass \left }
  >>
  \layout { }
  \midi { }
}