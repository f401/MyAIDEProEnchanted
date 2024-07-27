.class public Labcd/Kb$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Kb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
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
        field = 0x22c90fa14bd78c1cL
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x12c878477521699cL
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x7f905c874e804c0L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x29ec388f367c1649L
    .end annotation
.end field

.field final gn:Labcd/Kb;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0xe4bc75c57ba9715L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x3b850978af248f0L

    const-class v0, Labcd/Kb$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Kb;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x10b0018cf109a40L
    .end annotation

    const-wide v4, -0x1edcbb9ac233435L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1edcbb9ac233435L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Kb$a;->gn:Labcd/Kb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Kb;Labcd/Jb;)V
    .registers 10

    const-wide v2, -0xf63e357eaa57410L    # -2.7932348845133454E234

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf63e357eaa57410L    # -2.7932348845133454E234

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Kb$a;-><init>(Labcd/Kb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kb$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0x803de3ba5273530L    # -9.288706363615695E269

    :try_start_0
    sget-boolean v0, Labcd/Kb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x803de3ba5273530L    # -9.288706363615695E269

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, -0x18ea0d50593e9f80L    # -3.8199010274939E188

    :try_start_0
    sget-boolean v0, Labcd/Kb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18ea0d50593e9f80L    # -3.8199010274939E188

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Kb$a;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, -0x2e9838e62e10fa20L    # -1.4435084819035557E84

    :try_start_0
    sget-boolean v0, Labcd/Kb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2e9838e62e10fa20L    # -1.4435084819035557E84

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Kb$a;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)V
    .registers 8

    const-wide v4, 0xf67aa61aa1c6c7dL

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Kb$a;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xf67aa61aa1c6c7dL

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Labcd/Kb$a;->VH:I

    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Kb$a;->gn:Labcd/Kb;

    invoke-static {v1}, Labcd/Kb;->j6(Labcd/Kb;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Kb$a;->Hw:I

    iget-object v1, p0, Labcd/Kb$a;->gn:Labcd/Kb;

    invoke-static {v1}, Labcd/Kb;->j6(Labcd/Kb;)[I

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Labcd/Kb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb$a;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()Z
    .registers 9

    const-wide v6, 0x386067de43926fc0L    # 3.856969816502942E-37

    const v4, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Kb$a;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x386067de43926fc0L    # 3.856969816502942E-37

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v2, p0, Labcd/Kb$a;->Hw:I

    if-nez v2, :cond_7

    :goto_0
    iget v2, p0, Labcd/Kb$a;->FH:I

    iget-object v3, p0, Labcd/Kb$a;->gn:Labcd/Kb;

    invoke-static {v3}, Labcd/Kb;->j6(Labcd/Kb;)[I

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-object v2, p0, Labcd/Kb$a;->gn:Labcd/Kb;

    invoke-static {v2}, Labcd/Kb;->j6(Labcd/Kb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Kb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Kb$a;->v5:I

    iget v2, p0, Labcd/Kb$a;->v5:I

    if-eqz v2, :cond_4

    iget v2, p0, Labcd/Kb$a;->v5:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_4

    iget v0, p0, Labcd/Kb$a;->v5:I

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb$a;->v5:I

    :cond_3
    iget-object v0, p0, Labcd/Kb$a;->gn:Labcd/Kb;

    invoke-static {v0}, Labcd/Kb;->DW(Labcd/Kb;)[I

    move-result-object v0

    iget v2, p0, Labcd/Kb$a;->FH:I

    aget v0, v0, v2

    iput v0, p0, Labcd/Kb$a;->Zo:I

    iget v0, p0, Labcd/Kb$a;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Kb$a;->FH:I

    move v0, v1

    goto :goto_1

    :cond_4
    iget v2, p0, Labcd/Kb$a;->FH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Kb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kb$a;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :try_start_1
    iget v2, p0, Labcd/Kb$a;->FH:I

    iget v3, p0, Labcd/Kb$a;->Hw:I

    add-int/2addr v2, v3

    iget-object v3, p0, Labcd/Kb$a;->gn:Labcd/Kb;

    invoke-static {v3}, Labcd/Kb;->j6(Labcd/Kb;)[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Labcd/Kb$a;->FH:I

    :cond_7
    iget-object v2, p0, Labcd/Kb$a;->gn:Labcd/Kb;

    invoke-static {v2}, Labcd/Kb;->j6(Labcd/Kb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Kb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Kb$a;->v5:I

    iget v2, p0, Labcd/Kb$a;->v5:I

    if-eqz v2, :cond_1

    iget v2, p0, Labcd/Kb$a;->v5:I

    iget v3, p0, Labcd/Kb$a;->VH:I

    if-ne v2, v3, :cond_6

    iget v0, p0, Labcd/Kb$a;->v5:I

    if-ne v0, v4, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Labcd/Kb$a;->v5:I

    :cond_8
    iget-object v0, p0, Labcd/Kb$a;->gn:Labcd/Kb;

    invoke-static {v0}, Labcd/Kb;->DW(Labcd/Kb;)[I

    move-result-object v0

    iget v2, p0, Labcd/Kb$a;->FH:I

    aget v0, v0, v2

    iput v0, p0, Labcd/Kb$a;->Zo:I

    iget v0, p0, Labcd/Kb$a;->FH:I

    iget v2, p0, Labcd/Kb$a;->Hw:I

    add-int/2addr v0, v2

    iget-object v2, p0, Labcd/Kb$a;->gn:Labcd/Kb;

    invoke-static {v2}, Labcd/Kb;->j6(Labcd/Kb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Labcd/Kb$a;->FH:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_1
.end method
