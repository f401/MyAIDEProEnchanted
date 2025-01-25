.class public Lcom/aide/ui/Ga;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Z
    .annotation runtime Labcd/ru;
        field = -0x839637081fec523L
    .end annotation
.end field

.field private Hw:Landroid/app/Activity;
    .annotation runtime Labcd/ru;
        field = -0x2bf7b9971c2037d0L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = 0xc486061f6fda400L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/Ga;

    const-wide v1, -0x4174fd3e6bee7840L  # -2.0124589109315033E-7

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ga;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5d8b70598d9e801L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/Ga;->FH:Z

    iput-object p1, p0, Lcom/aide/ui/Ga;->Hw:Landroid/app/Activity;

    iput p2, p0, Lcom/aide/ui/Ga;->v5:I

    invoke-direct {p0}, Lcom/aide/ui/Ga;->j6()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ga;->DW:Z

    if-eqz v1, :cond_3b

    const-wide v2, -0x5d8b70598d9e801L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method private j6()Landroid/view/View;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x6f173c1f5cc8460L
    .end annotation

    const-wide v0, -0xf0daa594b03a7b5L  # -1.1659165448939698E236

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Ga;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Ga;->Hw:Landroid/app/Activity;

    iget v3, p0, Lcom/aide/ui/Ga;->v5:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Ga;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method


# virtual methods
.method public j6(Landroid/view/View$OnClickListener;)V
    .registers 6

    const-wide v0, -0x135ccab67c8aa9e9L  # -2.069247899185812E215

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Ga;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/Ga;->j6()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Ga;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(Z)V
    .registers 11

    const-wide v0, 0x105184f4b9a78540L  # 4.513791960886494E-230

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Ga;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/Ga;->j6()Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aide/ui/Ga;->FH:Z

    if-eq p1, v3, :cond_5c

    iput-boolean p1, p0, Lcom/aide/ui/Ga;->FH:Z

    const-wide/16 v3, 0x12c

    const/high16 v5, 0x42700000  # 60.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_3b

    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget-object v8, p0, Lcom/aide/ui/Ga;->Hw:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v8, v5

    invoke-direct {v7, v6, v6, v8, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v7, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5c

    :cond_3b
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget-object v8, p0, Lcom/aide/ui/Ga;->Hw:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v8, v5

    invoke-direct {v7, v6, v6, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v7, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Lcom/aide/ui/Fa;

    invoke-direct {v3, p0, v2}, Lcom/aide/ui/Fa;-><init>(Lcom/aide/ui/Ga;Landroid/view/View;)V

    invoke-virtual {v7, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_5d

    :cond_5c
    :goto_5c
    return-void

    :catchall_5d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Ga;->DW:Z

    if-eqz v3, :cond_6a

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6a
    throw v2
.end method
