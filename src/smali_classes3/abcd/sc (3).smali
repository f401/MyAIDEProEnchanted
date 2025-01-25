.class public Labcd/sc;
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
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0x1025758189dd76f0L
    .end annotation
.end field

.field protected Hw:[C
    .annotation runtime Labcd/ru;
        field = -0x15c23d1e3008c110L
    .end annotation
.end field

.field protected Zo:I
    .annotation runtime Labcd/ru;
        field = -0x4694af6f0ec709c0L
    .end annotation
.end field

.field protected v5:I
    .annotation runtime Labcd/ru;
        field = -0x15b47c2cb4edf100L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/sc;

    const-wide v1, -0xbd49f19f65a2e90L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x111166187946c5d9L

    :try_start_6
    sget-boolean v3, Labcd/sc;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x64

    new-array v3, v3, [C

    iput-object v3, p0, Labcd/sc;->Hw:[C

    const/4 v3, 0x0

    iput v3, p0, Labcd/sc;->v5:I

    iput v3, p0, Labcd/sc;->Zo:I

    iput-object p1, p0, Labcd/sc;->FH:Labcd/La;
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v3

    sget-boolean v4, Labcd/sc;->DW:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0xfc2ded7d52542bbL  # 9.495904255528594E-233

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/sc;->v5:I

    iput v2, p0, Labcd/sc;->Zo:I
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method protected final DW(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xcffe333c7d66e1L
    .end annotation

    const-wide v0, -0x48ef268f3131096bL  # -1.8888805520980295E-43

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget v2, p0, Labcd/sc;->v5:I

    add-int/2addr v2, p1

    iget-object v3, p0, Labcd/sc;->Hw:[C

    array-length v4, v3

    if-lt v2, v4, :cond_28

    array-length v2, v3

    :goto_15
    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Labcd/sc;->v5:I

    add-int v4, v3, p1

    if-lt v4, v2, :cond_1e

    goto :goto_15

    :cond_1e
    new-array v2, v2, [C

    iget-object v4, p0, Labcd/sc;->Hw:[C

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Labcd/sc;->Hw:[C
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    :cond_28
    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_36

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    goto :goto_38

    :goto_37
    throw v2

    :goto_38
    goto :goto_37
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 8

    const-wide v0, -0x151911870b4366cL

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Labcd/sc;->v5:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_16

    return v4

    :cond_16
    const/4 v2, 0x0

    :goto_17
    iget v3, p0, Labcd/sc;->v5:I

    if-ge v2, v3, :cond_29

    iget-object v3, p0, Labcd/sc;->Hw:[C

    aget-char v3, v3, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_2b

    if-eq v3, v5, :cond_26

    return v4

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_29
    const/4 p1, 0x1

    return p1

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method public FH()I
    .registers 7

    const-wide v0, -0x38156cfbc7736eadL  # -2.825862491082523E38

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/sc;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->j3:Labcd/Ga;

    iget-object v3, p0, Labcd/sc;->Hw:[C

    iget v4, p0, Labcd/sc;->v5:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Labcd/Ga;->j6([CII)I

    move-result v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public FH(Ljava/lang/String;)I
    .registers 9

    const-wide v0, -0x8165405ae16d611L

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget v4, p0, Labcd/sc;->v5:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_31

    const/4 v4, 0x0

    :goto_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_30

    iget-object v5, p0, Labcd/sc;->Hw:[C

    add-int v6, v3, v4

    aget-char v5, v5, v6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_33

    if-eq v5, v6, :cond_2d

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_30
    return v3

    :cond_31
    const/4 p1, -0x1

    return p1

    :catchall_33
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw v2

    :goto_3d
    goto :goto_3c
.end method

.method public Hw()Ljava/io/Reader;
    .registers 7

    const-wide v0, -0x3005bdcc4996c2dL

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/CharArrayReader;

    iget-object v3, p0, Labcd/sc;->Hw:[C

    iget v4, p0, Labcd/sc;->v5:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Ljava/io/CharArrayReader;-><init>([CII)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Zo()V
    .registers 7

    const-wide v0, 0x3b175a14b3846979L  # 4.8290552647982456E-24

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget v3, p0, Labcd/sc;->v5:I

    if-ge v2, v3, :cond_26

    iget-object v3, p0, Labcd/sc;->Hw:[C

    aget-char v4, v3, v2

    const v5, 0xfffe

    if-ne v4, v5, :cond_1d

    add-int/lit8 v2, v2, 0x8

    goto :goto_23

    :cond_1d
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, v3, v2
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_27

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_26
    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    goto :goto_31

    :goto_30
    throw v2

    :goto_31
    goto :goto_30
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x595c7737d11dacL

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Labcd/sc;->j6(II)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public j6(C)V
    .registers 8

    const-wide v0, 0x4288c55d0ffa7a39L  # 3.404493619023278E12

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Labcd/sc;->DW(I)V

    iget-object v3, p0, Labcd/sc;->Hw:[C

    iget v4, p0, Labcd/sc;->v5:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/sc;->v5:I
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_25

    aput-char p1, v3, v4

    :try_start_1f
    iget v3, p0, Labcd/sc;->Zo:I

    add-int/2addr v3, v2

    iput v3, p0, Labcd/sc;->Zo:I
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_32

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public j6(I)V
    .registers 8

    const-wide v0, 0x3af552a022d47e0L

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/sc;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->j3:Labcd/Ga;

    invoke-virtual {v2, p1}, Labcd/Ga;->DW(I)I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/sc;->DW(I)V

    iget-object v3, p0, Labcd/sc;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->j3:Labcd/Ga;

    iget-object v4, p0, Labcd/sc;->Hw:[C

    iget v5, p0, Labcd/sc;->v5:I

    invoke-virtual {v3, p1, v4, v5}, Labcd/Ga;->j6(I[CI)I

    iget v3, p0, Labcd/sc;->v5:I

    add-int/2addr v3, v2

    iput v3, p0, Labcd/sc;->v5:I

    iget v3, p0, Labcd/sc;->Zo:I

    add-int/2addr v3, v2

    iput v3, p0, Labcd/sc;->Zo:I
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_3a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x1ff52f32a5147d83L  # 9.875013984240159E-155

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Labcd/sc;->DW(I)V

    iget-object v0, p0, Labcd/sc;->Hw:[C

    iget v1, p0, Labcd/sc;->v5:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/sc;->v5:I
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_81

    const v3, 0xfffe

    aput-char v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    :try_start_2a
    iput v1, p0, Labcd/sc;->v5:I
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_81

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    :try_start_35
    iput v2, p0, Labcd/sc;->v5:I
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_81

    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    :try_start_40
    iput v1, p0, Labcd/sc;->v5:I
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_81

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    :try_start_4b
    iput v2, p0, Labcd/sc;->v5:I
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_81

    ushr-int/lit8 v3, p1, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    :try_start_56
    iput v1, p0, Labcd/sc;->v5:I
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_81

    ushr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    :try_start_61
    iput v2, p0, Labcd/sc;->v5:I
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_81

    ushr-int/lit8 v3, p2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    :try_start_6c
    iput v1, p0, Labcd/sc;->v5:I
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_81

    ushr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    :try_start_77
    iput v2, p0, Labcd/sc;->v5:I
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_81

    ushr-int/lit8 p1, p2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void

    :catchall_81
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_9a

    const-wide v2, 0x1ff52f32a5147d83L  # 9.875013984240159E-155

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9a
    throw v0
.end method

.method public j6(Labcd/sc;)V
    .registers 9

    const-wide v0, 0x36be816fd3dcc573L  # 5.3434335118335064E-45

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p1, Labcd/sc;->v5:I

    invoke-virtual {p0, v2}, Labcd/sc;->DW(I)V

    iget-object v2, p1, Labcd/sc;->Hw:[C

    iget-object v3, p0, Labcd/sc;->Hw:[C

    iget v4, p0, Labcd/sc;->v5:I

    iget v5, p1, Labcd/sc;->v5:I

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Labcd/sc;->v5:I

    iget v3, p1, Labcd/sc;->v5:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/sc;->v5:I

    iget v2, p0, Labcd/sc;->Zo:I

    iget v3, p1, Labcd/sc;->Zo:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/sc;->Zo:I
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public j6(Labcd/sc;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x9eedafdf2333b4fL  # -5.27208825519238E260

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p0, p3}, Labcd/sc;->DW(I)V

    iget-object v0, p1, Labcd/sc;->Hw:[C

    iget-object v1, p0, Labcd/sc;->Hw:[C

    iget v2, p0, Labcd/sc;->v5:I

    invoke-static {v0, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/sc;->v5:I

    add-int v1, v0, p3

    :goto_28
    if-ge v0, v1, :cond_3f

    iget-object v2, p0, Labcd/sc;->Hw:[C

    aget-char v2, v2, v0

    const v3, 0xfffe

    if-ne v2, v3, :cond_36

    add-int/lit8 v0, v0, 0x8

    goto :goto_3c

    :cond_36
    iget v2, p0, Labcd/sc;->Zo:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/sc;->Zo:I

    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_3f
    iput v1, p0, Labcd/sc;->v5:I
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_42

    return-void

    :catchall_42
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_5c

    const-wide v2, -0x9eedafdf2333b4fL  # -5.27208825519238E260

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    goto :goto_5e

    :goto_5d
    throw v0

    :goto_5e
    goto :goto_5d
.end method

.method public j6(Ljava/lang/String;)V
    .registers 8

    const-wide v0, -0x16f7e3485759390L  # -4.421851114974828E301

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/sc;->DW(I)V

    const/4 v2, 0x0

    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_31

    iget-object v3, p0, Labcd/sc;->Hw:[C

    iget v4, p0, Labcd/sc;->v5:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/sc;->v5:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    iget v3, p0, Labcd/sc;->Zo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/sc;->Zo:I
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_32

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_31
    return-void

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    goto :goto_3c

    :goto_3b
    throw v2

    :goto_3c
    goto :goto_3b
.end method

.method public j6([CII)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2a5a3d7ae8f73c0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p0, p3}, Labcd/sc;->DW(I)V

    move v0, p2

    :goto_1c
    add-int v1, p2, p3

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Labcd/sc;->Hw:[C

    iget v2, p0, Labcd/sc;->v5:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/sc;->v5:I
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_36

    aget-char v3, p1, v0

    aput-char v3, v1, v2

    :try_start_2c
    iget v1, p0, Labcd/sc;->Zo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/sc;->Zo:I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_36

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_35
    return-void

    :catchall_36
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_50

    const-wide v2, 0x2a5a3d7ae8f73c0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v0

    :goto_52
    goto :goto_51
.end method

.method public j6(Ljava/lang/String;I)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1401ca6088963b67L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Labcd/sc;->v5:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1c

    return v2

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_33

    iget-object v1, p0, Labcd/sc;->Hw:[C

    add-int v3, p2, v0

    aget-char v1, v1, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_35

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_33
    const/4 p1, 0x1

    return p1

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_4a

    const-wide v2, 0x1401ca6088963b67L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    goto :goto_4c

    :goto_4b
    throw v0

    :goto_4c
    goto :goto_4b
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    const-wide v0, -0x1f7569293242da20L

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuffer;

    iget v3, p0, Labcd/sc;->v5:I

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    :goto_14
    iget v4, p0, Labcd/sc;->v5:I

    if-ge v3, v4, :cond_71

    iget-object v4, p0, Labcd/sc;->Hw:[C

    aget-char v4, v4, v3

    const v5, 0xfffe

    if-ne v4, v5, :cond_6b

    add-int/lit8 v3, v3, 0x1

    const-string v4, "#["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Labcd/sc;->Hw:[C

    aget-char v5, v4, v3

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v4, v6

    add-int/lit8 v7, v3, 0x2

    aget-char v7, v4, v7

    add-int/lit8 v8, v3, 0x3

    aget-char v8, v4, v8

    add-int/lit8 v9, v3, 0x4

    aget-char v9, v4, v9

    add-int/lit8 v10, v3, 0x5

    aget-char v10, v4, v10

    add-int/lit8 v11, v3, 0x6

    aget-char v11, v4, v11
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_76

    add-int/lit8 v3, v3, 0x7

    aget-char v4, v4, v3

    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v7, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v8

    :try_start_51
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    shl-int/lit8 v5, v9, 0x18

    shl-int/lit8 v6, v10, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v11, 0x8

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6e

    :cond_6b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_71
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_75
    .catchall {:try_start_51 .. :try_end_75} :catchall_76

    return-object v0

    :catchall_76
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_7e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7e
    goto :goto_80

    :goto_7f
    throw v2

    :goto_80
    goto :goto_7f
.end method

.method public v5()I
    .registers 5

    const-wide v0, 0x1ed10f5042e10834L

    :try_start_5
    sget-boolean v2, Labcd/sc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/sc;->v5:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/sc;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
