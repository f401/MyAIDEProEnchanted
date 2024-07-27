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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Qv$a;->j6:Lcom/appfour/backbone/api/objects/UserActionWindow;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Labcd/Qv$a;->Hw:Landroid/os/Handler;

    new-instance v0, Labcd/Pv;

    invoke-direct {v0, p0, p1}, Labcd/Pv;-><init>(Labcd/Qv$a;Lcom/appfour/backbone/api/objects/UserActionWindow;)V

    iput-object v0, p0, Labcd/Qv$a;->v5:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/2addr v0, v0

    iput v0, p0, Labcd/Qv$a;->DW:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Labcd/Qv$a;->FH:I

    return-void
.end method

.method static synthetic DW(Labcd/Qv$a;)F
    .registers 2

    iget v0, p0, Labcd/Qv$a;->Zo:F

    return v0
.end method

.method private static DW(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Labcd/Qv$a;->j6(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic FH(Labcd/Qv$a;)F
    .registers 2

    iget v0, p0, Labcd/Qv$a;->VH:F

    return v0
.end method

.method private static j6(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Labcd/Qv$a;->j6(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method static synthetic j6(Labcd/Qv$a;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/Qv$a;->gn:Z

    return v0
.end method

.method static synthetic j6(Labcd/Qv$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/Qv$a;->gn:Z

    return p1
.end method

.method static synthetic j6(Landroid/view/View;)Z
    .registers 2

    invoke-static {p0}, Labcd/Qv$a;->DW(Landroid/view/View;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public DW(Landroid/view/MotionEvent;)V
    .registers 10

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Labcd/Qv$a;->Zo:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Labcd/Qv$a;->VH:F

    iput-boolean v1, p0, Labcd/Qv$a;->gn:Z

    iget-object v0, p0, Labcd/Qv$a;->Hw:Landroid/os/Handler;

    iget-object v1, p0, Labcd/Qv$a;->v5:Ljava/lang/Runnable;

    iget v2, p0, Labcd/Qv$a;->FH:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Labcd/Qv$a;->Hw:Landroid/os/Handler;

    iget-object v1, p0, Labcd/Qv$a;->v5:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Labcd/Qv$a;->gn:Z

    if-eqz v0, :cond_0

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

    sub-float v1, v2, v3

    mul-float/2addr v0, v1

    sub-float v1, v4, v5

    sub-float v2, v6, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Labcd/Qv$a;->DW:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Labcd/Qv$a;->j6:Lcom/appfour/backbone/api/objects/UserActionWindow;

    iget v1, p0, Labcd/Qv$a;->Zo:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v0, v1, v7, v2, v3}, Labcd/Qv$e;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;FFFF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/Qv$a;->j6:Lcom/appfour/backbone/api/objects/UserActionWindow;

    iget v1, p0, Labcd/Qv$a;->Zo:F

    invoke-static {v0, v1, v7}, Labcd/Qv$e;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;FF)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Labcd/Qv$a;->Hw:Landroid/os/Handler;

    iget-object v1, p0, Labcd/Qv$a;->v5:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Labcd/Qv$a;->Zo:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Labcd/Qv$a;->Zo:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Labcd/Qv$a;->VH:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Labcd/Qv$a;->VH:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Labcd/Qv$a;->DW:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Labcd/Qv$a;->Hw:Landroid/os/Handler;

    iget-object v1, p0, Labcd/Qv$a;->v5:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public j6(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Qv$a;->DW(Landroid/view/MotionEvent;)V

    return-void
.end method
