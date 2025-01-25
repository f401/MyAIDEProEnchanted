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
    .registers 3

    const-class v0, Labcd/Qc;

    const-wide v1, -0x7e37a276eae38dL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ga;Labcd/Ca;Labcd/Ba;Labcd/pa;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Qc;->lg:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x496797653c421d23L  # 4.2088443468633716E45

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/16 v6, 0x64

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Labcd/tc;-><init>(Labcd/Ga;Labcd/Ca;Labcd/Ba;Labcd/pa;II)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Labcd/Qc;->rN:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x496797653c421d23L  # 4.2088443468633716E45

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method private EQ()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xe84c5ff696da29dL
    .end annotation

    const-wide v0, 0xc0632e736b2c7b9L

    :try_start_5
    sget-boolean v2, Labcd/Qc;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget v3, p0, Labcd/tc;->we:I

    const/16 v4, 0x40

    if-eq v3, v4, :cond_20

    iget v3, p0, Labcd/tc;->we:I

    if-eqz v3, :cond_20

    invoke-direct {p0}, Labcd/Qc;->we()V

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0}, Labcd/Qc;->VH()V

    goto :goto_d

    :cond_20
    const/16 v3, 0x70

    invoke-virtual {p0, v3, v2}, Labcd/tc;->Hw(II)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Qc;->rN:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v2

    :goto_30
    goto :goto_2f
.end method

.method private J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xac116a9accf9328L
    .end annotation

    const-wide v0, 0x1061737fd4ff30L

    :try_start_5
    sget-boolean v2, Labcd/Qc;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/Qc;->Ws()V

    iget v2, p0, Labcd/tc;->we:I

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_35

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-direct {p0}, Labcd/Qc;->VH()V

    invoke-direct {p0}, Labcd/Qc;->EQ()V

    iget v2, p0, Labcd/tc;->we:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_28

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    goto :goto_2b

    :cond_28
    invoke-virtual {p0, v3}, Labcd/tc;->FH(I)V

    :goto_2b
    invoke-direct {p0}, Labcd/Qc;->VH()V

    const/16 v2, 0x6e

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Labcd/tc;->Hw(II)V

    return-void

    :cond_35
    new-instance v2, Labcd/tc$a;

    invoke-direct {v2}, Labcd/tc$a;-><init>()V

    throw v2
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v2

    sget-boolean v3, Labcd/Qc;->rN:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method private J8()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x1c44738388edf61dL
    .end annotation

    const-wide v0, 0x9ba1b5042e79b11L

    :try_start_5
    sget-boolean v2, Labcd/Qc;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget v3, p0, Labcd/tc;->we:I

    const/16 v4, 0x44

    const/16 v5, 0x97

    const/4 v6, 0x1

    if-eq v3, v4, :cond_46

    iget v3, p0, Labcd/tc;->we:I

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_46

    iget v3, p0, Labcd/tc;->we:I

    if-eqz v3, :cond_46

    iget v3, p0, Labcd/tc;->we:I

    const/16 v4, 0x4b

    if-ne v3, v4, :cond_37

    invoke-virtual {p0, v6}, Labcd/tc;->Zo(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_37

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-virtual {p0, v5, v4}, Labcd/tc;->Hw(II)V

    goto :goto_3f

    :cond_37
    iget v3, p0, Labcd/tc;->we:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_42

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_42
    invoke-virtual {p0}, Labcd/tc;->v5()V

    goto :goto_d

    :cond_46
    if-ne v2, v6, :cond_4e

    invoke-virtual {p0}, Labcd/tc;->Zo()I

    move-result v3

    if-eq v3, v5, :cond_53

    :cond_4e
    const/16 v3, 0x96

    invoke-virtual {p0, v3, v2}, Labcd/tc;->Hw(II)V
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_54

    :cond_53
    return-void

    :catchall_54
    move-exception v2

    sget-boolean v3, Labcd/Qc;->rN:Z

    if-eqz v3, :cond_5c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5c
    goto :goto_5e

    :goto_5d
    throw v2

    :goto_5e
    goto :goto_5d
.end method

.method private VH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4f4256a88e8cb2d8L
    .end annotation

    const-wide v0, 0xfa5140fbc70dc50L

    :try_start_5
    sget-boolean v2, Labcd/Qc;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    :goto_c
    iget v2, p0, Labcd/tc;->we:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    invoke-virtual {p0}, Labcd/tc;->v5()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_16

    goto :goto_c

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Qc;->rN:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    goto :goto_20

    :goto_1f
    throw v2

    :goto_20
    goto :goto_1f
.end method

.method private Ws()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1412e3c48b2b71ccL
    .end annotation

    const-wide v0, 0x1f671a5fe4113b98L

    :try_start_5
    sget-boolean v2, Labcd/Qc;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/Qc;->J8()V

    invoke-direct {p0}, Labcd/Qc;->VH()V

    const/4 v2, 0x1

    :goto_13
    iget v3, p0, Labcd/tc;->we:I

    const/16 v4, 0x44

    if-ne v3, v4, :cond_25

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-direct {p0}, Labcd/Qc;->VH()V

    invoke-direct {p0}, Labcd/Qc;->J8()V

    add-int/lit8 v2, v2, 0x2

    goto :goto_13

    :cond_25
    const/16 v3, 0x6f

    invoke-virtual {p0, v3, v2}, Labcd/tc;->Hw(II)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/Qc;->rN:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method private gn()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x30f2be5097a2bb20L
    .end annotation

    const-wide v0, -0x11a24446e036e780L  # -4.2991224801473854E223

    :try_start_5
    sget-boolean v2, Labcd/Qc;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/16 v2, 0x4d

    const/16 v3, 0x4c

    const/16 v4, 0x40

    const/4 v5, 0x0

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Qc;->j6([I)I

    move-result v2

    const/16 v3, 0xc8

    invoke-virtual {p0, v3, v2}, Labcd/tc;->Hw(II)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/Qc;->rN:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method private varargs j6([I)I
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xc1117ba0e910773L
    .end annotation

    const-wide v0, 0x1914a2448738e1bL

    :try_start_5
    sget-boolean v2, Labcd/Qc;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget v4, p0, Labcd/tc;->we:I

    const/4 v5, 0x0

    :goto_11
    array-length v6, p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_29

    if-ge v5, v6, :cond_1c

    aget v6, p1, v5

    if-ne v4, v6, :cond_19

    return v3

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1c
    const/4 v5, 0x3

    if-ne v4, v5, :cond_23

    :try_start_1f
    invoke-virtual {p0}, Labcd/tc;->v5()V

    goto :goto_e

    :cond_23
    invoke-virtual {p0}, Labcd/tc;->Hw()V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_29

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Qc;->rN:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    goto :goto_33

    :goto_32
    throw v2

    :goto_33
    goto :goto_32
.end method

.method private tp()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x264fb3186bd4cb4cL
    .end annotation

    const-wide v0, 0xfa129ef8496b630L  # 2.159270705600061E-233

    :try_start_5
    sget-boolean v2, Labcd/Qc;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-direct {p0}, Labcd/Qc;->VH()V

    invoke-direct {p0}, Labcd/Qc;->u7()V

    iget v2, p0, Labcd/tc;->we:I

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_49

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    const/4 v2, 0x4

    :goto_1f
    iget v3, p0, Labcd/tc;->we:I

    const/16 v4, 0x40

    if-eqz v3, :cond_38

    iget v3, p0, Labcd/tc;->we:I

    if-eq v3, v4, :cond_38

    iget v3, p0, Labcd/tc;->a8:I
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_4f

    :try_start_2b
    invoke-direct {p0}, Labcd/Qc;->VH()V

    invoke-direct {p0}, Labcd/Qc;->J0()V
    :try_end_31
    .catch Labcd/tc$a; {:try_start_2b .. :try_end_31} :catch_34
    .catchall {:try_start_2b .. :try_end_31} :catchall_4f

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :catch_34
    move-exception v4

    :try_start_35
    iput v3, p0, Labcd/tc;->a8:I

    goto :goto_1f

    :cond_38
    iget v3, p0, Labcd/tc;->we:I

    if-ne v3, v4, :cond_40

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    goto :goto_43

    :cond_40
    invoke-virtual {p0, v4}, Labcd/tc;->FH(I)V

    :goto_43
    const/16 v3, 0x78

    invoke-virtual {p0, v3, v2}, Labcd/tc;->Hw(II)V

    return-void

    :cond_49
    new-instance v2, Labcd/tc$a;

    invoke-direct {v2}, Labcd/tc$a;-><init>()V

    throw v2
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v2

    sget-boolean v3, Labcd/Qc;->rN:Z

    if-eqz v3, :cond_57

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_57
    goto :goto_59

    :goto_58
    throw v2

    :goto_59
    goto :goto_58
.end method

.method private u7()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x37647620af0645cL
    .end annotation

    const-wide v0, -0x4833b3efba1fe40L  # -6.844696052789987E286

    :try_start_5
    sget-boolean v2, Labcd/Qc;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/16 v2, 0x4c

    const/16 v3, 0x40

    const/4 v4, 0x0

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Qc;->j6([I)I

    move-result v2

    const/16 v3, 0x79

    invoke-virtual {p0, v3, v2}, Labcd/tc;->Hw(II)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/Qc;->rN:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method private we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x37dcfe8623ab1c3L
    .end annotation

    const-wide v0, 0x1ef52794f78ea7a7L

    :try_start_5
    sget-boolean v2, Labcd/Qc;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/tc;->we:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Labcd/tc;->Zo(I)I

    move-result v2

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_37

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    invoke-direct {p0}, Labcd/Qc;->gn()V

    iget v2, p0, Labcd/tc;->we:I

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_2d

    invoke-virtual {p0}, Labcd/tc;->Hw()V

    goto :goto_30

    :cond_2d
    invoke-virtual {p0, v3}, Labcd/tc;->FH(I)V

    :goto_30
    const/16 v2, 0x71

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Labcd/tc;->Hw(II)V

    return-void

    :cond_37
    invoke-virtual {p0}, Labcd/tc;->v5()V

    new-instance v2, Labcd/tc$a;

    invoke-direct {v2}, Labcd/tc$a;-><init>()V

    throw v2
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/Qc;->rN:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    throw v2
.end method


# virtual methods
.method protected j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x153415fb6a7af435L
    .end annotation

    const-wide v0, 0x45a1078ec4edb995L  # 2.6351909282162305E27

    :try_start_5
    sget-boolean v2, Labcd/Qc;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget v3, p0, Labcd/tc;->we:I

    if-eqz v3, :cond_2a

    iget v3, p0, Labcd/tc;->a8:I
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_30

    :try_start_13
    invoke-direct {p0}, Labcd/Qc;->VH()V

    iget v4, p0, Labcd/tc;->we:I

    const/16 v5, 0x17

    if-ne v4, v5, :cond_20

    invoke-direct {p0}, Labcd/Qc;->tp()V

    goto :goto_23

    :cond_20
    invoke-direct {p0}, Labcd/Qc;->J0()V
    :try_end_23
    .catch Labcd/tc$a; {:try_start_13 .. :try_end_23} :catch_26
    .catchall {:try_start_13 .. :try_end_23} :catchall_30

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catch_26
    move-exception v4

    :try_start_27
    iput v3, p0, Labcd/tc;->a8:I

    goto :goto_d

    :cond_2a
    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Labcd/tc;->Hw(II)V
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/Qc;->rN:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    goto :goto_3a

    :goto_39
    throw v2

    :goto_3a
    goto :goto_39
.end method
