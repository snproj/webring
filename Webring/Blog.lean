import VersoManual
import Webring.Meta.Lean

-- This gets access to most of the manual genre (which is also useful for textbooks)
open Verso.Genre Manual

-- This gets access to Lean code that's in code blocks, elaborated in the same process and
-- environment as Verso
open Verso.Genre.Manual.InlineLean


open Webring

set_option pp.rawOnError true

#doc (Manual) "Blog posts" =>

# The Curse of Hardware -- A language-centric problem framing

:::heading
Motivation
:::

Hardware projects come with a lot of headaches in my experience that software projects don't. In my early uni days I was involved in a project to create (and then embezzle) an E-paper laptop -- ordering circuit components and soldering them together with a friend.

I'm terrible with my hands; I'd often burn out components by running current in the wrong direction, or doing something or other and then that dreaded smoke would rise from the circuitry to tell you that you probably needed to buy a new one. In our case, that meant looking online for who was still in stock, begging for moar monies from the school, and then waiting for the thing to arrive in a month or so. It happened at least twice in that project alone.

If only it was a software project! In software you could bork your entire installation, wipe it clean and restart at the cost of a few hours and no money at all. Over the course of our embezzlement, my friend and I coined the term _the Curse of Hardware_.

:::heading
What is the Curse of Hardware?
:::

I'll put the final definition here first, and then we'll go through how it was formulated.

> Simply put, the Curse of Hardware is when you want to write a program in some language that forgoes certain undesirable features -- however, the compile target that your language must compile into is forcing your high-level language to include those features.

In the previous example, the curse of hardware was the friction it took to do anything with physical metal and wires, compared to just writing code and being able to fuck up and re-write / re-run things effortlessly and for free.

But how might we generically describe this sort of friction?

In particular:
- We were operating in the domain of: Physically working with circuitry
- We wanted to get a new circuit component
- We wanted to avoid having to pay money or deal with shipping

This next part is going to sound pretty ridiculous, but stay with me here -- I propose to imagine reality/the universe itself as a machine much like a CPU, where any action you take within it corresponds to some set of CPU instructions that change the machine's state.

Of course, when you're a person who wants a new circuit component, usually only a very small subsection of reality is actually relevant to buying a new circuit component -- you obviously don't think about the Andromeda galaxy, nor do you think about adjusting your chair (though in principle, you could).

Instead, the relevant slice of reality for your problem would be the slice that includes what we would think of as:
- circuitry concepts
- your actual physical circuitry, where it is located, its status etc
- the money you have, the vendors you have access to, your own location in time and space
- the project goals and deadlines

By giving names to concepts like "the money you have", I am already starting to form a sort of higher-level language _over_ the "subsection of reality" _itself_, which I see as some kind of inscrutable, practically undescribable assembly code. I promise I'm not some kind of techbro psychotic -- this is just me assuming that there is always some kind of arbitrarily lower-level description (say, completely via atoms) that exists for the world but which is way too cumbersome to use for us.



# Prescriptive versus descriptive

:::heading
Motivation
:::

Many discussions and debates I have with my friends go in circles and get messily tangled because of implicit mixing-up between _descriptive_ and _prescriptive_ statements; people (including me) tend to use both modes, and switch back and forth between them without making it clear.

First, I'll give a brief overview of what I take each word to mean; feel free to skip if you're bored.

:::heading
Classic examples of descriptivism versus prescriptivism
:::

The field of linguistics in particular, which I hold fondly in my heart, is greatly concerned about

:::heading
How they might fit together
:::

# You are your own TCB -- A purely materialistic reason to do mental work, even if AI objectively does it better

:::heading
Motivation
:::

As AI improves over time, the argument that a human will always be able to think in some superior way to an AI (at least in a measurable sense) is getting dicier and dicier to make. If the day comes when we decide that AI does "think" better/faster than humans, would it make sense for humans to outsource mental work to AI?

:::heading
A zoomed-in, individualistic view
:::

:::heading
A zoomed-out, anthropological view
:::

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
