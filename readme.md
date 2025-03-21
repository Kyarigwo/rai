# Raytracing in one weekend in Uiua

Implementing [Markdown in one
weekend](<https://raytracing.github.io/books/RayTracingInOneWeekend.html>) in
Uiua.  Will see how hard this is, and how fast it goes.

![image](images/SphereInter1.png)

If we have a ray starting at $Q$ indirection $\hat{d}$, and we want to find if
it intersects a circle with center $C$ and radius $R$.

Let $\Delta = C - Q$.  Then we have $\Delta^2 = (\hat{d} \cdot \Delta)^2 + r^2$

Then $r^2 = \Delta^2 - (\hat{d} \cdot \Delta)^2$ and the determitive is
$R^2 - \Delta^2 + (\hat{d} \cdot \Delta)^2 \ge 0$