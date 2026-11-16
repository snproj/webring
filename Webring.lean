/-
Copyright (c) 2024-2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: David Thrane Christiansen
-/

import VersoManual
import Webring.Meta.Lean

import Webring.CatHaikus
import Webring.WebringLinks
import Webring.MediaRecs
import Webring.Blog

-- This gets access to most of the manual genre (which is also useful for textbooks)
open Verso.Genre Manual

-- This gets access to Lean code that's in code blocks, elaborated in the same process and
-- environment as Verso
open Verso.Genre.Manual.InlineLean


open Webring

set_option pp.rawOnError true


#doc (Manual) "The Den" =>

{index}[example]

![Polite cat](assets/chipi.png)

Hello~~ I'm _Sunrise_; Welcome to my personal site -- this webring thing sounds cool so I wanted to try :3

I am but a friendly cat who loves writing, languages and worldbuilding. Isomorphically, I also love software, programming languages and specifications/proofs, though I'm not an expert. I majored in CS and am currently a research assistant in Singapore learning about specifications.

See if anything below tickles your fancy; If not, feel free to take a nap.


{include 1 Webring.CatHaikus}

{include 1 Webring.MediaRecs}

{include 1 Webring.Blog}

{include 1 Webring.WebringLinks}

# Stupid Joke

This site was made with Verso using the `textbook` example. People tell me this isn't a normal format for a personal website, but I'd argue it's a textbook example :3

# Index
%%%
number := false
tag := "index"
%%%

{theIndex}
