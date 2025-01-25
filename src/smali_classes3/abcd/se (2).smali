.class public Labcd/se;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static final DW:[B
    .annotation runtime Labcd/ru;
        field = 0x432703b4ccba2498L
    .end annotation
.end field

.field private static final FH:[B
    .annotation runtime Labcd/ru;
        field = -0x151eb74521d0c920L
    .end annotation
.end field

.field private static final Hw:[B
    .annotation runtime Labcd/ru;
        field = -0x312cc2566d0bb9ccL
    .end annotation
.end field

.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static final j6:[B
    .annotation runtime Labcd/ru;
        field = -0x2e593272df5b4500L
    .end annotation
.end field

.field static final v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x535dd92aace3611L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xadb003ffbc73113L

    :try_start_6
    const-class v3, Labcd/se;

    const-wide v4, -0x3baf252d8b494251L  # -1.2436627950117823E21

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/se;->Zo:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/4 v3, 0x1

    sput-boolean v3, Labcd/se;->v5:Z

    const/16 v3, 0x40

    new-array v4, v3, [B

    fill-array-data v4, :array_44

    sput-object v4, Labcd/se;->j6:[B

    new-array v3, v3, [B

    fill-array-data v3, :array_68

    sput-object v3, Labcd/se;->DW:[B

    const/16 v3, 0x80

    new-array v4, v3, [B

    fill-array-data v4, :array_8c

    sput-object v4, Labcd/se;->FH:[B

    new-array v3, v3, [B

    fill-array-data v3, :array_d0

    sput-object v3, Labcd/se;->Hw:[B
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v3

    sget-boolean v4, Labcd/se;->VH:Z

    if-eqz v4, :cond_43

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    throw v3

    :array_44
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_68
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_8c
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_d0
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x29003a738ac3de98L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1829485f8d91e050L  # -1.6194733693347654E192

    :try_start_6
    sget-boolean v3, Labcd/se;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/se;->VH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private static j6([BI[BI[B)I
    .registers 15
    .annotation runtime Labcd/su;
        method = -0xde9e78144265bdbL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/se;->Zo:Z

    if-eqz v0, :cond_1a

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x18cf18da5d0f05a0L  # 3.489734398608662E-189

    const/4 v3, 0x0

    move-object v4, p0

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_99

    :cond_1a
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/16 v1, 0x3d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3b

    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return v2

    :cond_3b
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    const/4 v4, 0x2

    if-ne v3, v1, :cond_67

    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    aget-byte p0, p4, p0

    aget-byte p1, p4, v0

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 p1, p1, 0x12

    shl-int/lit8 p4, v1, 0x18

    ushr-int/lit8 p4, p4, 0x6

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0xc

    or-int/2addr p0, p4

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    add-int/2addr p3, v2

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return v4

    :cond_67
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    aget-byte p0, p4, p0

    aget-byte p1, p4, v0

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 p1, p1, 0x12

    shl-int/lit8 v0, v1, 0x18

    ushr-int/lit8 v0, v0, 0x6

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    aget-byte p1, p4, v3

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 p4, p0, 0x8

    int-to-byte p4, p4

    aput-byte p4, p2, p1

    add-int/2addr p3, v4

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    const/4 p0, 0x3

    return p0

    :catchall_99
    move-exception v0

    sget-boolean v1, Labcd/se;->VH:Z

    if-eqz v1, :cond_b5

    const-wide v2, 0x18cf18da5d0f05a0L  # 3.489734398608662E-189

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v7, p2

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b5
    throw v0
.end method

.method public static j6(Ljava/lang/String;)[B
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x15fb8f44377a50bL

    :try_start_6
    sget-boolean v3, Labcd/se;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Labcd/se;->j6([BII)[B

    move-result-object p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-object p0

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/se;->VH:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method public static j6([BII)[B
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/se;->Zo:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x48b6cbfefe2b000L

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    sget-object v0, Labcd/se;->FH:[B

    invoke-static {p0, p1, p2, v0}, Labcd/se;->j6([BII[B)[B

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-object p0

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/se;->VH:Z

    if-eqz v1, :cond_39

    const-wide v2, 0x48b6cbfefe2b000L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method

.method public static j6([BII[B)[B
    .registers 20

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    :try_start_6
    sget-boolean v0, Labcd/se;->Zo:Z

    if-eqz v0, :cond_21

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xc5eb3bbf804e7f5L  # -9.675649814410834E248

    const/4 v3, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    mul-int/lit8 v0, v9, 0x3

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    new-array v3, v1, [B
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_fe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2e
    const/16 v11, 0x3d

    const/4 v12, 0x1

    if-ge v5, v9, :cond_d1

    add-int v13, v5, v8

    aget-byte v14, p0, v13

    and-int/lit8 v14, v14, 0x7f

    int-to-byte v14, v14

    aget-byte v15, v10, v14

    const/4 v4, -0x5

    if-lt v15, v4, :cond_ab

    const/4 v4, -0x1

    if-lt v15, v4, :cond_a8

    if-ne v14, v11, :cond_99

    sub-int v4, v9, v5

    add-int/lit8 v13, v9, -0x1

    add-int/2addr v13, v8

    aget-byte v13, p0, v13

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v13, v13

    if-eqz v6, :cond_82

    if-eq v6, v12, :cond_82

    const/4 v14, 0x3

    if-ne v6, v14, :cond_57

    if-gt v4, v2, :cond_5c

    :cond_57
    if-ne v6, v1, :cond_73

    if-gt v4, v12, :cond_5c

    goto :goto_73

    :cond_5c
    :try_start_5c
    new-instance v0, Labcd/te;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "padding byte \'=\' falsely signals end of encoded value at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/te;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    :goto_73
    if-eq v13, v11, :cond_d1

    const/16 v1, 0xa

    if-ne v13, v1, :cond_7a

    goto :goto_d1

    :cond_7a
    new-instance v0, Labcd/te;

    const-string v1, "encoded value has invalid trailing byte"

    invoke-direct {v0, v1}, Labcd/te;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    new-instance v0, Labcd/te;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid padding byte \'=\' at byte offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/te;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_99
    .catchall {:try_start_5c .. :try_end_99} :catchall_fe

    :cond_99
    add-int/lit8 v4, v6, 0x1

    aput-byte v14, v3, v6

    if-ne v4, v1, :cond_a7

    const/4 v6, 0x0

    :try_start_a0
    invoke-static {v3, v6, v0, v7, v10}, Labcd/se;->j6([BI[BI[B)I

    move-result v4

    add-int/2addr v7, v4

    const/4 v6, 0x0

    goto :goto_a8

    :cond_a7
    move v6, v4

    :cond_a8
    :goto_a8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_ab
    new-instance v0, Labcd/te;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Base64 input character at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(decimal)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/te;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d1
    .catchall {:try_start_a0 .. :try_end_d1} :catchall_fe

    :cond_d1
    :goto_d1
    if-eqz v6, :cond_f7

    if-eq v6, v12, :cond_de

    aput-byte v11, v3, v6

    const/4 v1, 0x0

    :try_start_d8
    invoke-static {v3, v1, v0, v7, v10}, Labcd/se;->j6([BI[BI[B)I

    move-result v2

    add-int/2addr v7, v2

    goto :goto_f7

    :cond_de
    new-instance v0, Labcd/te;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "single trailing character at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/te;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f7
    :goto_f7
    new-array v1, v7, [B

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_fd
    .catchall {:try_start_d8 .. :try_end_fd} :catchall_fe

    return-object v1

    :catchall_fe
    move-exception v0

    sget-boolean v1, Labcd/se;->VH:Z

    if-eqz v1, :cond_11b

    const-wide v2, -0xc5eb3bbf804e7f5L  # -9.675649814410834E248

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v5, p0

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11b
    goto :goto_11d

    :goto_11c
    throw v0

    :goto_11d
    goto :goto_11c
.end method
