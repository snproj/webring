import VersoManual
import Webring.Meta.Lean

-- This gets access to most of the manual genre (which is also useful for textbooks)
open Verso.Genre Manual

-- This gets access to Lean code that's in code blocks, elaborated in the same process and
-- environment as Verso
open Verso.Genre.Manual.InlineLean


open Webring

set_option pp.rawOnError true

#doc (Manual) "Useless Ramblings" =>

I have various ideas about things that aren't very concrete, and for my own catharsis I thought I'd express them here; I'll probably try and improve my explanations over time but for now read at your own expense :3

> Note: I genuinely like the motivation section of papers and think it's a nice way to start a piece of writing -- I'm not trying to be pretentious or something I suck at actually writing papers kthxbye

# The Curse of Hardware -- A useless language-based problem framing

> Fair warning -- this is a terribly confusing post to read, don't read it unless you want to be confused by my terrible explanations. I'll probably try and add diagrams and more formalization to help, but I just wanted to get this thought out of my head first.

:::heading
Motivation
:::

I was looking for a way to generically describe the headaches that come with working with hardware, but which are absent with software, and found that you could frame basically any problem as some kind of leaky-abstraction-esque situation. It's not very useful, but I want to write it down since it's an old idea of mine.

Once, I was building an E-paper laptop, and burnt out a component by running current in the wrong direction. From there, in order to complete the E-paper laptop, I'd have to look online for vendors, pay some money, and wait for the new component to arrive in a month or so. Time and money -- it was such a drag! In contrast, in a software project you could bork your entire installation, wipe it clean and restart at the cost of a few hours and no money at all. From this experience, a friend and I coined the term _the Curse of Hardware_.

(Yes, I know software can have similar problems too -- this is just the experience I had.)

:::heading
What is the Curse of Hardware?
:::

Simply put, the Curse of Hardware is when you want to write a program in some language that does not include certain undesirable features -- however, the compile target that your language must compile into is forcing your language to include those features.

In the previous example, after I'd burnt out my component:
- I wanted to complete the E-paper laptop (the "program" I wanted to write)
- without spending time and money the way I ended up doing (I wanted to write the `complete_E_paper_laptop` program using a language that has no concept of time or money)
- but of course, the universe does not work this way (the compile target refuses to cooperate)

Why is there a higher-level language and a compile target involved in the situation? The higher-level language is just whatever human-readable concept I come up in my mind to describe the "program"; i.e. "look for vendors that sell this component", "ask the school for funding", etc. As for the compile target, since we're talking about actions within the real-life universe (like building a laptop or talking to vendors), I'm imagining that there is some arbitrarily low-level description of the universe (say, an atom-by-atom description, and you can probably go lower -- I ain't a physicist) that your human-readable actions eventually translate to when you take them.

So at the end of the day, this is basically a convoluted way of shaking your fist at the universe when it doesn't let you do things your way.

:::heading
What is this useful for?
:::

Uh, nothing probably.

I do like it because it helps frame basically any problem in terms of languages, and I like languages. Unsurprisingly, it tends to be more useful when the "compile target" is a bit higher-level than the arbitrarily low-level machine code analogue of the universe.

For instance, let's say:
- I want to want to go on a trip that involves both hiking and swimming pools (the "program" I want to write)
- I only want to pack one kind of shoe; hiking boots or slippers (I wanted to write the `go_on_a_trip` program using a language where I am restricted to only packing one kind of shoe)
- but of course, the universe does not work this way. Instead of going directly to the arbitrarily low "universe assembly", it suffices to think of a lower-level language describing the universe that includes the facts that hiking needs hiking boots, and swimming pools require slippers.

# A mental note on prescriptive versus descriptive

Many discussions and debates I have with my friends go in circles and get messily tangled because of implicit mixing-up between _descriptive_ and _prescriptive_ statements; people (including me) tend to use both modes, and switch back and forth between them without making it clear.

I think it would be nice to have some general framing to reach for when this occurs -- I think the key is just to treat "descriptive" as the larger framing than "prescriptive".

When a person is being prescriptive, they are expressing what they think a system should be transformed into. This implies the existence of a larger system that includes that person + the smaller system they're being prescriptive about. Expressing that larger system would be being descriptive about the same issue.

# You are your own TCB -- A purely materialistic reason to do mental work, even if AI objectively does it better

As AI improves over time, the argument that a human will always be able to think in some superior way to an AI (at least in a measurable sense) is getting dicier and dicier to make. If the day comes when we decide that AI does "think" better/faster than humans, would it make sense for humans to outsource mental work to AI?

:::heading
A zoomed-in, individualistic view
:::

If you have a completely verified system, the last remaining link of trust is just how *you* know that system is verified. Did someone tell you it was verified? Did you inspect the code yourself? Maybe you trust the toolchain by reputation and statistics?

It's just another way of phrasing the *intent* issue that people are facing in verification -- for all things you want to prove about your program, the *real* proof goal is in your head. Even if a 100% deterministic, machine-verified program can give you an answer, you need to take that answer, and check it against the goal in your head.

Furthermore, let's step away from a situation where all we care about is a single piece of software. If you want to know something about the real world, you can always form a logical model of that world and verify that; but now you have to be able to keep track of whether that logical model fits the world well, and that system -- the system including both your logical model and the world -- does not live in software. In other words, as long as you have not formalized the entire universe, you will need to update your logical model, and checking whether the updated version fits the universe is something that you need to check in your brain.

But admittedly, to some extent we can automate that. For instance, in practice we usually trust the weather data given to us by news channels -- it's not principled, but it's practical. So is there anything else you'd need to do yourself?

In my opinion, yes. One source of updates to the logical model is updates to fit the state of the world around you -- that can practically be automated -- but another part of that logical model, if that model is to be useful to you in particular, is your own goals and desires.

In other words, the *real* system you're dealing with isn't just your program, but a system containing your program, the rest of the universe, and finally your state of mind.

Honestly, this isn't very different from trying to exist in society while maintaining a level of confidence in the beliefs you hold about your surroundings.

:::heading
A zoomed-out, anthropological view
:::

On the other hand, if we take societal evolution into account, it's plausible to me that eventually, AI and society in general will change in such a way that the systems you interface with as a member of society will start to predict what you want better than you can yourself. In that case, maybe full automation is the eventuality.

Is that bleak? See the dopamine tank problem.

# The dopamine tank problem

If you really think about it, the canonical set of problems (the ones your mum and teacher warn you about) that arise from taking hard illegal drugs fall into several categories:
1. They physically hurt you due to your physical body chemistry
2. You become unable to take care of yourself / your family / society etc.
3. You cannot secure a reliable, lifelong supply.

All this begs the question -- if you had a drug and a setup where these were solved, what then? Essentially, if you were to be put in a tank of endless chemical bliss, that was somehow formulated to never physically harm you, and you had no responsibilities, you were somehow guaranteed to be taken care of your entire life, and were guaranteed a lifelong stay in the tank, would that be good? Or dystopian?

# Verifiable intent -- a purely materialistic AND non-economic reason to dislike technically good AI art

:::heading
Motivation
:::

Many people do not like AI art, including myself, but I have found several common explanations to be somewhat unsatisfying to me personally.

I have heard various arguments that boil down to:
1. AI art is bad because AI can never be as technically proficient as a human
2. AI art is bad because it screws over artists in the economy (stealing their work falls under this)
3. AI art is bad because axiomatically, art must be human to be good

Reason 1 is probably the weakest in my opinion, since:
- There is no firm technical reason why AI could not be as technically proficient
- Indeed, it seems to have been getting very proficient over a short period of time

Reason 2 _is_ convincing to me in that it encourages me to not economically motivate the proliferation of AI art, but I feel that it does not fully explain my dislike of it -- when I enjoy a piece of music, and thereafter find out that it is AI generated, I feel not only reminded of the damage to the art scene, but also independently like something is lost of the music itself.

Reason 3 feels like too strong a condition to me. I can appreciate aesthetics in nature -- a sunny field, an interesting computer-generated tune, though the enjoyment I derive is different from that of human art. I think this argument must be refined for me.

I think I have found a way to phrase that refinement; it probably will not be surprising in essence, but I find the phrasing particularly clear and thus satisfying.

:::heading
Verifiable Intent
:::

Simply put, I think what I have lost is:

> The ability to know for sure what the author's intent was.

To me, art is, among other things, an act whereby the artist communicates a semantic payload. It is simply a message, encoded in an interesting language, for example:
- The language of poetry (involving meter, metaphors etc)
- The language of visual art (involving art style, character design etc)

As such art is a social act for me, even when I have no direct communication with the artist. Perhaps to make a slightly unappealing but frank comparison, it is not unlike the parasociality of an influencer -- they communicate their opinions and worldview and one takes part in a sense, if not directly with the influencer then with the community of other listeners. An artist does this simply in another language.

However, generative AI has the tendency to be used in a way where the AI-user does not closely (or sometimes ever) curate the output. This means that whatever the output is corresponds only very loosely (or not at all) to the intent of the AI-user, because:

> Intent definitionally requires the AI-user to have made a mental link from the content to their desired semantic payload.

:::heading
Why is the mental link materially important?
:::

So _why_ does intent require the mental link? I will try to link it in a way that does not require some kind of metaphysical / spiritual viewpoint.

Languages are comprised of syntax and semantics. When one designs a programming language, you create a syntax, but this is meaningless without the semantics. These semantics can be given either:
1. Explicitly, by writing out the rules in some well-defined mathematical form
2. Implicitly, by implementing a compiler that (via transforming the syntax into machine code), gives the syntax meaning in terms of its literal _action_ on the CPU.

However, natural language is constantly evolving and individual to every person. As such, my view is that natural language is given semantics in a way similar to Case 2 above:

> When you say a thing, it is given semantics implicitly, via its literal action in your brain.

This means that uncurated AI art is not given any semantics that relates to the AI-user.

To be pedantic, that is _not_ to say that the AI art has no semantics whatsoever -- but the semantics trace back to the entire system that generates the AI art, including the AI company and the social media algorithm and so on.

I don't like such semantics because when I peruse art about the emotions of an artist via a poem that happens to be typeset in Microsoft Word, I am not interested in hearing the opinions of Microsoft on those emotions -- that is literally not what I came for.

:::heading
Angelically intentional artists
:::

What about a hypothetical artist who:
- Has the ability to imagine a clear and exact image of what he wants in his head
- Prompts an AI with a detailed prompt
- Doesn't stop until the AI has generated EXACTLY what he imagined in his head (assuming this is possible)

This would satisfy my definition of intent; in this case, the generative AI is "just a tool" by which the artist has created his art.

However, the _recipient_ of the art has no way of knowing this, so from my point of view as a consumer of art it is impossible for me to be secure in knowing what the semantics of the message even is, and therefore what it means.

For what it's worth, I'll point out that this is not just a practical issue, but also an information-theoretic one.

:::heading
What is the difference between generative AI and a pen?
:::

As I showed in the previous section, generative AI, just like a pen, or Photoshop, is a means by which an artist _can_ create intentional art. What is the difference between these tools, then?

My thinking is that it is in theory a continuous spectrum of how much conscious intent an artist has to put into translating their message into syntax:
- A pen requires every stroke to be intentional
- Photoshop might handle more details without conscious input from the user; for instance, how exactly to create a gradient of color, or how exactly to magic-crop a shape (which can be done without neural AI)
- Generative AI can theoretically handle the entirety of the output without conscious input from the user (you can technically make an AI system that comes pre-loaded with a prompt and the user clicks "run")

Theoretically, even a pen comes with some lack of intent -- not literally every atom of ink is consciously placed by the artist. Also theoretically, an artist could technically accidentally cause a pen to make marks on paper, and claim it as art -- I think this might be why many people don't like abstract art, because they _suspect_ there is no intent.

Therefore, my differentiation between generative AI and a pen is based on:
- The empirical knowledge that in real-world situations, a pen statistically forces the user to put more conscious effort into the output than generative AI
- A personal threshold for tolerance of possible lack of intent

:::heading
Caveats
:::

This section will probably fill up as I find problems with my own arguments. One can of worms I can find now is that I'm assuming the semantics of an artpiece is in the head of the artist, and not the art viewer. Whether this is really the case is probably up to your own definition of art. As a person who values the agency of the artist over everything else, I think it's reasonable to say that the artist's interpretation is the canonical semantics by which the art is given meaning. It is of course almost impossible for the viewer to have the exact same semantics in his head as the artist; this simply means that the act of viewing and interpreting the original artpiece is itself a form of art -- it is as if the viewer has forked the art off into his own version.

# AIPunk -- An unimaginative future work from cyberpunk
%%%
draft := true
%%%
# The Abstract Concept of Miku
%%%
draft := true
%%%
# I like explicit explanations in art
%%%
draft := true
%%%
# Some arguments I enjoy dissecting
%%%
draft := true
%%%
- You never know someone's starting point
- You are unique in your own way
    - What happens if AI is better
    - What happens if someone else is better
    -
- Time is limited and therefore precious

# Rubber ducking is just proof sketching
%%%
draft := true
%%%
