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
    .registers 3

    const-class v0, Lcom/aide/ui/AIDEAnalysisProgressBar;

    const-wide v1, 0x6abc08d9fdd9497bL  # 1.4063423272716091E206

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x6941602e4dbc5ddL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/aide/ui/AIDEAnalysisProgressBar;->FH:I

    invoke-direct {p0}, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW()V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x3581a04496b01c28L  # -7.102653225037226E50

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/AIDEAnalysisProgressBar;->FH:I

    invoke-direct {p0}, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW()V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, -0x3581a04496b01c28L  # -7.102653225037226E50

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x10c269b1f9774edfL  # 6.072322424036257E-228

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/AIDEAnalysisProgressBar;->FH:I

    invoke-direct {p0}, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW()V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x10c269b1f9774edfL  # 6.072322424036257E-228

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x15c6adeac05b8d3cL
    .end annotation

    const-wide v0, 0xb556d080636ce3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method


# virtual methods
.method public j6()V
    .registers 7

    const-wide v0, 0x3be1354a38a1b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ck;->VH()I

    move-result v2

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v3

    invoke-virtual {v3}, Labcd/ck;->Zo()I

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_21

    const/4 v3, 0x0

    goto :goto_24

    :cond_21
    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v2

    :goto_24
    div-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0x5

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v5

    invoke-virtual {v5}, Labcd/ck;->u7()Z

    move-result v5

    if-nez v5, :cond_33

    const/4 v3, 0x0

    :cond_33
    const/16 v5, 0x14

    if-ge v2, v5, :cond_38

    const/4 v3, 0x0

    :cond_38
    iget v2, p0, Lcom/aide/ui/AIDEAnalysisProgressBar;->FH:I

    if-eq v2, v3, :cond_4b

    iput v3, p0, Lcom/aide/ui/AIDEAnalysisProgressBar;->FH:I

    if-eqz v3, :cond_47

    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4b

    :cond_47
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_4c

    :cond_4b
    :goto_4b
    return-void

    :catchall_4c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW:Z

    if-eqz v3, :cond_54

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_54
    throw v2
.end method
