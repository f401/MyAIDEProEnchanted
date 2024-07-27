.class public Labcd/Qc;
.super Labcd/tc;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static lg:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static rN:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x7e37a276eae38dL

    const-class v0, Labcd/Qc;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ga;Labcd/Ca;Labcd/Ba;Labcd/pa;)V
    .registers 15

    const-wide v8, 0x496797653c421d23L    # 4.2088443468633716E45

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x496797653c421d23L    # 4.2088443468633716E45

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v5, 0x64

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Labcd/tc;-><init>(Labcd/Ga;Labcd/Ca;Labcd/Ba;Labcd/pa;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Qc;->rN:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private EQ()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xe84c5ff696da29dL
    .end annotation

    const-wide v4, 0xc0632e736b2c7b9L

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc0632e736b2c7b9L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Labcd/tc;->we:I

    const/16 v2, 0x40

    if-eq v1, v2, :cond_2

    iget v1, p0, Labcd/tc;->we:I

    if-eqz v1, :cond_2

    invoke-direct {p0}, Labcd/Qc;->we()V

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Labcd/Qc;->VH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    const/16 v1, 0x70

    :try_start_1
    invoke-virtual {p0, v1, v0}, Labcd/tc;->Hw(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method private J0()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xac116a9accf9328L
    .end annotation

    const-wide v4, 0x1061737fd4ff30L

    const/16 v2, 0x40

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1061737fd4ff30L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/Qc;->Ws()V

    iget v0, p0, Labcd/tc;->we:I

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-direct {p0}, Labcd/Qc;->VH()V

    invoke-direct {p0}, Labcd/Qc;->EQ()V

    iget v0, p0, Labcd/tc;->we:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    :goto_0
    invoke-direct {p0}, Labcd/Qc;->VH()V

    const/16 v0, 0x6e

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Labcd/tc;->Hw(II)V

    return-void

    :cond_1
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Labcd/tc;->FH(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    new-instance v0, Labcd/tc$a;

    invoke-direct {v0}, Labcd/tc$a;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private J8()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x1c44738388edf61dL
    .end annotation

    const-wide v6, 0x9ba1b5042e79b11L

    const/16 v5, 0x97

    const/4 v4, 0x2

    const/4 v3, 0x1

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9ba1b5042e79b11L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Labcd/tc;->we:I

    const/16 v2, 0x44

    if-eq v1, v2, :cond_4

    iget v1, p0, Labcd/tc;->we:I

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_4

    iget v1, p0, Labcd/tc;->we:I

    if-eqz v1, :cond_4

    iget v1, p0, Labcd/tc;->we:I

    const/16 v2, 0x4b

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Labcd/tc;->Zo(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    const/16 v1, 0x97

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Labcd/tc;->Hw(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Labcd/tc;->we:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Labcd/tc;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Labcd/tc;->v5()V

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Labcd/tc;->Zo()I

    move-result v1

    if-eq v1, v5, :cond_6

    :cond_5
    const/16 v1, 0x96

    invoke-virtual {p0, v1, v0}, Labcd/tc;->Hw(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-void
.end method

.method private VH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4f4256a88e8cb2d8L
    .end annotation

    const-wide v2, 0xfa5140fbc70dc50L

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xfa5140fbc70dc50L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    :goto_0
    iget v0, p0, Labcd/tc;->we:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Labcd/tc;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private Ws()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1412e3c48b2b71ccL
    .end annotation

    const-wide v4, 0x1f671a5fe4113b98L

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f671a5fe4113b98L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0}, Labcd/Qc;->J8()V

    invoke-direct {p0}, Labcd/Qc;->VH()V

    :goto_0
    iget v1, p0, Labcd/tc;->we:I

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-direct {p0}, Labcd/Qc;->VH()V

    invoke-direct {p0}, Labcd/Qc;->J8()V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v1, 0x6f

    invoke-virtual {p0, v1, v0}, Labcd/tc;->Hw(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private gn()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x30f2be5097a2bb20L
    .end annotation

    const-wide v2, -0x11a24446e036e780L    # -4.2991224801473854E223

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11a24446e036e780L    # -4.2991224801473854E223

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0xc8

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Labcd/Qc;->j6([I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Labcd/tc;->Hw(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :array_0
    .array-data 4
        0x4d
        0x4c
        0x40
        0x0
    .end array-data
.end method

.method private varargs j6([I)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xc1117ba0e910773L
    .end annotation

    const-wide v6, 0x1914a2448738e1bL

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x1914a2448738e1bL

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Labcd/tc;->we:I

    move v0, v1

    :goto_1
    array-length v4, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v4, :cond_2

    aget v4, p1, v0

    if-ne v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    :try_start_1
    invoke-virtual {p0}, Labcd/tc;->v5()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Labcd/tc;->Hw()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private tp()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x264fb3186bd4cb4cL
    .end annotation

    const-wide v4, 0xfa129ef8496b630L    # 2.159270705600061E-233

    const/16 v3, 0x40

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xfa129ef8496b630L    # 2.159270705600061E-233

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-direct {p0}, Labcd/Qc;->VH()V

    invoke-direct {p0}, Labcd/Qc;->u7()V

    iget v1, p0, Labcd/tc;->we:I

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    :goto_0
    iget v1, p0, Labcd/tc;->we:I

    if-eqz v1, :cond_2

    iget v1, p0, Labcd/tc;->we:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Labcd/tc;->a8:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Labcd/Qc;->VH()V

    invoke-direct {p0}, Labcd/Qc;->J0()V
    :try_end_1
    .catch Labcd/tc$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    iput v1, p0, Labcd/tc;->a8:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_3
    iget v1, p0, Labcd/tc;->we:I

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    :goto_1
    const/16 v1, 0x78

    invoke-virtual {p0, v1, v0}, Labcd/tc;->Hw(II)V

    return-void

    :cond_3
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Labcd/tc;->FH(I)V

    goto :goto_1

    :cond_4
    new-instance v0, Labcd/tc$a;

    invoke-direct {v0}, Labcd/tc$a;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method private u7()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x37647620af0645cL
    .end annotation

    const-wide v2, -0x4833b3efba1fe40L    # -6.844696052789987E286

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4833b3efba1fe40L    # -6.844696052789987E286

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x79

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Labcd/Qc;->j6([I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Labcd/tc;->Hw(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :array_0
    .array-data 4
        0x4c
        0x40
        0x0
    .end array-data
.end method

.method private we()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x37dcfe8623ab1c3L
    .end annotation

    const-wide v4, 0x1ef52794f78ea7a7L

    const/16 v2, 0x4d

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ef52794f78ea7a7L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/tc;->we:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Labcd/tc;->Zo(I)I

    move-result v0

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-direct {p0}, Labcd/Qc;->gn()V

    iget v0, p0, Labcd/tc;->we:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    :goto_0
    const/16 v0, 0x71

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Labcd/tc;->Hw(II)V

    return-void

    :cond_1
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Labcd/tc;->FH(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Labcd/tc;->v5()V

    new-instance v0, Labcd/tc$a;

    invoke-direct {v0}, Labcd/tc$a;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method protected j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x153415fb6a7af435L
    .end annotation

    const-wide v4, 0x45a1078ec4edb995L    # 2.6351909282162305E27

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x45a1078ec4edb995L    # 2.6351909282162305E27

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Labcd/tc;->we:I

    if-eqz v1, :cond_3

    iget v1, p0, Labcd/tc;->a8:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Labcd/Qc;->VH()V

    iget v2, p0, Labcd/tc;->we:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Labcd/Qc;->tp()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Labcd/Qc;->J0()V
    :try_end_1
    .catch Labcd/tc$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    iput v1, p0, Labcd/tc;->a8:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    const/16 v1, 0x64

    :try_start_3
    invoke-virtual {p0, v1, v0}, Labcd/tc;->Hw(II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    return-void
.end method
