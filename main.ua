AspectRatio    ← 16/9
ImageWidth     ← 400
ImageHeight    ← ↥ 1 ⌈ ÷ AspectRatio ImageWidth
ViewPortHeight ← 2
ViewPortWidth  ← × ViewPortHeight ÷ ImageHeight ImageWidth
FocalLength    ← 1
Camera         ← [0 0 0]

Sf ← × 1_¯1_0 [∩÷ ImageWidth ViewPortWidth ImageHeight ViewPortHeight 0]
Os ← × 0.5 [¯ViewPortWidth ViewPortHeight × 2 ¯FocalLength]

PixelGrid ← ⊢⇡⊂1⊟

ProcessOnePixel ← (
  - Camera +Os ×Sf +[0.5 0.5 0] ⇌
  ÷⊸⍜°√/+
  [White [0.5 0.7 1]] [¯⊸-1] ÷2+1 ⊡₁
  /+×
)
OnePotato ← ∵₁ProcessOnePixel PixelGrid

ProcessManyPixels ← (
  -Camera +Os ×Sf +[0.5 0.5 0] ⇌
  ÷¤ ⊸⍜°√/+
  [White [0.5 0.7 1]] [¯⊸-1]÷2+1⊡₁
  ≡(/+×) ¤ ⊙⍉
  ↯ [ImageHeight ImageWidth 3]
)
Parallel ← ProcessManyPixels ⍉ ♭₂ PixelGrid

InitialRays ← (
  ⍉ ♭₂ PixelGrid
  -Camera +Os ×Sf +[0.5 0.5 0] ⇌
  ⤙÷¤ ⊸⍜°√/+
)
Determatives ← --⊃(⋅⋅ⁿ₂|⋅∘|ⁿ₂) ⊙⊸⊃(/+×.|/+×) ⊙˜-

InitialRays ImageHeight ImageWidth
0.5 [0 0 ¯1]
≥0Determatives
⨬(/+× [White [0.5 0.7 1]] [¯⊸-1] ÷2+1 ⊡₁|Red◌) ⊙⍉
↯ [ImageHeight ImageWidth 3]
