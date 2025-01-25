.class public Lcom/aide/common/j;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static final DW:[C
    .annotation runtime Labcd/ru;
        field = 0x1efaf19b363ca7f0L
    .end annotation
.end field

.field private static final FH:[B
    .annotation runtime Labcd/ru;
        field = 0x1efb5230c9c5a997L
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static final j6:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1c4a265277a83eb3L
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x21e2b3941228f5e7L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xb5a108d01063141L  # 5.55489164146523E-254

    :try_start_6
    const-class v3, Lcom/aide/common/j;

    const-wide v4, 0x32b0e4ebababd4e3L  # 1.604202204715261E-64

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/common/j;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/aide/common/j;->j6:Ljava/lang/String;

    const/16 v3, 0x40

    new-array v4, v3, [C

    sput-object v4, Lcom/aide/common/j;->DW:[C

    const/4 v4, 0x0

    const/16 v5, 0x41

    const/4 v6, 0x0

    :goto_29
    const/16 v7, 0x5a

    if-gt v5, v7, :cond_37

    sget-object v7, Lcom/aide/common/j;->DW:[C

    aput-char v5, v7, v6

    add-int/lit8 v5, v5, 0x1

    int-to-char v5, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_37
    const/16 v5, 0x61

    :goto_39
    const/16 v7, 0x7a

    if-gt v5, v7, :cond_47

    sget-object v7, Lcom/aide/common/j;->DW:[C

    aput-char v5, v7, v6

    add-int/lit8 v5, v5, 0x1

    int-to-char v5, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_47
    const/16 v5, 0x30

    :goto_49
    const/16 v7, 0x39

    if-gt v5, v7, :cond_57

    sget-object v7, Lcom/aide/common/j;->DW:[C

    aput-char v5, v7, v6

    add-int/lit8 v5, v5, 0x1

    int-to-char v5, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    :cond_57
    sget-object v5, Lcom/aide/common/j;->DW:[C

    const/16 v7, 0x2b

    aput-char v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x2f

    aput-char v7, v5, v6

    const/16 v5, 0x80

    new-array v5, v5, [B

    sput-object v5, Lcom/aide/common/j;->FH:[B

    const/4 v5, 0x0

    :goto_6a
    sget-object v6, Lcom/aide/common/j;->FH:[B

    array-length v7, v6

    if-ge v5, v7, :cond_75

    const/4 v7, -0x1

    aput-byte v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    :cond_75
    :goto_75
    if-ge v4, v3, :cond_83

    sget-object v5, Lcom/aide/common/j;->FH:[B

    sget-object v6, Lcom/aide/common/j;->DW:[C

    aget-char v6, v6, v4

    int-to-byte v7, v4

    aput-byte v7, v5, v6
    :try_end_80
    .catchall {:try_start_6 .. :try_end_80} :catchall_84

    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    :cond_83
    return-void

    :catchall_84
    move-exception v3

    sget-boolean v4, Lcom/aide/common/j;->v5:Z

    if-eqz v4, :cond_8c

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8c
    goto :goto_8e

    :goto_8d
    throw v3

    :goto_8e
    goto :goto_8d
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x6bf8266a8c2a540L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x316ac74cfd305261L  # 1.2124883491284404E-70

    :try_start_6
    sget-boolean v3, Lcom/aide/common/j;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/common/j;->v5:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/lang/String;)[B
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x20066b67b348011L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/j;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/j;->j6([C)[B

    move-result-object p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object p0

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/common/j;->v5:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static j6([C)[B
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x80fa56473f0762bL  # -5.39980933157093E269

    :try_start_6
    sget-boolean v3, Lcom/aide/common/j;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lcom/aide/common/j;->j6([CII)[B

    move-result-object p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/common/j;->v5:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public static j6([CII)[B
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/common/j;->Hw:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1271d9a4f32aa38dL  # -5.321470736090864E219

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_af

    :cond_18
    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_a7

    :goto_1c
    if-lez p2, :cond_2b

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_2b

    add-int/lit8 p2, p2, -0x1

    goto :goto_1c

    :cond_2b
    mul-int/lit8 v0, p2, 0x3

    :try_start_2d
    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_af

    add-int v2, p1, p2

    const/4 v3, 0x0

    move v4, p1

    :goto_35
    if-ge v4, v2, :cond_a6

    add-int/lit8 v5, v4, 0x1

    aget-char v4, p0, v4

    add-int/lit8 v6, v5, 0x1

    aget-char v5, p0, v5

    const/16 v7, 0x41

    if-ge v6, v2, :cond_4b

    add-int/lit8 v8, v6, 0x1

    aget-char v6, p0, v6

    move v11, v8

    move v8, v6

    move v6, v11

    goto :goto_4d

    :cond_4b
    const/16 v8, 0x41

    :goto_4d
    if-ge v6, v2, :cond_53

    aget-char v7, p0, v6

    add-int/lit8 v6, v6, 0x1

    :cond_53
    const-string v9, "Illegal character in Base64 encoded data."

    const/16 v10, 0x7f

    if-gt v4, v10, :cond_a0

    if-gt v5, v10, :cond_a0

    if-gt v8, v10, :cond_a0

    if-gt v7, v10, :cond_a0

    :try_start_5f
    sget-object v10, Lcom/aide/common/j;->FH:[B

    aget-byte v4, v10, v4

    aget-byte v5, v10, v5

    aget-byte v8, v10, v8

    aget-byte v7, v10, v7
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_af

    if-ltz v4, :cond_9a

    if-ltz v5, :cond_9a

    if-ltz v8, :cond_9a

    if-ltz v7, :cond_9a

    add-int/lit8 v9, v3, 0x1

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v10, v5, 0x4

    or-int/2addr v4, v10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    if-ge v9, v0, :cond_8a

    add-int/lit8 v3, v9, 0x1

    and-int/lit8 v4, v5, 0xf

    shl-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v5, v8, 0x2

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    move v9, v3

    :cond_8a
    if-ge v9, v0, :cond_97

    add-int/lit8 v3, v9, 0x1

    and-int/lit8 v4, v8, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    goto :goto_98

    :cond_97
    move v3, v9

    :goto_98
    move v4, v6

    goto :goto_35

    :cond_9a
    :try_start_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a6
    return-object v1

    :cond_a7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_af
    .catchall {:try_start_9a .. :try_end_af} :catchall_af

    :catchall_af
    move-exception v0

    move-object v7, v0

    sget-boolean v0, Lcom/aide/common/j;->v5:Z

    if-eqz v0, :cond_ca

    const-wide v1, -0x1271d9a4f32aa38dL  # -5.321470736090864E219

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v7

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ca
    goto :goto_cc

    :goto_cb
    throw v7

    :goto_cc
    goto :goto_cb
.end method

.method public static j6([B)[C
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2833eb1c05bf30L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/j;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lcom/aide/common/j;->j6([BII)[C

    move-result-object p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/common/j;->v5:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public static j6([BII)[C
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/common/j;->Hw:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x11210193e725140L

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_85

    add-int v2, p1, p2

    const/4 v3, 0x0

    move v4, p1

    const/4 v5, 0x0

    :goto_2b
    if-ge v4, v2, :cond_84

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v6, v2, :cond_3f

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    move v12, v7

    move v7, v6

    move v6, v12

    goto :goto_40

    :cond_3f
    const/4 v7, 0x0

    :goto_40
    if-ge v6, v2, :cond_4c

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    move v12, v8

    move v8, v6

    move v6, v12

    goto :goto_4d

    :cond_4c
    const/4 v8, 0x0

    :goto_4d
    add-int/lit8 v9, v5, 0x1

    :try_start_4f
    sget-object v10, Lcom/aide/common/j;->DW:[C

    ushr-int/lit8 v11, v4, 0x2

    aget-char v11, v10, v11

    aput-char v11, v1, v5

    add-int/lit8 v5, v9, 0x1

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v11, v7, 0x4

    or-int/2addr v4, v11

    aget-char v4, v10, v4

    aput-char v4, v1, v9

    const/16 v4, 0x3d

    if-ge v5, v0, :cond_72

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    ushr-int/lit8 v9, v8, 0x6

    or-int/2addr v7, v9

    aget-char v7, v10, v7
    :try_end_71
    .catchall {:try_start_4f .. :try_end_71} :catchall_85

    goto :goto_74

    :cond_72
    const/16 v7, 0x3d

    :goto_74
    aput-char v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v0, :cond_7e

    and-int/lit8 v4, v8, 0x3f

    :try_start_7c
    aget-char v4, v10, v4
    :try_end_7e
    .catchall {:try_start_7c .. :try_end_7e} :catchall_85

    :cond_7e
    aput-char v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_2b

    :cond_84
    return-object v1

    :catchall_85
    move-exception v0

    sget-boolean v1, Lcom/aide/common/j;->v5:Z

    if-eqz v1, :cond_9f

    const-wide v2, 0x11210193e725140L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9f
    goto :goto_a1

    :goto_a0
    throw v0

    :goto_a1
    goto :goto_a0
.end method
