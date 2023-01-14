# Calculus Cheat-Sheet

## Trigonometry:

---

### Definitions:

|  |
| :--- |
| $\sin{x} = \sin{\alpha} \equiv x = \alpha + k2\pi \vee x = \pi - \alpha + k2\pi$ |
| $\cos{x} = \cos{\alpha} \equiv x = \alpha \pm x + k2\pi$ |
| $\tan{} = \tan{\alpha} \equiv x = \alpha + k\pi$ |
|  |
| $\arcsin{x} = y \equiv x = \sin{x} \wedge y \in [\frac{-\pi}{2}, \frac{\pi}{2}]$ |
| $\arccos{x} = y \equiv x = \cos{x} \wedge y \in [0, \pi]$ |
| $\arctan{x} = y \equiv x = \tan{x} \wedge y \in ]\frac{-\pi}{2}, \frac{\pi}{2}[$ |
| $arccot\ x = y \equiv x = \cot{x} \wedge y \in ]0, \pi[$ |
| $arccot\ a = \begin{cases}\arctan{\frac{1}{a}} & a \in \mathbb{R}{^+_0}\\\pi + \arctan{\frac{1}{a}} & a \in \mathbb{R}{^-_0}\\\pi & a = 0\end{cases}$ |

### Formulas:

|  |  |
| :--- | :--- |
| $\sin^2{x} + \cos^2{x} = 1$ | $\sin(a + b) = \sin{a}\cos{b} + \cos{a}\sin{b}$ |
| $\tan^2{x} + 1 = \frac{1}{\cos^2{x}}$ | $\sin(a - b) = \sin{a}\cos{b} - \cos{a}\sin{b}$ |
| $\cot^2{x} + 1 = \frac{1}{\sin^2{x}}$ | $\cos(a + b) = \cos{a}\cos{b} - \sin{a}\sin{b}$ |
| $\sin{2x} = 2\sin{x}\cos{x}$ | $\cos(a - b) = \cos{a}\cos{b} + \sin{a}\sin{b}$ |
| $\sin{2x} = \frac{2\tan{x}}{1 + \tan^2{x}}$ | $\tan(a + b) = \frac{\tan{a} + \tan{b}}{1 - \tan{a}\tan{b}}$ |
| $\cos{2x} = \cos^2{x} - \sin^2{x}$ | $\tan(a - b) = \frac{\tan{a} - \tan{b}}{1 + \tan{a}\tan{b}}$ |
| $\cos{2x} = 1 - 2\sin^2{x}$ | $\sin{^2x} = \frac{1 - \cos{2x}}{2}$ |
| $\cos{2x} = 2\cos^2{x} - 1$ | $\cos{^2x} = \frac{1 + \cos{2x}}{2}$ |
| $\cos{2x} = \frac{1 - \tan^2{x}}{1 + \tan^2{x}}$ | $\forall x \in [-1, 1] : \arcsin{x} + \arccos{x} = \frac{\pi}{2}$ |
| $\tan{2x} = \frac{2\tan{x}}{1 - \tan^2{x}}$ | $\forall x \in \mathbb{R} : \arctan{x} + arccot{x} = \frac{\pi}{2}$ |

#### Formulas of Simpson:

> $a = \frac{a + b}{2} + \frac{a - b}{2}$  
> $b = \frac{a + b}{2} - \frac{a - b}{2}$

|  |
| :--- |
| $\sin{a} + \sin{b} = 2\sin{\frac{a + b}{2}}\cos{\frac{a - b}{2}}$ |
| $\sin{a} - \sin{b} = 2\cos{\frac{a + b}{2}}\sin{\frac{a - b}{2}}$ |
| $\cos{a} + \cos{b} = 2\cos{\frac{a + b}{2}}\cos{\frac{a - b}{2}}$ |
| $\cos{a} - \cos{b} = -2\sin{\frac{a + b}{2}}\sin{\frac{a - b}{2}}$ |

\pagebreak

## Derivatives:

---

### Basic Derivatives:

|  |  |
| :--- | :--- |
| $D(c) = 0$ | $D(\sin{x}) = \cos{x}$ |
| $D(x) = 1$ | $D(\cos{x}) = -\sin{x}$ |
| $D(nx) = n$ | $D(\tan{x}) = \frac{1}{\cos^2{x}}$ |
| $D(x^n)  = nx^{n-1}$ | $D(\cot{x}) = \frac{-1}{\sin^2{x}}$ |
| $D(\frac{1}{x}) = \frac{-1}{x^2}$ | $D(\arcsin{x}) = \frac{1}{\sqrt{1 - x^2}}$ |
| $D(\sqrt{x}) = \frac{1}{2\sqrt{x}}$ | $D(\arccos{x}) = \frac{-1}{\sqrt{1 - x^2}}$ |
| $D(\sqrt[n]{x}) = D(x^{1/n}) = \frac{1}{n \cdot \sqrt[n]{x^{n-1}}}$  | $D(arctan x) = \frac{1}{1 + x^2}$ |
| $D(e^x) = e^x$ | $D(\sinh) = \cosh{x}$ |
| $D(a^x) = a^x\ln{a}$ | $D(\cosh{x}) = \sinh{x}$
| $D(\log{_a}{x}) = \frac{1}{\ln{a} \cdot x}$ | $D(\tanh{x}) = \frac{1}{\cosh^2{x}}$ |
| $D(x^x) = x^x(\ln{x} + 1)$ | $D(\coth{x}) = \frac{-1}{\sinh^2{x}}$ |

### Rules of Calculation:

|  |
| :--- |
| $D(f(x) + c) = D(f(x))$ |
| $D(cf(x)) = c \cdot f'(x)$ |
| $D(\lambda{_1} f(x) + \lambda{_2} g(x)) = \lambda{_1} f'(x) + \lambda{_2} g'(x)$ |
| $(f \cdot g)'(x) = f'(x) \cdot g(x) + f(x) \cdot g'(x)$ |
| $(\frac{f}{g})'(x) = \frac{f'(x) \cdot g(x) - f(x) \cdot g'(x)}{g^2(x)}$ |
| $(f \circ g)'(x) = (f' \circ g)(x) \cdot g'(x)$ |
| $f(x) =\begin{cases}g(x) & \text{P(x)}\\\ h(x) & \text{Q(x)}\end{cases} \implies f'(x) =\begin{cases}g'(x) & \text{P(x)}\\\ h'(x) & \text{Q(x)}\end{cases}$ |
| $g(x) = f^{-1}(x) \implies g'(x) = \frac{1}{(f' \circ g)(x)}$ |

\pagebreak

## Integrals:

---

### Fundamental Integrals:

|  |  |
| :--- | :--- |
| $\int{dx} = x + c$ | $\int{\frac{1}{\cos^2{x}}dx} = \tan{x} + c$ |
| $\int{x^ndx} = \frac{x^{n+1}}{n + 1} + c \quad n \in \mathbb{N} \setminus \{-1\}$ | $\int{\frac{1}{\sin^2{x}}dx} = -\cot{x} + c$ |
| $\int{\frac{1}{x}dx} = \ln{\vert x \vert} + c$ | $\int{\frac{1}{1 + x^2}dx} = \arctan{x} + c$ |
| $\int{e^xdx} = e^x + c$ | $\int{\frac{1}{a^2 + x^2}dx} = \frac{1}{a}\arctan{\frac{x}{a}} + c$ |
| $\int{a^xdx} = \frac{a^x}{\ln{a}} + c$ | $\int{\frac{1}{\sqrt{1 - x^2}}dx} = \arcsin{x} + c$ |
| $\int{\frac{1}{\sqrt{x^2 + k}}dx} = \ln{\vert x + \sqrt{x^2 + k} \vert} + c$ | $\int{\frac{1}{\sqrt{a^2 - x^2}}dx} = \arcsin{\frac{x}{a}} + c$ |
| $\int{\sin{x}\ dx} = -\cos{x} + c$ | $\int{\sinh{x}\ dx} = \cosh{x} + c$ |
| $\int{\cos{x}\ dx} = \sin{x} + c$ | $\int{\cosh{x}\ dx} = \sinh{x} + c$ |

### Rules of Calculation:

|  |
| :--- |
| $\int_a^b{f} + \int_a^b{g} = \int_a^b{f + g}$ |
| $\int_a^b{rf} = r\int_a^b{f} \quad \quad r \in \mathbb{R}$ |
| $\int_a^c{f} + \int_c^b{f} = \int_a^b{f}$ |
| $\frac{d}{dx}\int_a^x{f} = f(x) \quad \quad x \geq a$ |
| $\int{f^n(x)f'(x)dx} = \frac{f^{n + 1}(x)}{n + 1} + c$ |
| $\int{\frac{f'(x)}{f(x)}dx} = \ln{f(x)} + c$ |
| $\int{f'(x)g(x)dx} = (f \cdot g)(x) - \int{f(x)g'(x)dx}$ \hspace{1cm} (partial integration) |
| $\int{(f \circ g)(x)g'(x)dx} = \int{f(u)du} \quad \quad g(x) = u$ \hspace{0.76cm}  (substitution) |
