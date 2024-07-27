.class public Lcom/aide/ui/AIDEAnalysisProgressBar;
.super Landroid/widget/ProgressBar;


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
.field private FH:I
    .annotation runtime Labcd/ru;
        field = 0x116dc8c301a895b0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x6abc08d9fdd9497bL    # 1.4063423272716091E206

    const-class v0, Lcom/aide/ui/AIDEAnalysisProgressBar;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, 0x6941602e4dbc5ddL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6941602e4dbc5ddL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/AIDEAnalysisProgressBar;->FH:I

    invoke-direct {p0}, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, -0x3581a04496b01c28L    # -7.102653225037226E50

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3581a04496b01c28L    # -7.102653225037226E50

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/AIDEAnalysisProgressBar;->FH:I

    invoke-direct {p0}, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    const-wide v8, 0x10c269b1f9774edfL    # 6.072322424036257E-228

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x10c269b1f9774edfL    # 6.072322424036257E-228

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/AIDEAnalysisProgressBar;->FH:I

    invoke-direct {p0}, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW:Z

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

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x15c6adeac05b8d3cL
    .end annotation

    const-wide v2, 0xb556d080636ce3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb556d080636ce3L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public j6()V
    .registers 7

    const-wide v4, 0x3be1354a38a1b0L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x3be1354a38a1b0L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ck;->VH()I

    move-result v2

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ck;->Zo()I

    move-result v1

    if-nez v2, :cond_3

    move v1, v0

    :goto_0
    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x5

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v3

    invoke-virtual {v3}, Labcd/ck;->u7()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    :cond_1
    const/16 v3, 0x14

    if-ge v2, v3, :cond_6

    :goto_1
    iget v1, p0, Lcom/aide/ui/AIDEAnalysisProgressBar;->FH:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lcom/aide/ui/AIDEAnalysisProgressBar;->FH:I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    move v0, v1

    goto :goto_1
.end method
