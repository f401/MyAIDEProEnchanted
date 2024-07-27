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
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/w;->Hw:I

    new-instance v0, Landroid/support/v4/widget/v;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/v;-><init>(Landroid/support/v4/widget/w;)V

    iput-object v0, p0, Landroid/support/v4/widget/w;->lg:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p2, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/w;->QX:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/w;->FH:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/widget/w;->J8:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/w;->Ws:F

    new-instance v0, Landroid/widget/OverScroller;

    sget-object v1, Landroid/support/v4/widget/w;->j6:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW(F)F
    .registers 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private DW(III)I
    .registers 8

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, v1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/w;->DW(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lez v2, :cond_1

    mul-float/2addr v0, v1

    add-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_1
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method private DW(FFI)V
    .registers 7

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

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/w;->v5(II)I

    move-result v1

    aput v1, v0, p3

    iget v0, p0, Landroid/support/v4/widget/w;->we:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/w;->we:I

    return-void
.end method

.method private DW(IIII)Z
    .registers 15

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v2, p1, v7

    sub-int v3, p2, v6

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/w;->FH(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;IIII)I

    move-result v9

    iget-object v4, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    move v5, v7

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/w;->FH(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private FH(Landroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v4/widget/w;->VH(I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/w;->VH:[F

    aput v3, v5, v2

    iget-object v3, p0, Landroid/support/v4/widget/w;->gn:[F

    aput v4, v3, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private VH()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/w;->v5:[F

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->Zo:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->VH:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->gn:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->u7:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->tp:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/w;->EQ:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Landroid/support/v4/widget/w;->we:I

    goto :goto_0
.end method

.method private VH(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/w;->DW(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " because ACTION_DOWN was not received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "for this pointer before ACTION_MOVE. It likely happened because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ViewDragHelper"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private Zo(I)V
    .registers 12

    const/4 v9, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/w;->v5:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v1, v0, [F

    new-array v2, v0, [F

    new-array v3, v0, [F

    new-array v4, v0, [F

    new-array v5, v0, [I

    new-array v6, v0, [I

    new-array v0, v0, [I

    iget-object v7, p0, Landroid/support/v4/widget/w;->v5:[F

    if-eqz v7, :cond_1

    array-length v8, v7

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/w;->Zo:[F

    array-length v8, v7

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/w;->VH:[F

    array-length v8, v7

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/w;->gn:[F

    array-length v8, v7

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/w;->u7:[I

    array-length v8, v7

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/w;->tp:[I

    array-length v8, v7

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/support/v4/widget/w;->EQ:[I

    array-length v8, v7

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Landroid/support/v4/widget/w;->v5:[F

    iput-object v2, p0, Landroid/support/v4/widget/w;->Zo:[F

    iput-object v3, p0, Landroid/support/v4/widget/w;->VH:[F

    iput-object v4, p0, Landroid/support/v4/widget/w;->gn:[F

    iput-object v5, p0, Landroid/support/v4/widget/w;->u7:[I

    iput-object v6, p0, Landroid/support/v4/widget/w;->tp:[I

    iput-object v0, p0, Landroid/support/v4/widget/w;->EQ:[I

    :cond_2
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
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, p2

    if-gez v2, :cond_1

    move p3, v0

    :cond_0
    :goto_0
    return p3

    :cond_1
    cmpl-float v1, v1, p3

    if-lez v1, :cond_2

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    goto :goto_0
.end method

.method private j6(III)I
    .registers 5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    :cond_0
    :goto_0
    return p3

    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    goto :goto_0
.end method

.method private j6(Landroid/view/View;IIII)I
    .registers 15

    iget v0, p0, Landroid/support/v4/widget/w;->Ws:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/w;->J8:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Landroid/support/v4/widget/w;->j6(III)I

    move-result v2

    iget v0, p0, Landroid/support/v4/widget/w;->Ws:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/w;->J8:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Landroid/support/v4/widget/w;->j6(III)I

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v6, v1, v5

    add-int v7, v0, v4

    if-eqz v2, :cond_0

    int-to-float v0, v1

    int-to-float v1, v6

    :goto_0
    div-float v8, v0, v1

    if-eqz v3, :cond_1

    int-to-float v0, v5

    int-to-float v1, v6

    :goto_1
    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p2, v2, v1}, Landroid/support/v4/widget/w;->DW(III)I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p3, v3, v2}, Landroid/support/v4/widget/w;->DW(III)I

    move-result v2

    int-to-float v1, v1

    mul-float/2addr v1, v8

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    int-to-float v0, v0

    int-to-float v1, v7

    goto :goto_0

    :cond_1
    int-to-float v0, v4

    int-to-float v1, v7

    goto :goto_1
.end method

.method public static j6(Landroid/view/ViewGroup;FLandroid/support/v4/widget/w$a;)Landroid/support/v4/widget/w;
    .registers 6

    invoke-static {p0, p2}, Landroid/support/v4/widget/w;->j6(Landroid/view/ViewGroup;Landroid/support/v4/widget/w$a;)Landroid/support/v4/widget/w;

    move-result-object v0

    iget v1, v0, Landroid/support/v4/widget/w;->FH:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/support/v4/widget/w;->FH:I

    return-object v0
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
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Landroid/support/v4/widget/w;->U2:Z

    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;FF)V

    iput-boolean v2, p0, Landroid/support/v4/widget/w;->U2:Z

    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/w;->FH(I)V

    :cond_0
    return-void
.end method

.method private j6(FFI)V
    .registers 7

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/w;->j6(FFII)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/w;->j6(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/w;->j6(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/w;->j6(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/w;->tp:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    iget-object v1, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/w$a;->j6(II)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(IIII)V
    .registers 11

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;II)I

    move-result v2

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    sub-int v1, v2, v4

    invoke-static {v0, v1}, Landroid/support/v4/view/s;->j6(Landroid/view/View;I)V

    :goto_0
    if-eqz p4, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;II)I

    move-result v3

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    sub-int v1, v3, v5

    invoke-static {v0, v1}, Landroid/support/v4/view/s;->DW(Landroid/view/View;I)V

    :goto_1
    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    sub-int v4, v2, v4

    sub-int v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;IIII)V

    :cond_1
    return-void

    :cond_2
    move v3, p2

    goto :goto_1

    :cond_3
    move v2, p1

    goto :goto_0
.end method

.method private j6(FFII)Z
    .registers 10

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/w;->u7:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Landroid/support/v4/widget/w;->XL:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/w;->EQ:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/w;->tp:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float v4, v3

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_1

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v2, p4}, Landroid/support/v4/widget/w$a;->DW(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/w;->EQ:[I

    aget v2, v1, p3

    or-int/2addr v2, p4

    aput v2, v1, p3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/w;->tp:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j6(Landroid/view/View;FF)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_3

    move v3, v1

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    iget v0, p0, Landroid/support/v4/widget/w;->FH:I

    mul-float v3, p2, p2

    mul-float v4, p3, p3

    add-float/2addr v3, v4

    mul-int/2addr v0, v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_7

    :goto_3
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    :goto_4
    move v2, v1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method private v5(II)I
    .registers 6

    iget-object v0, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/w;->QX:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/w;->QX:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/w;->QX:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/w;->QX:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v5(I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/w;->v5:[F

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/w;->DW(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/w;->v5:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->Zo:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->VH:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->gn:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->u7:[I

    aput v2, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->tp:[I

    aput v2, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/w;->EQ:[I

    aput v2, v0, p1

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/widget/w;->we:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/w;->we:I

    goto :goto_0
.end method


# virtual methods
.method public DW(II)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/w$a;->j6(I)I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public DW()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-direct {p0}, Landroid/support/v4/widget/w;->VH()V

    iget-object v0, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public DW(I)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v4/widget/w;->we:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DW(Landroid/view/MotionEvent;)Z
    .registers 15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/w;->DW()V

    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/widget/w;->DW:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/w;->v5(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Landroid/support/v4/widget/w;->DW(FFI)V

    iget v3, p0, Landroid/support/v4/widget/w;->DW:I

    if-nez v3, :cond_6

    iget-object v1, p0, Landroid/support/v4/widget/w;->u7:[I

    aget v1, v1, v0

    iget v2, p0, Landroid/support/v4/widget/w;->XL:I

    and-int v3, v1, v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    and-int/2addr v1, v2

    invoke-virtual {v3, v1, v0}, Landroid/support/v4/widget/w$a;->DW(II)V

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    float-to-int v2, v2

    float-to-int v1, v1

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Landroid/support/v4/widget/w;->v5:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/w;->Zo:[F

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_b

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/support/v4/widget/w;->VH(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/w;->v5:[F

    aget v5, v5, v3

    sub-float v5, v0, v5

    iget-object v6, p0, Landroid/support/v4/widget/w;->Zo:[F

    aget v6, v6, v3

    sub-float v6, v4, v6

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-direct {p0, v4, v5, v6}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    float-to-int v8, v5

    iget-object v9, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    add-int v10, v7, v8

    invoke-virtual {v9, v4, v10, v8}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;II)I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    float-to-int v10, v6

    iget-object v11, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    add-int v12, v9, v10

    invoke-virtual {v11, v4, v12, v10}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;II)I

    move-result v10

    iget-object v11, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v11, v4}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v12, v4}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;)I

    move-result v12

    if-eqz v11, :cond_a

    if-lez v11, :cond_d

    if-ne v8, v7, :cond_d

    :cond_a
    if-eqz v12, :cond_b

    if-lez v12, :cond_d

    if-ne v10, v9, :cond_d

    :cond_b
    :goto_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/w;->FH(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_2

    :cond_d
    invoke-direct {p0, v5, v6, v3}, Landroid/support/v4/widget/w;->j6(FFI)V

    iget v5, p0, Landroid/support/v4/widget/w;->DW:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    if-eqz v0, :cond_8

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Landroid/support/v4/widget/w;->DW()V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/w;->DW(FFI)V

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    if-ne v0, v1, :cond_10

    iget v1, p0, Landroid/support/v4/widget/w;->DW:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_10

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    :cond_10
    iget-object v0, p0, Landroid/support/v4/widget/w;->u7:[I

    aget v0, v0, v2

    iget v1, p0, Landroid/support/v4/widget/w;->XL:I

    and-int v3, v0, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    and-int/2addr v0, v1

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/w$a;->DW(II)V

    goto/16 :goto_0
.end method

.method DW(Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/w;->Hw:I

    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/widget/w$a;->DW(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput p2, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DW(Landroid/view/View;II)Z
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-direct {p0, p2, p3, v1, v1}, Landroid/support/v4/widget/w;->DW(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget v1, p0, Landroid/support/v4/widget/w;->DW:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    :cond_0
    return v0
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

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v4/widget/w;->DW:I

    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/w$a;->FH(I)V

    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public FH(II)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;II)Z

    move-result v0

    return v0
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

    if-eqz v0, :cond_0

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

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    return v0
.end method

.method public j6()V
    .registers 7

    invoke-virtual {p0}, Landroid/support/v4/widget/w;->DW()V

    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    sub-int v4, v2, v4

    sub-int v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;IIII)V

    :cond_0
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

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/w;->DW()V

    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/w;->J0:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-eqz v2, :cond_14

    if-eq v2, v8, :cond_12

    const/4 v4, 0x2

    if-eq v2, v4, :cond_c

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a

    const/4 v4, 0x5

    if-eq v2, v4, :cond_8

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne v3, v8, :cond_6

    iget v3, p0, Landroid/support/v4/widget/w;->Hw:I

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/widget/w;->Hw:I

    if-ne v4, v5, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    if-ne v5, v6, :cond_4

    invoke-virtual {p0, v6, v4}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v0, p0, Landroid/support/v4/widget/w;->Hw:I

    :goto_2
    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Landroid/support/v4/widget/w;->gn()V

    :cond_6
    invoke-direct {p0, v2}, Landroid/support/v4/widget/w;->v5(I)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/w;->DW(FFI)V

    iget v3, p0, Landroid/support/v4/widget/w;->DW:I

    if-nez v3, :cond_9

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    iget-object v1, p0, Landroid/support/v4/widget/w;->u7:[I

    aget v1, v1, v0

    iget v2, p0, Landroid/support/v4/widget/w;->XL:I

    and-int v3, v1, v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    and-int/2addr v1, v2

    invoke-virtual {v3, v1, v0}, Landroid/support/v4/widget/w$a;->DW(II)V

    goto :goto_0

    :cond_9
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/w;->FH(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    goto :goto_0

    :cond_a
    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne v0, v8, :cond_b

    invoke-direct {p0, v5, v5}, Landroid/support/v4/widget/w;->j6(FF)V

    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/widget/w;->DW()V

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne v1, v8, :cond_d

    iget v0, p0, Landroid/support/v4/widget/w;->Hw:I

    invoke-direct {p0, v0}, Landroid/support/v4/widget/w;->VH(I)Z

    move-result v0

    if-eqz v0, :cond_2

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

    invoke-direct {p0, p1}, Landroid/support/v4/widget/w;->FH(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_10

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v4/widget/w;->VH(I)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/w;->v5:[F

    aget v5, v5, v2

    sub-float v5, v3, v5

    iget-object v6, p0, Landroid/support/v4/widget/w;->Zo:[F

    aget v6, v6, v2

    sub-float v6, v4, v6

    invoke-direct {p0, v5, v6, v2}, Landroid/support/v4/widget/w;->j6(FFI)V

    iget v7, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne v7, v8, :cond_11

    :cond_10
    :goto_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/w;->FH(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_11
    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v5, v6}, Landroid/support/v4/widget/w;->j6(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4

    :cond_12
    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne v0, v8, :cond_13

    invoke-direct {p0}, Landroid/support/v4/widget/w;->gn()V

    :cond_13
    invoke-virtual {p0}, Landroid/support/v4/widget/w;->DW()V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/w;->DW(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/w;->DW(FFI)V

    invoke-virtual {p0, v3, v0}, Landroid/support/v4/widget/w;->DW(Landroid/view/View;I)Z

    iget-object v1, p0, Landroid/support/v4/widget/w;->u7:[I

    aget v1, v1, v0

    iget v2, p0, Landroid/support/v4/widget/w;->XL:I

    and-int v3, v1, v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    and-int/2addr v1, v2

    invoke-virtual {v3, v1, v0}, Landroid/support/v4/widget/w$a;->DW(II)V

    goto/16 :goto_0
.end method

.method public j6(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    iput p2, p0, Landroid/support/v4/widget/w;->Hw:I

    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/w;->FH(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j6(I)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/w;->v5:[F

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/w;->j6(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public j6(II)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/w;->DW(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_2

    move v3, v1

    :goto_1
    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_2
    iget-object v4, p0, Landroid/support/v4/widget/w;->VH:[F

    aget v4, v4, p2

    iget-object v5, p0, Landroid/support/v4/widget/w;->v5:[F

    aget v5, v5, p2

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/support/v4/widget/w;->gn:[F

    aget v5, v5, p2

    iget-object v6, p0, Landroid/support/v4/widget/w;->Zo:[F

    aget v6, v6, p2

    sub-float/2addr v5, v6

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v4/widget/w;->FH:I

    mul-float v3, v4, v4

    mul-float v4, v5, v5

    add-float/2addr v3, v4

    mul-int/2addr v0, v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_7

    :goto_3
    move v2, v1

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    :goto_4
    move v2, v1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/w;->FH:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method public j6(Landroid/view/View;II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j6(Z)Z
    .registers 11

    const/4 v8, 0x2

    const/4 v6, 0x0

    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v7

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    if-eqz v4, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/s;->j6(Landroid/view/View;I)V

    :cond_0
    if-eqz v5, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/support/v4/view/s;->DW(Landroid/view/View;I)V

    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/w;->j3:Landroid/support/v4/widget/w$a;

    iget-object v1, p0, Landroid/support/v4/widget/w;->Mr:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/w$a;->j6(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v7, :cond_7

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/widget/w;->aM:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    move v0, v6

    :goto_0
    if-nez v0, :cond_4

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/support/v4/widget/w;->a8:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/widget/w;->lg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    iget v0, p0, Landroid/support/v4/widget/w;->DW:I

    if-ne v0, v8, :cond_6

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_5
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/w;->FH(I)V

    goto :goto_1

    :cond_6
    move v0, v6

    goto :goto_2

    :cond_7
    move v0, v7

    goto :goto_0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/w;->FH:I

    return v0
.end method
