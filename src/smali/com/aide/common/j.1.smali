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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x21e2b3941228f5e7L
    .end annotation

    const-wide v8, 0xb5a108d01063141L    # 5.55489164146523E-254

    const/4 v7, 0x0

    const/16 v6, 0x40

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Lcom/aide/common/j;

    const-wide v2, 0x32b0e4ebababd4e3L    # 1.604202204715261E-64

    const-wide v4, 0x32b0e4ebababd4e3L    # 1.604202204715261E-64

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/common/j;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v2, 0xb5a108d01063141L    # 5.55489164146523E-254

    const/4 v0, 0x0

    invoke-static {v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aide/common/j;->j6:Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lcom/aide/common/j;->DW:[C

    const/16 v2, 0x41

    move v0, v1

    :goto_0
    const/16 v3, 0x5a

    if-gt v2, v3, :cond_1

    sget-object v3, Lcom/aide/common/j;->DW:[C

    aput-char v2, v3, v0

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v2, v3, :cond_2

    sget-object v3, Lcom/aide/common/j;->DW:[C

    aput-char v2, v3, v0

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x30

    :goto_2
    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    sget-object v3, Lcom/aide/common/j;->DW:[C

    aput-char v2, v3, v0

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/aide/common/j;->DW:[C

    const/16 v3, 0x2b

    aput-char v3, v2, v0

    sget-object v2, Lcom/aide/common/j;->DW:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x2f

    aput-char v3, v2, v0

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/aide/common/j;->FH:[B

    move v0, v1

    :goto_3
    sget-object v2, Lcom/aide/common/j;->FH:[B

    array-length v2, v2

    if-ge v0, v2, :cond_4

    sget-object v2, Lcom/aide/common/j;->FH:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v1, v6, :cond_6

    sget-object v0, Lcom/aide/common/j;->FH:[B

    sget-object v2, Lcom/aide/common/j;->DW:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/j;->v5:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v8, v9, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    return-void
.end method

.method private constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x6bf8266a8c2a540L
    .end annotation

    const-wide v4, 0x316ac74cfd305261L    # 1.2124883491284404E-70

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/j;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x316ac74cfd305261L    # 1.2124883491284404E-70

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/j;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Ljava/lang/String;)[B
    .registers 7

    const-wide v4, 0x20066b67b348011L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/j;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20066b67b348011L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/j;->j6([C)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/j;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6([C)[B
    .registers 7

    const-wide v4, -0x80fa56473f0762bL    # -5.39980933157093E269

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/j;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x80fa56473f0762bL    # -5.39980933157093E269

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/aide/common/j;->j6([CII)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/j;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6([CII)[B
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/common/j;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x1271d9a4f32aa38dL    # -5.321470736090864E219

    const/4 v2, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_6

    :goto_0
    if-lez p2, :cond_1

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, p2, 0x3

    :try_start_1
    div-int/lit8 v6, v0, 0x4

    new-array v7, v6, [B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int v8, p1, p2

    const/4 v0, 0x0

    move v5, v0

    move v2, p1

    :goto_1
    if-ge v2, v8, :cond_7

    add-int/lit8 v0, v2, 0x1

    aget-char v9, p0, v2

    add-int/lit8 v4, v0, 0x1

    aget-char v10, p0, v0

    const/16 v0, 0x41

    if-ge v4, v8, :cond_2

    add-int/lit8 v1, v4, 0x1

    aget-char v2, p0, v4

    move v3, v2

    :goto_2
    if-ge v1, v8, :cond_a

    aget-char v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_3
    const/16 v1, 0x7f

    if-gt v9, v1, :cond_5

    const/16 v1, 0x7f

    if-gt v10, v1, :cond_5

    const/16 v1, 0x7f

    if-gt v3, v1, :cond_5

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_5

    :try_start_2
    sget-object v1, Lcom/aide/common/j;->FH:[B

    aget-byte v1, v1, v9

    sget-object v4, Lcom/aide/common/j;->FH:[B

    aget-byte v4, v4, v10

    sget-object v9, Lcom/aide/common/j;->FH:[B

    aget-byte v3, v9, v3

    sget-object v9, Lcom/aide/common/j;->FH:[B

    aget-byte v9, v9, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-ltz v1, :cond_3

    if-ltz v4, :cond_3

    if-ltz v3, :cond_3

    if-ltz v9, :cond_3

    add-int/lit8 v0, v5, 0x1

    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v10, v4, 0x4

    or-int/2addr v1, v10

    int-to-byte v1, v1

    aput-byte v1, v7, v5

    if-ge v0, v6, :cond_9

    add-int/lit8 v1, v0, 0x1

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v5, v3, 0x2

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v7, v0

    :goto_4
    if-ge v1, v6, :cond_8

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v7, v1

    :goto_5
    move v5, v0

    goto :goto_1

    :cond_2
    const/16 v2, 0x41

    move v3, v2

    move v1, v4

    goto :goto_2

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/j;->v5:Z

    if-eqz v0, :cond_4

    const-wide v2, -0x1271d9a4f32aa38dL    # -5.321470736090864E219

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    return-object v7

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    move v1, v0

    goto :goto_4

    :cond_a
    move v2, v1

    goto/16 :goto_3
.end method

.method public static j6([B)[C
    .registers 7

    const-wide v4, -0x2833eb1c05bf30L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/j;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2833eb1c05bf30L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/aide/common/j;->j6([BII)[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/j;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6([BII)[C
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/common/j;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x11210193e725140L

    const/4 v2, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v5, v0, 0x3

    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v6, v0, [C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int v7, p1, p2

    const/4 v0, 0x0

    move v3, v0

    move v2, p1

    :goto_0
    if-ge v2, v7, :cond_5

    add-int/lit8 v1, v2, 0x1

    aget-byte v0, p0, v2

    and-int/lit16 v8, v0, 0xff

    if-ge v1, v7, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    :goto_1
    if-ge v2, v7, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    :goto_2
    add-int/lit8 v2, v3, 0x1

    :try_start_1
    sget-object v9, Lcom/aide/common/j;->DW:[C

    ushr-int/lit8 v10, v8, 0x2

    aget-char v9, v9, v10

    aput-char v9, v6, v3

    add-int/lit8 v9, v2, 0x1

    sget-object v3, Lcom/aide/common/j;->DW:[C

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    ushr-int/lit8 v10, v4, 0x4

    or-int/2addr v8, v10

    aget-char v3, v3, v8

    aput-char v3, v6, v2

    const/16 v3, 0x3d

    if-ge v9, v5, :cond_3

    sget-object v2, Lcom/aide/common/j;->DW:[C

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v8, v0, 0x6

    or-int/2addr v4, v8

    aget-char v2, v2, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    aput-char v2, v6, v9

    add-int/lit8 v2, v9, 0x1

    if-ge v2, v5, :cond_6

    :try_start_2
    sget-object v3, Lcom/aide/common/j;->DW:[C

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v3, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    aput-char v0, v6, v2

    add-int/lit8 v0, v2, 0x1

    move v3, v0

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v4, v0

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v1, v2

    goto :goto_2

    :cond_3
    const/16 v2, 0x3d

    goto :goto_3

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/j;->v5:Z

    if-eqz v0, :cond_4

    const-wide v2, 0x11210193e725140L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    return-object v6

    :cond_6
    move v0, v3

    goto :goto_4
.end method
