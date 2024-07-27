.class public Lcom/aide/ui/views/SplitView;
.super Landroid/view/ViewGroup;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static $ON_ENTER_TOGGLE:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static $ON_THROW_TOGGLE:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private animationPosition:I
    .annotation runtime Labcd/ru;
        field = 0x43eefcb7009a2bbL
    .end annotation
.end field

.field private dividerSpeed:F
    .annotation runtime Labcd/ru;
        field = -0x1ed287d2faeb1fc0L
    .end annotation
.end field

.field private dividerTouchSize:I
    .annotation runtime Labcd/ru;
        field = 0x3cbb61a6ef36cf1bL
    .end annotation
.end field

.field private dragPosition:I
    .annotation runtime Labcd/ru;
        field = -0x221fc4e9fa1a1795L
    .end annotation
.end field

.field private horizontalSplitRatio:F
    .annotation runtime Labcd/ru;
        field = 0x5718cfec57b2e6c5L
    .end annotation
.end field

.field private isDragging:Z
    .annotation runtime Labcd/ru;
        field = -0x2aef1021c15af4dL
    .end annotation
.end field

.field private isHorizontal:Z
    .annotation runtime Labcd/ru;
        field = 0x2928a9b1b1f40f30L
    .end annotation
.end field

.field private isSplit:Z
    .annotation runtime Labcd/ru;
        field = 0xf95c5766949c2a0L
    .end annotation
.end field

.field private isSwipeEnabled:Z
    .annotation runtime Labcd/ru;
        field = -0x4c033dcf94f4b225L
    .end annotation
.end field

.field private listener:Lcom/aide/ui/views/SplitView$a;
    .annotation runtime Labcd/ru;
        field = 0x121ffcfde8fe1eacL
    .end annotation
.end field

.field private verticalSplitRatio:F
    .annotation runtime Labcd/ru;
        field = -0x528b5ed8dfc29e5L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0xae93f0c23067807L

    const-class v0, Lcom/aide/ui/views/SplitView;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, -0xcd973eee22e91f3L    # -4.926492817700055E246

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xcd973eee22e91f3L    # -4.926492817700055E246

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/aide/ui/views/SplitView;->horizontalSplitRatio:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/aide/ui/views/SplitView;->verticalSplitRatio:F

    const/16 v0, 0x1e

    iput v0, p0, Lcom/aide/ui/views/SplitView;->dividerTouchSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/aide/ui/views/SplitView;->dividerSpeed:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSwipeEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, -0x243583899913920L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x243583899913920L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/aide/ui/views/SplitView;->horizontalSplitRatio:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/aide/ui/views/SplitView;->verticalSplitRatio:F

    const/16 v0, 0x1e

    iput v0, p0, Lcom/aide/ui/views/SplitView;->dividerTouchSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/aide/ui/views/SplitView;->dividerSpeed:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSwipeEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    const-wide v8, -0xc20ab8e90d089a5L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xc20ab8e90d089a5L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/aide/ui/views/SplitView;->horizontalSplitRatio:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/aide/ui/views/SplitView;->verticalSplitRatio:F

    const/16 v0, 0x1e

    iput v0, p0, Lcom/aide/ui/views/SplitView;->dividerTouchSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/aide/ui/views/SplitView;->dividerSpeed:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSwipeEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic access$002(Lcom/aide/ui/views/SplitView;I)I
    .registers 2

    iput p1, p0, Lcom/aide/ui/views/SplitView;->animationPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/aide/ui/views/SplitView;)Lcom/aide/ui/views/SplitView$a;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/views/SplitView;->listener:Lcom/aide/ui/views/SplitView$a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aide/ui/views/SplitView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    return v0
.end method

.method static synthetic access$202(Lcom/aide/ui/views/SplitView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/aide/ui/views/SplitView;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->updateChildVisibilities()V

    return-void
.end method

.method private getAnimationDuration(II)J
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xdb5669ad6f7fe65L
    .end annotation

    const-wide v2, 0x1c8d8c6a4d30e3dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x1c8d8c6a4d30e3dL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/aide/ui/views/SplitView;->dividerSpeed:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private getCurrentDividerPosition(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1f1801380e36ff0L
    .end annotation

    const-wide v2, -0x26fac04b048f4dd8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x26fac04b048f4dd8L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDragPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/aide/ui/views/SplitView;->animationPosition:I

    if-gez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/SplitView;->getDividerPosition(II)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/aide/ui/views/SplitView;->animationPosition:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private getDividerPosition()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3a8e1ee07e82bf83L
    .end annotation

    const-wide v2, 0x575d3a2de9a4fb2fL    # 7.0288867227711325E112

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x575d3a2de9a4fb2fL    # 7.0288867227711325E112

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/views/SplitView;->getDividerPosition(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private getDividerPosition(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3f402fa009035a5L
    .end annotation

    const-wide v2, -0x10b2b0b11b82fabL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x10b2b0b11b82fabL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/aide/ui/views/SplitView;->horizontalSplitRatio:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/aide/ui/views/SplitView;->verticalSplitRatio:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private getDragDistance()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3a171a06eb6db3c0L
    .end annotation

    const-wide v2, -0x23813d25b0572cb8L    # -3.577342466989002E137

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x23813d25b0572cb8L    # -3.577342466989002E137

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDividerPosition()I

    move-result v0

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDragPosition()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDragPosition()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private getDragPosition()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3ce620dc52d0b60cL
    .end annotation

    const-wide v2, 0xc6b0b6d2ab0f140L    # 7.55465630377118E-249

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc6b0b6d2ab0f140L    # 7.55465630377118E-249

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/aide/ui/views/SplitView;->dragPosition:I

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDividerPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDividerPosition()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private getDragStartOrientation(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x473679a2d1fa813L
    .end annotation

    const-wide v8, 0x293337766f64bf1L

    const/4 v6, 0x0

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v4, 0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x293337766f64bf1L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSwipeEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/aide/ui/views/SplitView;->dividerTouchSize:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->splitHorizontalByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSwipeEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/aide/ui/views/SplitView;->horizontalSplitRatio:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/aide/ui/views/SplitView;->dividerTouchSize:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSwipeEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/aide/ui/views/SplitView;->dividerTouchSize:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43160000    # 150.0f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSwipeEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/aide/ui/views/SplitView;->verticalSplitRatio:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/aide/ui/views/SplitView;->dividerTouchSize:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method private isVertical()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x25a500cb571ea059L
    .end annotation

    const-wide v2, -0x20655adca5a836afL    # -3.4887889660590015E152

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20655adca5a836afL    # -3.4887889660590015E152

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->isHorizontal()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private setOrientation(ZZ)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4a97ddd65a6f33L
    .end annotation

    const-wide v2, -0xf62478c17494f51L    # -2.9530651448352286E234

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0xf62478c17494f51L    # -2.9530651448352286E234

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    if-eq v0, p1, :cond_1

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/aide/ui/views/t;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/views/t;-><init>(Lcom/aide/ui/views/SplitView;Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/aide/ui/views/SplitView;->closeSplit(ZLjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Lcom/aide/ui/views/SplitView;->listener:Lcom/aide/ui/views/SplitView$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/SplitView;->listener:Lcom/aide/ui/views/SplitView$a;

    iget-boolean v1, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    invoke-interface {v0, v1}, Lcom/aide/ui/views/SplitView$a;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private startDragging(Landroid/view/MotionEvent;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xd37cfc58cf22c9L
    .end annotation

    const-wide v2, -0x28cf1e1dbc94fbdfL    # -1.0150128238901503E112

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x28cf1e1dbc94fbdfL    # -1.0150128238901503E112

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-boolean p2, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z

    invoke-direct {p0, p1}, Lcom/aide/ui/views/SplitView;->updateDragging(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->updateChildVisibilities()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private stopDragging(Landroid/view/MotionEvent;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xddd8291bd21aa0L
    .end annotation

    const-wide v4, 0x1d644397e816ee60L

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x1d644397e816ee60L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDragDistance()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/aide/ui/views/SplitView;->dividerTouchSize:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :goto_0
    iget-boolean v1, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/SplitView;->closeSplit(Z)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/SplitView;->openSplit(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private updateChildVisibilities()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x97d4ff86288f69cL
    .end annotation

    const-wide v4, -0x1d1c7e62f64e5400L    # -2.3005016413291864E168

    const/16 v0, 0x8

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x1d1c7e62f64e5400L    # -2.3005016413291864E168

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->getBottomView()Landroid/view/View;

    move-result-object v3

    iget-boolean v2, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z

    if-eqz v2, :cond_4

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->getSeparatorView()Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z

    if-eqz v3, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_4
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method private updateDragging(Landroid/view/MotionEvent;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2e416e5147398863L
    .end annotation

    const-wide v2, -0x26ecd64f0acb6411L    # -1.237082090859011E121

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x26ecd64f0acb6411L    # -1.237082090859011E121

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    iput v0, p0, Lcom/aide/ui/views/SplitView;->dragPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public closeSplit(Z)V
    .registers 6

    const-wide v2, 0xd6f2df6b66488b0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd6f2df6b66488b0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aide/ui/views/SplitView;->closeSplit(ZLjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public closeSplit(ZLjava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/s1243808733/aide/MainListener;->onSplitViewCloseSplit(Lcom/aide/ui/views/SplitView;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public closeSplit_SOURCE(ZLjava/lang/Runnable;)V
    .registers 10

    const-wide v2, 0x21f04cc2d3daf9f3L    # 3.263364979979062E-145

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x21f04cc2d3daf9f3L    # 3.263364979979062E-145

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "animationPosition"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDragPosition()I

    move-result v5

    aput v5, v1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDragPosition()I

    move-result v1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/aide/ui/views/SplitView;->getAnimationDuration(II)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v1, Lcom/aide/ui/views/s;

    invoke-direct {v1, p0, p2}, Lcom/aide/ui/views/s;-><init>(Lcom/aide/ui/views/SplitView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->updateChildVisibilities()V

    iget-object v0, p0, Lcom/aide/ui/views/SplitView;->listener:Lcom/aide/ui/views/SplitView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/SplitView;->listener:Lcom/aide/ui/views/SplitView$a;

    iget-boolean v1, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    invoke-interface {v0, v1}, Lcom/aide/ui/views/SplitView$a;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public getBottomView()Landroid/view/View;
    .registers 5

    const-wide v2, 0x2a0add42adc8ce25L    # 3.660387358250915E-106

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2a0add42adc8ce25L    # 3.660387358250915E-106

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getSeparatorView()Landroid/view/View;
    .registers 5

    const-wide v2, -0x460de4a653235a29L    # -1.4283775894035043E-29

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x460de4a653235a29L    # -1.4283775894035043E-29

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getTopView()Landroid/view/View;
    .registers 5

    const-wide v2, 0xcd190065995ddL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xcd190065995ddL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public isHorizontal()Z
    .registers 5

    const-wide v2, 0x23e76bfcd64f908fL    # 1.007007553561029E-135

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x23e76bfcd64f908fL    # 1.007007553561029E-135

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public isSplit()Z
    .registers 5

    const-wide v2, 0x2805fbd2ec94fa73L    # 6.974164934493123E-116

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2805fbd2ec94fa73L    # 6.974164934493123E-116

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onFinishInflate()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1af593258bbe7180L
    .end annotation

    const-wide v2, -0x3f4044d6fcf7ad14L    # -8123.160202522511

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3f4044d6fcf7ad14L    # -8123.160202522511

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->updateChildVisibilities()V

    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->splitHorizontalByDefault()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-wide v2, 0x902aa1ea773372fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x902aa1ea773372fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/views/SplitView;->getDragStartOrientation(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x4cf5ec133561c3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x4da16f2443b471e1L    # 9.1801499229552E65

    move-object v2, p0

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->getTopView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->getBottomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->getSeparatorView()Landroid/view/View;

    move-result-object v2

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    iget-boolean v5, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v2, v5, v0, v6, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v5, v4}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v3, v5}, Landroid/view/View;->layout(IIII)V

    add-int v0, v6, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5, v3, v0}, Landroid/view/View;->layout(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x4da16f2443b471e1L    # 9.1801499229552E65

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x2974be9a2b50050L
    .end annotation

    const-wide v2, -0x95037c86bd9bad8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x95037c86bd9bad8L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->getTopView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->getBottomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->getSeparatorView()Landroid/view/View;

    move-result-object v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    iget-boolean v7, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    if-eqz v7, :cond_1

    invoke-direct {p0, v6, v5}, Lcom/aide/ui/views/SplitView;->getCurrentDividerPosition(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v7, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    const/4 v0, -0x2

    invoke-virtual {v4, v0, p2}, Landroid/view/View;->measure(II)V

    :goto_0
    invoke-virtual {p0, v6, v5}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_1
    invoke-direct {p0, v6, v5}, Lcom/aide/ui/views/SplitView;->getCurrentDividerPosition(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, p1, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v5, v1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    const/4 v0, -0x2

    invoke-virtual {v4, p1, v0}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const-wide v4, -0xba8d7a24a9f8a2fL

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v1, :cond_0

    const-wide v2, -0xba8d7a24a9f8a2fL

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/views/SplitView;->getDragStartOrientation(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/aide/ui/views/SplitView;->startDragging(Landroid/view/MotionEvent;Z)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/aide/ui/views/SplitView;->updateDragging(Landroid/view/MotionEvent;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/aide/ui/views/SplitView;->stopDragging(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method public openSplit(Z)V
    .registers 6

    const-wide v2, 0x4faecab9fb5827cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4faecab9fb5827cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    invoke-virtual {p0, v0, p1}, Lcom/aide/ui/views/SplitView;->openSplit(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public openSplit(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/s1243808733/aide/MainListener;->onSplitViewOpenSplit(Lcom/aide/ui/views/SplitView;ZZ)V

    return-void
.end method

.method public openSplit_SOURCE(ZZ)V
    .registers 10

    const-wide v2, 0x2eb53226a1a855fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x2eb53226a1a855fL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/views/SplitView;->isHorizontal:Z

    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "animationPosition"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDragPosition()I

    move-result v5

    aput v5, v1, v4

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDividerPosition()I

    move-result v5

    aput v5, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDragPosition()I

    move-result v1

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->getDividerPosition()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/aide/ui/views/SplitView;->getAnimationDuration(II)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v1, Lcom/aide/ui/views/r;

    invoke-direct {v1, p0}, Lcom/aide/ui/views/r;-><init>(Lcom/aide/ui/views/SplitView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->updateChildVisibilities()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isDragging:Z

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/SplitView;->animationPosition:I

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->updateChildVisibilities()V

    iget-object v0, p0, Lcom/aide/ui/views/SplitView;->listener:Lcom/aide/ui/views/SplitView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/SplitView;->listener:Lcom/aide/ui/views/SplitView$a;

    iget-boolean v1, p0, Lcom/aide/ui/views/SplitView;->isSplit:Z

    invoke-interface {v0, v1}, Lcom/aide/ui/views/SplitView$a;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public setAnimationPosition(I)V
    .registers 6

    const-wide v2, 0x23abfad67340db03L    # 7.518602534560726E-137

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x23abfad67340db03L    # 7.518602534560726E-137

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/ui/views/SplitView;->animationPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setOnSplitChangeListener(Lcom/aide/ui/views/SplitView$a;)V
    .registers 6

    const-wide v2, 0xcbb86d56fef9fd8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xcbb86d56fef9fd8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/SplitView;->listener:Lcom/aide/ui/views/SplitView$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setSwipeEnabled(Z)V
    .registers 6

    const-wide v2, 0x1e617bdc8f338345L    # 2.428896592808986E-162

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e617bdc8f338345L    # 2.428896592808986E-162

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/views/SplitView;->isSwipeEnabled:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public splitHorizontalByDefault()Z
    .registers 5

    const-wide v2, 0x8a5f7c08a2333dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8a5f7c08a2333dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->Hw(Landroid/content/Context;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const v1, 0x44228000    # 650.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public toggleSplit(Ljava/lang/Runnable;)V
    .registers 6

    const-wide v2, 0x1aa5353700722d78L    # 2.555463421926821E-180

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/SplitView;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1aa5353700722d78L    # 2.555463421926821E-180

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/SplitView;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/aide/ui/views/SplitView;->closeSplit(ZLjava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/views/SplitView;->setOrientation(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/SplitView;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->splitHorizontalByDefault()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/aide/ui/views/SplitView;->openSplit(ZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
