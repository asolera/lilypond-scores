\version "2.20.0"

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  score-markup-spacing = #6
  ragged-right = ##f
}


\header {
  title = "Central do Brasil"
  subtitle = "arrangement for solo piano"
  composer = "Antonio Pinto e Jacques Morelenbaum"
  maintainer = "Andrew Solera"
  maintainerEmail = "andrewsolera@gmail.com"
  maintainerWeb = "http://github.com/asolera"
  createdAt = "2020/December/31"
  lastupdated = "2021/January/7"
  tagline = \markup {
    Arranged and engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    by \maintainer
    with \with-url #"http://lilypond.org/web/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
  copyright = \markup \italic \center-column {
    \line {
      Arrangement based on main theme from Central Station (Central do Brasil) film (1998)
    }
    \line {
      and Youtube videos https://www.youtube.com/watch?v=g05ClF_pvF8
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
  \tempo "Adagio" 4 = 80
  \set Staff.pedalSustainStyle = #'mixed
}

right = \relative c' {
  \global
  c'1(\mp | %m1 (begin introduction)
  \appoggiatura c8 d2. d4 | %m2
  d'2.~\decr d8 d,16 d' | %m3
  c1) | %m4
  d,2.\enddecr( g4 | %m5
  e2)  a,4( c | %m6
  d2.) d4( | %m7
  c4.\cr a8 f4 a)\endcr | \break %m8 (end introduction)
  \tempo "Andante" 4 = 95
  \bar "||"
  <e c'>4.->( a8 e4.-> a8) | %m9
  <e c'>4.->( a8 e4.-> a8) | %m10
  <f c'>4.->( a8 f4.-> a8) | %m11
  <f c'>4.->( a8 f4.-> a8) | %m12
  <e c'>4.->( a8 e4.-> a8) | %m13
  <e c'>2.~->\decr <e c'>8 a\enddecr | %m14
  c1~\mp( | %m15
  c2~ c8 e d c | %m16
  f,2.~\decr f8 c' | %m17
  e,2.) r8 c'(\enddecr | %m18
  d1~\p\cr | %m19
  d4) g8( f e d c d) | %m20
  e4.(\endcr\decr c8 a4. f'8) | %m21
  e4.( c8 a4.\fermata c8)\enddecr | %m22
  d4.(\cr^"A tempo" a8 f4. d'8) | %m23
  c4.( a8 f4. a8)\endcr | %m24
  <e c'>4.->( a8 e4.-> a8) | %m25
  <e c'>4.->( a8 e4.-> a8) | %m26
  <f c'>4.->( a8 f4.-> a8) | %m27
  <f c'>4.->( a8 f4.-> a8) | %m28
  <e c'>4.->( a8 e4.-> a8) | %m29
  <e c'>4.->( a8 e4.-> a8) | %m30
  <f c'>4.->( a8 f4.-> a8) | %m31
  <f c'>4.->( a8 f4.-> a8) | %m32
  <e c'>4.->( a8 e4.-> a8) | %m33
  <e c'>2.~->\decr <e c'>8 a\enddecr | %m34
  c1~\mf( | %m35
  c2~ c8 e d c | %m36
  f,2.~\cr f8) c'( | %m37
  e,2.) r8 c'( | %m38
  d1~ | %m39
  d4) g8( f e d c d)\endcr | %m40
  e4.( c8 a4. f'8) | %m41
  e4.( c8 a4. c8) | %m42
  d4.(\cr a8 f4. d'8 | %m43
  \autoBeamOff c8) \autoBeamOn <c, c'>( <d d'> <e e'> <f f'> <g g'> <a a'> <b b'>)\endcr | %m44
  <c c'>\f->( <a a'> <c c'> <d d'> <c c'>-> <a a'> <e e'> <a a'>) | %m45
  <c c'>->( <a a'> <c c'> <d d'> <c c'>-> <a a'> <e e'> <a a'>) | %m46
  <c c'>->( <a a'> <c c'> <d d'> <c c'>-> <a a'> <f f'> <a a'>) | %m47
  <c c'>->( <a a'> <c c'> <d d'> <c c'>-> <a a'> <f f'> <a a'>) | %m48
  <c e a c>2\ff( <b e a b> | %m49
  <a c e a> <e e'>) | %m50
  <e' a c e>( <d f a d> | %m51
  <a a'> <d d'>) | %m52
  <e a c e>1( | %m53
  <c c'>2 <d d'>4 <c c'>) | %m54
  <e a c e>2( <a, a'>~ | %m55
  <a a'>4) <d d'>2( <f, f'>4 | %m56
  <a c e a>2\decr <e e'>~ | %m57
  <e e'>1) | %m58
  \override TextSpanner.bound-details.left.text = "dim. e rit."
  <a c e a>2(\startTextSpan <e e'>~ | %m59
  <e e'>1~ |  %m60
  <e e'>\fermata\stopTextSpan\enddecr) |  %m61 (end)
  \bar "|."
}

left = \relative c {
  \global
  <f a c>1\sustainOn | %m1 (begin introduction)
  <f a b>\sustainOff\sustainOn | %m2
  <d f a>\sustainOff\sustainOn | %m3
  <c e a>\sustainOff\sustainOn | %m4
  <g' bf d>\sustainOff\sustainOn | %m5
  <a c e>\sustainOff\sustainOn | %m6
  <fs a d>\sustainOff\sustainOn | %m7
  <f a c>2\sustainOff\sustainOn <d f a>4\sustainOff\sustainOn <c f a> | %m8 (end introduction)
  \tempo "Andante" 4 = 95
  \bar "||"
  <a e'>8\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m9
  <a e'>8\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m10
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m11
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m12
  <a, e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m13
  <a e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'>4 | \break %m14
  <f' a c>\sustainOff\sustainOn <f a c> <f a c> <f a c> | %m15
  <f a b>\sustainOff\sustainOn <f a b> <f a b> <f a b> | %m16
  <d f a>\sustainOff\sustainOn <d f a> <d f a> <d f a> | %m17
  <c e a>\sustainOff\sustainOn <c e a> <c e a> r | %m18
  <bf' g'>8\sustainOff\sustainOn d <bf g'> d <bf f'> d <bf f'> d | %m19
  <bf e>\sustainOff\sustainOn d <bf e> d <bf f'> d <bf f'> d | %m20
  <a e'>\sustainOff\sustainOn c <a e'> c <a f'> c <a e'> c | %m21
  <fs, d'>\sustainOff\sustainOn a <fs d'> a r2 | %m22
  <f c'>8\sustainOff\sustainOn a <f c'> a <f d'> a <f c'> a | %m23
  <d, a'>\sustainOff\sustainOn f <d a'> f <c a'> f <c a'> f | %m24
  <a, e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m25
  <a e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m26
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m27
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m28
  <a, e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m29
  <a e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m30
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m31
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m32
  <a, e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m33
  <a e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'>4 |  %m34
  <f' a c>4\sustainOff\sustainOn <f a c> <f a c> <f a c> | %m35
  <f a b>\sustainOff\sustainOn <f a b> <f a b> <f a b> | %m36
  <d f a>\sustainOff\sustainOn <d f a> <c f a> <c f a> | %m37
  <c e a>\sustainOff\sustainOn <c e a> <a c e > <a c e> | %m38
  <g' bf d>\sustainOff\sustainOn <g bf d>8 d <f bf d>4 <f bf d> | %m39
  <e bf' d>\sustainOff\sustainOn <e bf' d> <f bf d> <f bf d> | %m40
  <a c e>\sustainOff\sustainOn <a c e> <a c f> <a c e> | %m41
  <fs a d>\sustainOff\sustainOn <fs a d> <fs a d> <fs a d> | %m42
  <f a c>\sustainOff\sustainOn <f a c> <f a c> <f a c> | %m43
  <d f a>\sustainOff\sustainOn <d f a> <c f a> <c f a> | %m44
  <a e'>8\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m45
  <a e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m46
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m47
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m48
  <a, e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m49
  <a e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m50
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m51
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m52
  <a, e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m53
  <a e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m54
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m55
  <d a'>\sustainOff\sustainOn f <d a'> f <d a'> f <d a'> f | %m56
  <a, e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m57
  <a e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m58
  <a e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m59
  <a e'>\sustainOff\sustainOn c <a e'> c <a e'> c <a e'> c | %m60
  <a e'>1 | %m61 (end)
  \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \right
    \new Staff = "left" { \clef bass \left }
  >>
  \layout { }
  \midi { }
}