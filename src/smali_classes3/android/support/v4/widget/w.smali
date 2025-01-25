.class public Landroid/support/v4/widget/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/w$a;
    }
.end annotation


# static fields
.field private static final j6:Landroid/view/animation/Interpolator;


# instance fields
.field private DW:I

.field private EQ:[I

.field private FH:I

.field private Hw:I

.field private J0:Landroid/view/VelocityTracker;

.field private J8:F

.field private Mr:Landroid/view/View;

.field private QX:I

.field private U2:Z

.field private VH:[F

.field private Ws:F

.field private XL:I

.field private Zo:[F

.field private final a8:Landroid/view/ViewGroup;

.field private aM:Landroid/widget/OverScroller;

.field private gn:[F

.field private final j3:Landroid/support/v4/widget/w$a;

.field private final lg:Ljava/lang/Runnable;

.field private tp:[I

.field private u7:[I

.field private v5:[F

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/widget/u;

    invoke-direct {v0}, Landroid/support/v4/widget/u;-><init>()V

    sput-object v0, Landroid/support/v4/widget/w;->j6:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/w$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/w;->Hw:I

    new-instance v0, Landroid/support/v4/widget/v;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/v;-><init>(Landroid/support/v4/widget/w;)V

    iput-object v0, p0, Landroid/support/v4/widget/w;->lg:Ljava/lang/Runnable;

    if-eqz p2, :cond_53

    if-eqz p3, :cond_4b

    iput-object p2, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000  # 20.0f

    mul-float p3, p3, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Landroid/support/v4/widget/w;->QX:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroid/support/v4/widget/w;->FH:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Landroid/support/v4/widget/w;->J8:F

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroid/support/v4/widget/w;->Ws:F

    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Landroid/support/v4/widget/w;->j6:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    return-void

    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW(F)F
    .registers 4

    const/high16 v0, 0x3f000000  # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private DW(III)I
    .registers 7

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object v0, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    invoke-direct {p0, v2}, Landroid/support/v4/widget/w;->DW(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_38

    mul-float v2, v2, v1

    add-float/2addr v1, v2

    int-to-float p1, p2

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000  # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_45

    :cond_38
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000  # 256.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_45
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private DW(FFI)V
    .registers 6

    invoke-direct {p0, p3}, Landroid/support/v4/widget/w;->Zo(I)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->v5:[F

    iget-object v1, p0, Landroid/support/v4/widget/w;->VH:[F

    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Landroid/support/v4/widget/w;->Zo:[F

    iget-object v1, p0, Landroid/support/v4/widget/w;->gn:[F

    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Landroid/support/v4/widget/w;->u7:[I

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/w;->v5(II)I

    move-result p1

    aput p1, v0, p3

    iget p1, p0, Landroid/support/v4/widget/w;->we:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/widget/w;->we:I

    return-void
.end method

.method private DW(IIII)Z
    .registers 15

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_1c

    if-nez p2, :cond_1c

    iget-object p1, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/w;->FH(I)V

    return p1

    :cond_1c
    iget-object v5, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;IIII)I

    move-result v6

    iget-object v1, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/w;->FH(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private FH(Landroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_25

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v4/widget/w;->VH(I)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_22

    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/w;->VH:[F

    aput v3, v5, v2

    iget-object v3, p0, Landroid/support/v4/widget/w;->gn:[F

    aput v4, v3, v2

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_25
    return-void
.end method

.method private VH()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/w;->v5:[F

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->Zo:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->VH:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->gn:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->u7:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->tp:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->EQ:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Landroid/support/v4/widget/w;->we:I

    return-void
.end method

.method private VH(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/w;->DW(I)Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for this pointer before ACTION_MOVE. It likely happened because "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ViewDragHelper"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_2d
    const/4 p1, 0x1

    return p1
.end method

.method private Zo(I)V
    .registers 11

    iget-object v0, p0, Landroid/support/v4/widget/w;->v5:[F

    if-eqz v0, :cond_7

    array-length v1, v0

    if-gt v1, p1, :cond_50

    :cond_7
    add-int/lit8 p1, p1, 0x1

    new-array v1, p1, [F

    new-array v2, p1, [F

    new-array v3, p1, [F

    new-array v4, p1, [F

    new-array v5, p1, [I

    new-array v6, p1, [I

    new-array p1, p1, [I

    if-eqz v0, :cond_42

    array-length v7, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->Zo:[F

    array-length v7, v0

    invoke-static {v0, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->VH:[F

    array-length v7, v0

    invoke-static {v0, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->gn:[F

    array-length v7, v0

    invoke-static {v0, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->u7:[I

    array-length v7, v0

    invoke-static {v0, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->tp:[I

    array-length v7, v0

    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->EQ:[I

    array-length v7, v0

    invoke-static {v0, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_42
    iput-object v1, p0, Landroid/support/v4/widget/w;->v5:[F

    iput-object v2, p0, Landroid/support/v4/widget/w;->Zo:[F

    iput-object v3, p0, Landroid/support/v4/widget/w;->VH:[F

    iput-object v4, p0, Landroid/support/v4/widget/w;->gn:[F

    iput-object v5, p0, Landroid/support/v4/widget/w;->u7:[I

    iput-object v6, p0, Landroid/support/v4/widget/w;->tp:[I

    iput-object p1, p0, Landroid/support/v4/widget/w;->EQ:[I

    :cond_50
    return-void
.end method

.method private gn()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/widget/w;->J8:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/w;->Ws:F

    iget v2, p0, Landroid/support/v4/widget/w;->J8:F

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/w;->j6(FFF)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/w;->Ws:F

    iget v3, p0, Landroid/support/v4/widget/w;->J8:F

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/w;->j6(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/w;->j6(FF)V

    return-void
.end method

.method private j6(FFF)F
    .registers 6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_a

    return v1

    :cond_a
    cmpl-float p2, v0, p3

    if-lez p2, :cond_15

    cmpl-float p1, p1, v1

    if-lez p1, :cond_13

    goto :goto_14

    :cond_13
    neg-float p3, p3

    :goto_14
    return p3

    :cond_15
    return p1
.end method

.method private j6(III)I
    .registers 5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    if-le v0, p3, :cond_f

    if-lez p1, :cond_d

    goto :goto_e

    :cond_d
    neg-int p3, p3

    :goto_e
    return p3

    :cond_f
    return p1
.end method

.method private j6(Landroid/view/View;IIII)I
    .registers 12

    iget v0, p0, Landroid/support/v4/widget/w;->Ws:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/w;->J8:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Landroid/support/v4/widget/w;->j6(III)I

    move-result p4

    iget v0, p0, Landroid/support/v4/widget/w;->Ws:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/w;->J8:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Landroid/support/v4/widget/w;->j6(III)I

    move-result p5

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_2d

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_2f

    :cond_2d
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_2f
    div-float/2addr v0, v2

    if-eqz p5, :cond_35

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_37

    :cond_35
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_37
    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Landroid/support/v4/widget/w;->DW(III)I

    move-result p2

    iget-object p4, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {p4, p1}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Landroid/support/v4/widget/w;->DW(III)I

    move-result p1

    int-to-float p2, p2

    mul-float p2, p2, v0

    int-to-float p1, p1

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public static j6(Landroid/view/ViewGroup;FLandroid/support/v4/widget/w$a;)Landroid/support/v4/widget/w;
    .registers 4

    invoke-static {p0, p2}, Landroid/support/v4/widget/w;->j6(Landroid/view/ViewGroup;Landroid/support/v4/widget/w$a;)Landroid/support/v4/widget/w;

    move-result-object p0

    iget p2, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000  # 1.0f

    div-float/2addr v0, p1

    mul-float p2, p2, v0

    float-to-int p1, p2

    iput p1, p0, Landroid/support/v4/widget/w;->FH:I

    return-object p0
.end method

.method public static j6(Landroid/view/ViewGroup;Landroid/support/v4/widget/w$a;)Landroid/support/v4/widget/w;
    .registers 4

    new-instance v0, Landroid/support/v4/widget/w;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroid/support/v4/widget/w;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/w$a;)V

    return-object v0
.end method

.method private j6(FF)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/w;->U2:Z

    iget-object v1, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v2, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/w;->U2:Z

    iget p2, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne p2, v0, :cond_14

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/w;->FH(I)V

    :cond_14
    return-void
.end method

.method private j6(FFI)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/w;->j6(FFII)Z

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/w;->j6(FFII)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit8 v0, v0, 0x4

    :cond_e
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/w;->j6(FFII)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x2

    :cond_17
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/w;->j6(FFII)Z

    move-result p1

    if-eqz p1, :cond_21

    or-int/lit8 v0, v0, 0x8

    :cond_21
    if-eqz v0, :cond_2f

    iget-object p1, p0, Landroid/support/v4/widget/w;->tp:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    iget-object p1, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {p1, v0, p3}, Landroid/support/v4/widget/w$a;->j6(II)V

    :cond_2f
    return-void
.end method

.method private j6(IIII)V
    .registers 15

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_1d

    iget-object v2, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v3, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;II)I

    move-result p1

    iget-object v2, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-static {v2, v3}, Landroid/support/v4/view/s;->j6(Landroid/view/View;I)V

    :cond_1d
    move v6, p1

    if-eqz p4, :cond_2f

    iget-object p1, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v2, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {p1, v2, p2, p4}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;II)I

    move-result p2

    iget-object p1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    sub-int v2, p2, v1

    invoke-static {p1, v2}, Landroid/support/v4/view/s;->DW(Landroid/view/View;I)V

    :cond_2f
    move v7, p2

    if-nez p3, :cond_34

    if-eqz p4, :cond_3f

    :cond_34
    iget-object v4, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v5, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    sub-int v8, v6, v0

    sub-int v9, v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;IIII)V

    :cond_3f
    return-void
.end method

.method private j6(FFII)Z
    .registers 8

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Landroid/support/v4/widget/w;->u7:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_56

    iget v0, p0, Landroid/support/v4/widget/w;->XL:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/support/v4/widget/w;->EQ:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_56

    iget-object v0, p0, Landroid/support/v4/widget/w;->tp:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_56

    iget v0, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float v0, v0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_2f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2f

    goto :goto_56

    :cond_2f
    const/high16 v0, 0x3f000000  # 0.5f

    mul-float p2, p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_47

    iget-object p2, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {p2, p4}, Landroid/support/v4/widget/w$a;->DW(I)Z

    move-result p2

    if-eqz p2, :cond_47

    iget-object p1, p0, Landroid/support/v4/widget/w;->EQ:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    return v1

    :cond_47
    iget-object p2, p0, Landroid/support/v4/widget/w;->tp:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_56

    iget p2, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_56

    const/4 v1, 0x1

    :cond_56
    :goto_56
    return v1
.end method

.method private j6(Landroid/view/View;FF)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iget-object v3, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-eqz v1, :cond_2f

    if-eqz p1, :cond_2f

    iget p1, p0, Landroid/support/v4/widget/w;->FH:I

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    return v0

    :cond_2f
    if-eqz v1, :cond_3e

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    return v0

    :cond_3e
    if-eqz p1, :cond_4c

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4c

    const/4 v0, 0x1

    :cond_4c
    return v0
.end method

.method private v5(II)I
    .registers 6

    iget-object v0, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/w;->QX:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/w;->QX:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1b

    or-int/lit8 v0, v0, 0x4

    :cond_1b
    iget-object v1, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/w;->QX:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_28

    or-int/lit8 v0, v0, 0x2

    :cond_28
    iget-object p1, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v1, p0, Landroid/support/v4/widget/w;->QX:I

    sub-int/2addr p1, v1

    if-le p2, p1, :cond_35

    or-int/lit8 v0, v0, 0x8

    :cond_35
    return v0
.end method

.method private v5(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/w;->v5:[F

    if-eqz v0, :cond_33

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/w;->DW(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_33

    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/w;->v5:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->Zo:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->VH:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->gn:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->u7:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->tp:[I

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->EQ:[I

    aput v1, v0, p1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    xor-int/lit8 p1, p1, -0x1

    iget v0, p0, Landroid/support/v4/widget/w;->we:I

    and-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/widget/w;->we:I

    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public DW(II)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_31

    iget-object v1, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/w$a;->j6(I)I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_2e

    return-object v1

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_31
    const/4 p1, 0x0

    return-object p1
.end method

.method public DW()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-direct {p0}, Landroid/support/v4/widget/w;->VH()V

    iget-object v0, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    :cond_10
    return-void
.end method

.method public DW(I)Z
    .registers 4

    iget v0, p0, Landroid/support/v4/widget/w;->we:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public DW(Landroid/view/MotionEvent;)Z
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/w;->DW()V

    :cond_11
    iget-object v4, v0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    :cond_1b
    iget-object v4, v0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_104

    if-eq v2, v6, :cond_ff

    if-eq v2, v4, :cond_70

    const/4 v7, 0x3

    if-eq v2, v7, :cond_ff

    const/4 v7, 0x5

    if-eq v2, v7, :cond_3c

    const/4 v4, 0x6

    if-eq v2, v4, :cond_33

    goto/16 :goto_102

    :cond_33
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/w;->v5(I)V

    goto/16 :goto_102

    :cond_3c
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-direct {v0, v7, v1, v2}, Landroid/support/v4/widget/w;->DW(FFI)V

    iget v3, v0, Landroid/support/v4/widget/w;->DW:I

    if-nez v3, :cond_5f

    iget-object v1, v0, Landroid/support/v4/widget/w;->u7:[I

    aget v1, v1, v2

    iget v3, v0, Landroid/support/v4/widget/w;->XL:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_102

    iget-object v3, v0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v3, v1, v2}, Landroid/support/v4/widget/w$a;->DW(II)V

    goto/16 :goto_102

    :cond_5f
    if-ne v3, v4, :cond_102

    float-to-int v3, v7

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    if-ne v1, v3, :cond_102

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    goto/16 :goto_102

    :cond_70
    iget-object v2, v0, Landroid/support/v4/widget/w;->v5:[F

    if-eqz v2, :cond_102

    iget-object v2, v0, Landroid/support/v4/widget/w;->Zo:[F

    if-nez v2, :cond_7a

    goto/16 :goto_102

    :cond_7a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_7f
    if-ge v3, v2, :cond_fb

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/support/v4/widget/w;->VH(I)Z

    move-result v7

    if-nez v7, :cond_8d

    goto/16 :goto_f8

    :cond_8d
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, v0, Landroid/support/v4/widget/w;->v5:[F

    aget v9, v9, v4

    sub-float v9, v7, v9

    iget-object v10, v0, Landroid/support/v4/widget/w;->Zo:[F

    aget v10, v10, v4

    sub-float v10, v8, v10

    float-to-int v7, v7

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_b1

    invoke-direct {v0, v7, v9, v10}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_b1

    const/4 v8, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v8, 0x0

    :goto_b2
    if-eqz v8, :cond_e7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    float-to-int v12, v9

    iget-object v13, v0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    add-int v14, v11, v12

    invoke-virtual {v13, v7, v14, v12}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;II)I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    float-to-int v14, v10

    iget-object v15, v0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    add-int v5, v13, v14

    invoke-virtual {v15, v7, v5, v14}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;II)I

    move-result v5

    iget-object v14, v0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v14, v7}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;)I

    move-result v14

    iget-object v15, v0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v15, v7}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;)I

    move-result v15

    if-eqz v14, :cond_e0

    if-lez v14, :cond_e7

    if-ne v12, v11, :cond_e7

    :cond_e0
    if-eqz v15, :cond_fb

    if-lez v15, :cond_e7

    if-ne v5, v13, :cond_e7

    goto :goto_fb

    :cond_e7
    invoke-direct {v0, v9, v10, v4}, Landroid/support/v4/widget/w;->j6(FFI)V

    iget v5, v0, Landroid/support/v4/widget/w;->DW:I

    if-ne v5, v6, :cond_ef

    goto :goto_fb

    :cond_ef
    if-eqz v8, :cond_f8

    invoke-virtual {v0, v7, v4}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_f8

    goto :goto_fb

    :cond_f8
    :goto_f8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_fb
    :goto_fb
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/w;->FH(Landroid/view/MotionEvent;)V

    goto :goto_102

    :cond_ff
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/w;->DW()V

    :cond_102
    :goto_102
    const/4 v5, 0x0

    goto :goto_133

    :cond_104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Landroid/support/v4/widget/w;->DW(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    if-ne v2, v3, :cond_125

    iget v3, v0, Landroid/support/v4/widget/w;->DW:I

    if-ne v3, v4, :cond_125

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    :cond_125
    iget-object v2, v0, Landroid/support/v4/widget/w;->u7:[I

    aget v2, v2, v1

    iget v3, v0, Landroid/support/v4/widget/w;->XL:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_133

    iget-object v3, v0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v3, v2, v1}, Landroid/support/v4/widget/w$a;->DW(II)V

    :cond_133
    :goto_133
    iget v1, v0, Landroid/support/v4/widget/w;->DW:I

    if-ne v1, v6, :cond_138

    const/4 v5, 0x1

    :cond_138
    return v5
.end method

.method DW(Landroid/view/View;I)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    iget v0, p0, Landroid/support/v4/widget/w;->Hw:I

    if-ne v0, p2, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput p2, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;I)V

    return v1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public DW(Landroid/view/View;II)Z
    .registers 4

    iput-object p1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/widget/w;->Hw:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1, p1}, Landroid/support/v4/widget/w;->DW(IIII)Z

    move-result p1

    if-nez p1, :cond_17

    iget p2, p0, Landroid/support/v4/widget/w;->DW:I

    if-nez p2, :cond_17

    iget-object p2, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    if-eqz p2, :cond_17

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    :cond_17
    return p1
.end method

.method public FH()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    return-object v0
.end method

.method FH(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/widget/w;->lg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    if-eq v0, p1, :cond_19

    iput p1, p0, Landroid/support/v4/widget/w;->DW:I

    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/w$a;->FH(I)V

    iget p1, p0, Landroid/support/v4/widget/w;->DW:I

    if-nez p1, :cond_19

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    :cond_19
    return-void
.end method

.method public FH(II)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/w;->QX:I

    return v0
.end method

.method public Hw(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/w;->XL:I

    return-void
.end method

.method public Hw(II)Z
    .registers 6

    iget-boolean v0, p0, Landroid/support/v4/widget/w;->U2:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/w;->DW(IIII)Z

    move-result p1

    return p1

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    return v0
.end method

.method public j6()V
    .registers 10

    invoke-virtual {p0}, Landroid/support/v4/widget/w;->DW()V

    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v2, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    iget-object v2, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    iget-object v3, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v4, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;IIII)V

    :cond_30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/w;->FH(I)V

    return-void
.end method

.method public j6(F)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/w;->Ws:F

    return-void
.end method

.method public j6(Landroid/view/MotionEvent;)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/support/v4/widget/w;->DW()V

    :cond_d
    iget-object v2, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    if-nez v2, :cond_17

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    :cond_17
    iget-object v2, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_148

    const/4 v3, 0x1

    if-eq v0, v3, :cond_13d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_ba

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_75

    const/4 v4, 0x6

    if-eq v0, v4, :cond_30

    goto/16 :goto_16e

    :cond_30
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne v1, v3, :cond_70

    iget v1, p0, Landroid/support/v4/widget/w;->Hw:I

    if-ne v0, v1, :cond_70

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_40
    const/4 v3, -0x1

    if-ge v2, v1, :cond_6a

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/widget/w;->Hw:I

    if-ne v4, v5, :cond_4c

    goto :goto_67

    :cond_4c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    if-ne v5, v6, :cond_67

    invoke-virtual {p0, v6, v4}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_67

    iget p1, p0, Landroid/support/v4/widget/w;->Hw:I

    goto :goto_6b

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_6a
    const/4 p1, -0x1

    :goto_6b
    if-ne p1, v3, :cond_70

    invoke-direct {p0}, Landroid/support/v4/widget/w;->gn()V

    :cond_70
    invoke-direct {p0, v0}, Landroid/support/v4/widget/w;->v5(I)V

    goto/16 :goto_16e

    :cond_75
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v2, p1, v0}, Landroid/support/v4/widget/w;->DW(FFI)V

    iget v1, p0, Landroid/support/v4/widget/w;->DW:I

    if-nez v1, :cond_a1

    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    iget-object p1, p0, Landroid/support/v4/widget/w;->u7:[I

    aget p1, p1, v0

    iget v1, p0, Landroid/support/v4/widget/w;->XL:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_16e

    iget-object v1, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/widget/w$a;->DW(II)V

    goto/16 :goto_16e

    :cond_a1
    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/w;->FH(II)Z

    move-result p1

    if-eqz p1, :cond_16e

    iget-object p1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    goto/16 :goto_16e

    :cond_b0
    iget p1, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne p1, v3, :cond_144

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/support/v4/widget/w;->j6(FF)V

    goto/16 :goto_144

    :cond_ba
    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne v0, v3, :cond_fa

    iget v0, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-direct {p0, v0}, Landroid/support/v4/widget/w;->VH(I)Z

    move-result v0

    if-nez v0, :cond_c8

    goto/16 :goto_16e

    :cond_c8
    iget v0, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Landroid/support/v4/widget/w;->VH:[F

    iget v3, p0, Landroid/support/v4/widget/w;->Hw:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/v4/widget/w;->gn:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/support/v4/widget/w;->j6(IIII)V

    :cond_f5
    :goto_f5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/w;->FH(Landroid/view/MotionEvent;)V

    goto/16 :goto_16e

    :cond_fa
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_fe
    if-ge v2, v0, :cond_f5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/w;->VH(I)Z

    move-result v4

    if-nez v4, :cond_10b

    goto :goto_13a

    :cond_10b
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Landroid/support/v4/widget/w;->v5:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    iget-object v7, p0, Landroid/support/v4/widget/w;->Zo:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    invoke-direct {p0, v6, v7, v1}, Landroid/support/v4/widget/w;->j6(FFI)V

    iget v8, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne v8, v3, :cond_127

    goto :goto_f5

    :cond_127
    float-to-int v4, v4

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v6, v7}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_13a

    invoke-virtual {p0, v4, v1}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_13a

    goto :goto_f5

    :cond_13a
    :goto_13a
    add-int/lit8 v2, v2, 0x1

    goto :goto_fe

    :cond_13d
    iget p1, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne p1, v3, :cond_144

    invoke-direct {p0}, Landroid/support/v4/widget/w;->gn()V

    :cond_144
    :goto_144
    invoke-virtual {p0}, Landroid/support/v4/widget/w;->DW()V

    goto :goto_16e

    :cond_148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/widget/w;->DW(FFI)V

    invoke-virtual {p0, v2, p1}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    iget-object v0, p0, Landroid/support/v4/widget/w;->u7:[I

    aget v0, v0, p1

    iget v1, p0, Landroid/support/v4/widget/w;->XL:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_16e

    iget-object v1, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/widget/w$a;->DW(II)V

    :cond_16e
    :goto_16e
    return-void
.end method

.method public j6(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_16

    iput-object p1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    iput p2, p0, Landroid/support/v4/widget/w;->Hw:I

    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/w;->FH(I)V

    return-void

    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public j6(I)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v4/widget/w;->v5:[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_12

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/w;->j6(II)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    return v1
.end method

.method public j6(II)Z
    .registers 9

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/w;->DW(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iget-object v3, p0, Landroid/support/v4/widget/w;->VH:[F

    aget v3, v3, p2

    iget-object v4, p0, Landroid/support/v4/widget/w;->v5:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/support/v4/widget/w;->gn:[F

    aget v4, v4, p2

    iget-object v5, p0, Landroid/support/v4/widget/w;->Zo:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_3d

    iget p1, p0, Landroid/support/v4/widget/w;->FH:I

    mul-float v3, v3, v3

    mul-float v4, v4, v4

    add-float/2addr v3, v4

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    return v1

    :cond_3d
    if-eqz v0, :cond_4c

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4b

    const/4 v1, 0x1

    :cond_4b
    return v1

    :cond_4c
    if-eqz p1, :cond_5a

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5a

    const/4 v1, 0x1

    :cond_5a
    return v1
.end method

.method public j6(Landroid/view/View;II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public j6(Z)Z
    .registers 13

    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6a

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    iget-object v3, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    iget-object v4, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    iget-object v4, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_2f

    iget-object v4, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-static {v4, v8}, Landroid/support/v4/view/s;->j6(Landroid/view/View;I)V

    :cond_2f
    if-eqz v9, :cond_36

    iget-object v4, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/support/v4/view/s;->DW(Landroid/view/View;I)V

    :cond_36
    if-nez v8, :cond_3a

    if-eqz v9, :cond_43

    :cond_3a
    iget-object v4, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v5, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;IIII)V

    :cond_43
    if-eqz v0, :cond_5b

    iget-object v4, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_5b

    iget-object v3, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_5b

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    :cond_5b
    if-nez v0, :cond_6a

    if-eqz p1, :cond_67

    iget-object p1, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/widget/w;->lg:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_6a

    :cond_67
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/w;->FH(I)V

    :cond_6a
    :goto_6a
    iget p1, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne p1, v2, :cond_6f

    const/4 v1, 0x1

    :cond_6f
    return v1
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/w;->FH:I

    return v0
.end method
