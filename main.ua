AspectRatio    ← 16/9
ImageWidth     ← 400
ImageHeight    ← ↥ 1 ⌈ ÷ AspectRatio ImageWidth
ViewPortHeight ← 2
ViewPortWidth  ← × ViewPortHeight ÷ ImageHeight ImageWidth
FocalLength    ← 1
Camera         ← [0 0 0]

Sf ← × 1_¯1_0 [∩÷ ImageWidth ViewPortWidth ImageHeight ViewPortHeight 0]
Os ← × 0.5 [¯ViewPortWidth ViewPortHeight × 2 ¯FocalLength]

InitialPoints ← ⊢⇡⊂1⊟

A ← (
  - Camera +Os ×Sf +[0.5 0.5 0] ⇌
  ÷⊸⍜°√/+
  [White [0.5 0.7 1]] [¯⊸-1] ÷2+1 ⊡₁
  /+×
)
B ← ∵₁A InitialPoints

C ← (
  -Camera +Os ×Sf +[0.5 0.5 0] ⇌
  ÷¤ ⊸⍜°√/+
  [White [0.5 0.7 1]] [¯⊸-1]÷2+1⊡₁
  /+ ≡(≡×¤)
  ↯ [ImageHeight ImageWidth 3]
)
D ← C ⍉ ♭₂ InitialPoints

E ← (
  ≡(-Camera +Os ×Sf +[0.5 0.5 0] ⇌)
  ≡(÷⊸⍜°√/+)
  ≡(/+× [White [0.5 0.7 1]] [¯⊸-1] ÷2+1 ⊡₁)
  ↯ [ImageHeight ImageWidth 3])
F ← E ♭₂ InitialPoints

G ← (
  -Camera +Os ×Sf +[0.5 0.5 0] ⇌
  ÷¤ ⊸⍜°√/+
  [White [0.5 0.7 1]] [¯⊸-1]÷2+1⊡₁
  ≡(/+×) ¤ ⊙⍉
  ↯ [ImageHeight ImageWidth 3]
)
H ← G ⍉ ♭₂ InitialPoints

⌵- now : H ImageHeight ImageWidth now
# ⌵- now : D ImageHeight ImageWidth now
# ⌵- now : B ImageHeight ImageWidth now
# ⌵- now : F ImageHeight ImageWidth now
