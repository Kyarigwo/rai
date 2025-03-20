AspectRatio    ← 16/9
ImageWidth     ← 400
ImageHeight    ← ↥ 1 ⌈ ÷ AspectRatio ImageWidth
ViewPortHeight ← 2
ViewPortWidth  ← × ViewPortHeight ÷ ImageHeight ImageWidth
FocalLength    ← 1
Camera         ← [0 0 0]

Sf ← × 1_¯1 [∩÷ ImageWidth ViewPortWidth ImageHeight ViewPortHeight]
Os ← × 0.5 [¯ViewPortWidth ViewPortHeight]

InitialQ ← ⍜⇌(⊂¯FocalLength)+ Os × Sf +0.5 ⇌
InitialD ← ÷⊸⍜°√/+ - Camera

RayColor ← /+×[White [0.5 0.7 1]] [¯⊸-1] ÷2+1 ⊡₁

⇡ [ImageHeight ImageWidth]
∵₁(RayColor InitialD InitialQ)
