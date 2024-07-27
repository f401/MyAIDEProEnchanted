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
    .registers 4

    const-wide v2, -0x4174fd3e6bee7840L    # -2.0124589109315033E-7

    const-class v0, Lcom/aide/ui/Ga;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 11

    const-wide v2, -0x5d8b70598d9e801L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ga;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x5d8b70598d9e801L

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/Ga;->FH:Z

    iput-object p1, p0, Lcom/aide/ui/Ga;->Hw:Landroid/app/Activity;

    iput p2, p0, Lcom/aide/ui/Ga;->v5:I

    invoke-direct {p0}, Lcom/aide/ui/Ga;->j6()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/Ga;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6()Landroid/view/View;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x6f173c1f5cc8460L
    .end annotation

    const-wide v2, -0xf0daa594b03a7b5L    # -1.1659165448939698E236

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ga;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf0daa594b03a7b5L    # -1.1659165448939698E236

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/Ga;->Hw:Landroid/app/Activity;

    iget v1, p0, Lcom/aide/ui/Ga;->v5:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ga;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public j6(Landroid/view/View$OnClickListener;)V
    .registers 6

    const-wide v2, -0x135ccab67c8aa9e9L    # -2.069247899185812E215

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ga;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x135ccab67c8aa9e9L    # -2.069247899185812E215

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/Ga;->j6()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ga;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)V
    .registers 11

    const/high16 v8, 0x42700000    # 60.0f

    const-wide v6, 0x105184f4b9a78540L    # 4.513791960886494E-230

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ga;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x105184f4b9a78540L    # 4.513791960886494E-230

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/Ga;->j6()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aide/ui/Ga;->FH:Z

    if-eq p1, v1, :cond_1

    iput-boolean p1, p0, Lcom/aide/ui/Ga;->FH:Z

    iget-boolean v1, p0, Lcom/aide/ui/Ga;->FH:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aide/ui/Ga;->Hw:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/aide/ui/Ga;->Hw:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v8

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/aide/ui/Fa;

    invoke-direct {v2, p0, v0}, Lcom/aide/ui/Fa;-><init>(Lcom/aide/ui/Ga;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ga;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method
