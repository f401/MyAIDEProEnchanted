.class Landroid/support/v4/view/s$j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# static fields
.field private static DW:Ljava/lang/reflect/Method;

.field private static j6:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field FH:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/s$j;->FH:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static we(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public DW(Landroid/view/View;Landroid/support/v4/view/B;)Landroid/support/v4/view/B;
    .registers 3

    return-object p2
.end method

.method public DW(Landroid/view/View;I)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_19

    invoke-static {p1}, Landroid/support/v4/view/s$j;->we(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_19

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/s$j;->we(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public DW(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public EQ(Landroid/view/View;)V
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/i;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/v4/view/i;

    invoke-interface {p1}, Landroid/support/v4/view/i;->stopNestedScroll()V

    :cond_9
    return-void
.end method

.method public FH(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public FH(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public Hw(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public VH(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public Zo(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/support/v4/view/s$j;->j6:Ljava/util/WeakHashMap;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public gn(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public j6(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method j6()J
    .registers 3

    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public j6(Landroid/view/View;Landroid/support/v4/view/B;)Landroid/support/v4/view/B;
    .registers 3

    return-object p2
.end method

.method public j6(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public j6(Landroid/view/View;I)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_19

    invoke-static {p1}, Landroid/support/v4/view/s$j;->we(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_19

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/s$j;->we(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public j6(Landroid/view/View;IIII)V
    .registers 6

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidate(IIII)V

    return-void
.end method

.method public j6(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public j6(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public j6(Landroid/view/View;Landroid/support/v4/view/c;)V
    .registers 3

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p2}, Landroid/support/v4/view/c;->j6()Landroid/view/View$AccessibilityDelegate;

    move-result-object p2

    :goto_8
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public j6(Landroid/view/View;Landroid/support/v4/view/n;)V
    .registers 3

    return-void
.end method

.method public j6(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v4/view/s$j;->j6()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public j6(Landroid/view/ViewGroup;Z)V
    .registers 11

    const-string v0, "Unable to invoke childrenDrawingOrderEnabled"

    sget-object v1, Landroid/support/v4/view/s$j;->DW:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ViewCompat"

    if-nez v1, :cond_26

    :try_start_a
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/view/ViewGroup;

    const-string v6, "setChildrenDrawingOrderEnabled"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v1, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/view/s$j;->DW:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception v1

    const-string v5, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    sget-object v1, Landroid/support/v4/view/s$j;->DW:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_26
    :try_start_26
    sget-object v1, Landroid/support/v4/view/s$j;->DW:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_33} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_33} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception p1

    goto :goto_39

    :catch_36
    move-exception p1

    goto :goto_39

    :catch_38
    move-exception p1

    :goto_39
    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    return-void
.end method

.method public tp(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public u7(Landroid/view/View;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/i;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/i;

    invoke-interface {p1}, Landroid/support/v4/view/i;->isNestedScrollingEnabled()Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public v5(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method
