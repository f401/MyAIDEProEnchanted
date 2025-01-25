.class Labcd/Qv$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Qv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:Landroid/os/Handler;

.field private VH:F

.field private Zo:F

.field private gn:Z

.field private final j6:Lcom/appfour/backbone/api/objects/UserActionWindow;

.field private final v5:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/appfour/backbone/api/objects/UserActionWindow;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Qv$a;->j6:Lcom/appfour/backbone/api/objects/UserActionWindow;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Labcd/Qv$a;->Hw:Landroid/os/Handler;

    new-instance v0, Labcd/Pv;

    invoke-direct {v0, p0, p1}, Labcd/Pv;-><init>(Labcd/Qv$a;Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    iput-object v0, p0, Labcd/Qv$a;->v5:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41400000  # 12.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    mul-int p1, p1, p1

    iput p1, p0, Labcd/Qv$a;->DW:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    iput p1, p0, Labcd/Qv$a;->FH:I

    return-void
.end method

.method static synthetic DW(Labcd/Qv$a;)F
    .registers 1

    iget p0, p0, Labcd/Qv$a;->Zo:F

    return p0
.end method

.method private static DW(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Labcd/Qv$a;->j6(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_20
    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method static synthetic FH(Labcd/Qv$a;)F
    .registers 1

    iget p0, p0, Labcd/Qv$a;->VH:F

    return p0
.end method

.method private static j6(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_7
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_16

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Labcd/Qv$a;->j6(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic j6(Labcd/Qv$a;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/Qv$a;->gn:Z

    return p0
.end method

.method static synthetic j6(Labcd/Qv$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/Qv$a;->gn:Z

    return p1
.end method

.method static synthetic j6(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Labcd/Qv$a;->DW(Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public DW(Landroid/view/MotionEvent;)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Labcd/Qv$a;->Zo:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Labcd/Qv$a;->VH:F

    iput-boolean v1, p0, Labcd/Qv$a;->gn:Z

    iget-object p1, p0, Labcd/Qv$a;->Hw:Landroid/os/Handler;

    iget-object v0, p0, Labcd/Qv$a;->v5:Ljava/lang/Runnable;

    iget v1, p0, Labcd/Qv$a;->FH:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b4

    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_75

    iget-object v0, p0, Labcd/Qv$a;->Hw:Landroid/os/Handler;

    iget-object v1, p0, Labcd/Qv$a;->v5:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Labcd/Qv$a;->gn:Z

    if-eqz v0, :cond_b4

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Qv$a;->gn:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Labcd/Qv$a;->Zo:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Labcd/Qv$a;->Zo:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Labcd/Qv$a;->VH:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Labcd/Qv$a;->VH:F

    sub-float/2addr v0, v1

    sub-float/2addr v2, v3

    mul-float v0, v0, v2

    sub-float/2addr v4, v5

    sub-float/2addr v6, v7

    mul-float v4, v4, v6

    add-float/2addr v0, v4

    iget v1, p0, Labcd/Qv$a;->DW:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6d

    iget-object v0, p0, Labcd/Qv$a;->j6:Lcom/appfour/backbone/api/objects/UserActionWindow;

    iget v1, p0, Labcd/Qv$a;->Zo:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, v7, v2, p1}, Labcd/Qv$e;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;FFFF)V

    goto :goto_b4

    :cond_6d
    iget-object p1, p0, Labcd/Qv$a;->j6:Lcom/appfour/backbone/api/objects/UserActionWindow;

    iget v0, p0, Labcd/Qv$a;->Zo:F

    invoke-static {p1, v0, v7}, Labcd/Qv$e;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;FF)V

    goto :goto_b4

    :cond_75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_84

    :goto_7c
    iget-object p1, p0, Labcd/Qv$a;->Hw:Landroid/os/Handler;

    iget-object v0, p0, Labcd/Qv$a;->v5:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_b4

    :cond_84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Labcd/Qv$a;->Zo:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Labcd/Qv$a;->Zo:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Labcd/Qv$a;->VH:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Labcd/Qv$a;->VH:F

    sub-float/2addr p1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget p1, p0, Labcd/Qv$a;->DW:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_b4

    goto :goto_7c

    :cond_b4
    :goto_b4
    return-void
.end method

.method public j6(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Qv$a;->DW(Landroid/view/MotionEvent;)V

    return-void
.end method
