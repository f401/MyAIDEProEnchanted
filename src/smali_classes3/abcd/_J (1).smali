.class public abstract Labcd/_J;
.super Labcd/TJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/_J$a;
    }
.end annotation


# static fields
.field private static final EQ:[B

.field private static J0:[I

.field private static J8:[I

.field private static Ws:[I

.field private static final tp:[B

.field protected static final u7:[Labcd/_J$a;

.field private static final we:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Labcd/_J$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Mr:I

.field private final QX:Labcd/_J$b;

.field private U2:I

.field private XL:[B

.field private a8:Labcd/UD;

.field private aM:I

.field private j3:[Labcd/_J$a;

.field protected lg:Labcd/UE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Labcd/_J$a;

    sput-object v0, Labcd/_J;->u7:[Labcd/_J$a;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Labcd/_J;->tp:[B

    const/4 v0, 0x3

    invoke-static {v0}, Labcd/hE;->j6(I)[B

    move-result-object v0

    sput-object v0, Labcd/_J;->EQ:[B

    new-instance v0, Labcd/ZJ;

    invoke-direct {v0}, Labcd/ZJ;-><init>()V

    sput-object v0, Labcd/_J;->we:Ljava/util/Comparator;

    return-void

    nop

    :array_1e
    .array-data 1
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
    .end array-data
.end method

.method protected constructor <init>(Labcd/_J;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/TJ;-><init>(Labcd/TJ;)V

    iget-object p1, p1, Labcd/_J;->QX:Labcd/_J$b;

    iput-object p1, p0, Labcd/_J;->QX:Labcd/_J$b;

    return-void
.end method

.method protected constructor <init>(Labcd/bK;)V
    .registers 3

    invoke-direct {p0}, Labcd/TJ;-><init>()V

    new-instance v0, Labcd/_J$b;

    invoke-direct {v0, p1}, Labcd/_J$b;-><init>(Labcd/bK;)V

    iput-object v0, p0, Labcd/_J;->QX:Labcd/_J$b;

    return-void
.end method

.method static DW(Labcd/_J$a;)I
    .registers 2

    invoke-virtual {p0}, Labcd/_J$a;->FH()Labcd/rE;

    move-result-object p0

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    if-ne p0, v0, :cond_b

    const/16 p0, 0x2f

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private DW(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    new-instance v0, Labcd/UK;

    invoke-direct {v0, p1}, Labcd/UK;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private DW(Labcd/QC;)Z
    .registers 4

    invoke-virtual {p0}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    invoke-virtual {p1}, Labcd/QC;->Hw()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Labcd/_J;->j3()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Labcd/QC;->j6(I)V

    const/4 p1, 0x0

    return p1

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method private DW([BI)Z
    .registers 3

    invoke-static {p1, p2}, Labcd/tC;->j6([BI)Z

    move-result p1

    return p1
.end method

.method private static FH(Ljava/io/InputStream;)V
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    :goto_5
    return-void
.end method

.method private FH(Labcd/_J$a;)[B
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Labcd/_J$a;->v5()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object p1, Labcd/TJ;->j6:[B
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_88

    return-object p1

    :cond_9
    :try_start_9
    iget-object v1, p0, Labcd/_J;->QX:Labcd/_J$b;

    invoke-virtual {v1}, Labcd/_J$b;->j6()V

    invoke-virtual {p1}, Labcd/_J$a;->DW()J

    move-result-wide v1

    invoke-direct {p0}, Labcd/_J;->rN()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-direct {p0, v0, v1, v2}, Labcd/_J;->j6(Ljava/io/InputStream;J)[B

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_83

    :try_start_1c
    invoke-static {v0}, Labcd/_J;->FH(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_88

    return-object p1

    :cond_20
    const-wide/32 v3, 0x10000

    cmp-long v5, v1, v3

    if-gtz v5, :cond_55

    long-to-int p1, v1

    :try_start_28
    invoke-static {v0, p1}, Labcd/BK;->j6(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-direct {p0, v1, p1}, Labcd/_J;->DW([BI)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-direct {p0, v1, p1}, Labcd/_J;->j6([BI)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    :cond_46
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    int-to-long v3, p1

    invoke-direct {p0, v2, v3, v4}, Labcd/_J;->j6(Ljava/io/InputStream;J)[B

    move-result-object p1
    :try_end_51
    .catchall {:try_start_28 .. :try_end_51} :catchall_83

    :try_start_51
    invoke-static {v0}, Labcd/_J;->FH(Ljava/io/InputStream;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_88

    return-object p1

    :cond_55
    :try_start_55
    invoke-direct {p0, p1}, Labcd/_J;->Hw(Labcd/_J$a;)Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-direct {p0, v0, v1, v2}, Labcd/_J;->j6(Ljava/io/InputStream;J)[B

    move-result-object p1
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_83

    :try_start_5f
    invoke-static {v0}, Labcd/_J;->FH(Ljava/io/InputStream;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_88

    return-object p1

    :cond_63
    :try_start_63
    invoke-virtual {p1}, Labcd/_J$a;->v5()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/_J;->DW(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_83

    :try_start_6b
    invoke-direct {p0, p1}, Labcd/_J;->j6(Ljava/io/InputStream;)J

    move-result-wide v1
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_7e

    :try_start_6f
    invoke-static {p1}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Labcd/_J;->DW(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Labcd/_J;->j6(Ljava/io/InputStream;J)[B

    move-result-object p1
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_83

    :try_start_7a
    invoke-static {v0}, Labcd/_J;->FH(Ljava/io/InputStream;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_88

    return-object p1

    :catchall_7e
    move-exception v1

    :try_start_7f
    invoke-static {p1}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    throw v1
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_83

    :catchall_83
    move-exception p1

    :try_start_84
    invoke-static {v0}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    throw p1
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_88} :catch_88

    :catch_88
    move-exception p1

    sget-object p1, Labcd/TJ;->j6:[B

    return-object p1
.end method

.method private Hw(Labcd/_J$a;)Z
    .registers 3

    invoke-virtual {p1}, Labcd/_J$a;->v5()Ljava/io/InputStream;

    move-result-object p1

    :try_start_4
    invoke-static {p1}, Labcd/tC;->j6(Ljava/io/InputStream;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    invoke-static {p1}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    return v0

    :catchall_c
    move-exception v0

    invoke-static {p1}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    throw v0
.end method

.method static synthetic J8()[I
    .registers 3

    sget-object v0, Labcd/_J;->J8:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/UD$a;->values()[Labcd/UD$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/UD$a;->FH:Labcd/UD$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/UD$a;->DW:Labcd/UD$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/UD$a;->j6:Labcd/UD$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    sput-object v0, Labcd/_J;->J8:[I

    return-object v0
.end method

.method static synthetic QX()[I
    .registers 3

    sget-object v0, Labcd/_J;->Ws:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/_J$c;->values()[Labcd/_J$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/_J$c;->DW:Labcd/_J$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/_J$c;->Hw:Labcd/_J$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/_J$c;->j6:Labcd/_J$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    sget-object v1, Labcd/_J$c;->FH:Labcd/_J$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    sput-object v0, Labcd/_J;->Ws:[I

    return-object v0
.end method

.method static synthetic Ws()[I
    .registers 3

    sget-object v0, Labcd/_J;->J0:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/jE$a;->values()[Labcd/jE$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/jE$a;->j6:Labcd/jE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/jE$a;->FH:Labcd/jE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/jE$a;->DW:Labcd/jE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    sput-object v0, Labcd/_J;->J0:[I

    return-object v0
.end method

.method private er()V
    .registers 6

    iget-object v0, p0, Labcd/_J;->j3:[Labcd/_J$a;

    iget v1, p0, Labcd/_J;->U2:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Labcd/_J$a;->FH()Labcd/rE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/rE;->DW()I

    move-result v1

    iput v1, p0, Labcd/TJ;->v5:I

    iget v1, v0, Labcd/_J$a;->DW:I

    iget v2, p0, Labcd/TJ;->VH:I

    add-int v3, v2, v1

    invoke-virtual {p0, v3, v2}, Labcd/TJ;->j6(II)V

    iget-object v0, v0, Labcd/_J$a;->j6:[B

    iget-object v2, p0, Labcd/TJ;->Zo:[B

    iget v3, p0, Labcd/TJ;->VH:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/TJ;->VH:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/TJ;->gn:I

    return-void
.end method

.method private j6(Ljava/io/InputStream;)J
    .registers 9

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_3
    const-wide/32 v4, 0x100000

    invoke-virtual {p1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_f

    return-wide v2

    :cond_f
    add-long/2addr v2, v4

    goto :goto_3
.end method

.method private j6([BI)Ljava/nio/ByteBuffer;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_5
    invoke-direct {p0, v0}, Labcd/_J;->DW(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, p2}, Labcd/BK;->j6(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {v0}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    return-object p1

    :catchall_11
    move-exception p1

    invoke-static {v0}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    throw p1
.end method

.method private j6(Ljava/io/InputStream;J)[B
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Labcd/_J;->QX:Labcd/_J$b;

    iget-object v2, v1, Labcd/_J$b;->FH:Ljava/security/MessageDigest;

    iget-object v1, v1, Labcd/_J$b;->Hw:[B

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    sget-object v3, Labcd/_J;->EQ:[B

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update(B)V

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-nez v5, :cond_22

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update(B)V

    move-wide/from16 v7, p2

    goto :goto_3c

    :cond_22
    array-length v5, v1

    move-wide/from16 v7, p2

    move v6, v5

    :goto_26
    add-int/lit8 v6, v6, -0x1

    sget-object v9, Labcd/_J;->tp:[B

    const-wide/16 v10, 0xa

    rem-long v12, v7, v10

    long-to-int v13, v12

    aget-byte v9, v9, v13

    aput-byte v9, v1, v6

    div-long/2addr v7, v10

    cmp-long v9, v7, v3

    if-gtz v9, :cond_59

    sub-int/2addr v5, v6

    invoke-virtual {v2, v1, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    :goto_3c
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/security/MessageDigest;->update(B)V

    move-object v10, p1

    :goto_41
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_53

    cmp-long v1, v7, p2

    if-eqz v1, :cond_4e

    sget-object v1, Labcd/TJ;->j6:[B

    return-object v1

    :cond_4e
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    :cond_53
    invoke-virtual {v2, v1, v9, v3}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v3, v3

    add-long/2addr v7, v3

    goto :goto_41

    :cond_59
    move-object v10, p1

    goto :goto_26
.end method

.method private lg()Labcd/UD;
    .registers 3

    iget-object v0, p0, Labcd/_J;->a8:Labcd/UD;

    instance-of v1, v0, Labcd/_J$d;

    if-eqz v1, :cond_e

    check-cast v0, Labcd/_J$d;

    invoke-virtual {v0}, Labcd/_J$d;->DW()Labcd/UD;

    move-result-object v0

    iput-object v0, p0, Labcd/_J;->a8:Labcd/UD;

    :cond_e
    iget-object v0, p0, Labcd/_J;->a8:Labcd/UD;

    return-object v0
.end method

.method private rN()Z
    .registers 3

    invoke-static {}, Labcd/_J;->Ws()[I

    move-result-object v0

    invoke-virtual {p0}, Labcd/_J;->Mr()Labcd/bK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bK;->j6()Labcd/jE$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x0

    return v0

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public DW()Z
    .registers 3

    iget v0, p0, Labcd/_J;->U2:I

    iget v1, p0, Labcd/_J;->Mr:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public EQ()V
    .registers 2

    invoke-virtual {p0}, Labcd/_J;->FH()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    iput v0, p0, Labcd/_J;->U2:I

    invoke-virtual {p0}, Labcd/_J;->DW()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Labcd/_J;->er()V

    :cond_12
    return-void
.end method

.method public FH(I)V
    .registers 3

    iget v0, p0, Labcd/_J;->U2:I

    add-int/2addr v0, p1

    iput v0, p0, Labcd/_J;->U2:I

    invoke-virtual {p0}, Labcd/_J;->DW()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-direct {p0}, Labcd/_J;->er()V

    :cond_e
    return-void
.end method

.method public FH()Z
    .registers 2

    iget v0, p0, Labcd/_J;->U2:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method protected Hw(I)Z
    .registers 8

    invoke-direct {p0}, Labcd/_J;->lg()Labcd/UD;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget v2, p0, Labcd/TJ;->VH:I

    if-lez v2, :cond_d

    add-int/lit8 v2, v2, -0x1

    :cond_d
    iget-object v3, p0, Labcd/TJ;->Zo:[B

    invoke-static {v3, v2, p1}, Labcd/YJ;->j6([BII)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Labcd/_J;->J8()[I

    move-result-object v3

    sget-object v4, Labcd/rE;->j6:Labcd/rE;

    iget v5, p0, Labcd/TJ;->v5:I

    invoke-virtual {v4, v5}, Labcd/rE;->j6(I)Z

    move-result v4

    invoke-virtual {v0, v2, v4}, Labcd/UD;->j6(Ljava/lang/String;Z)Labcd/UD$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_31

    const/4 v3, 0x2

    if-eq v0, v3, :cond_30

    goto :goto_32

    :cond_30
    return v2

    :cond_31
    return v1

    :cond_32
    :goto_32
    iget-object v0, p0, Labcd/TJ;->DW:Labcd/TJ;

    instance-of v2, v0, Labcd/_J;

    if-eqz v2, :cond_3f

    check-cast v0, Labcd/_J;

    invoke-virtual {v0, p1}, Labcd/_J;->Hw(I)Z

    move-result p1

    return p1

    :cond_3f
    return v1
.end method

.method public Mr()Labcd/bK;
    .registers 2

    iget-object v0, p0, Labcd/_J;->QX:Labcd/_J$b;

    iget-object v0, v0, Labcd/_J$b;->j6:Labcd/bK;

    return-object v0
.end method

.method public U2()Z
    .registers 2

    iget v0, p0, Labcd/TJ;->gn:I

    invoke-virtual {p0, v0}, Labcd/_J;->Hw(I)Z

    move-result v0

    return v0
.end method

.method protected XL()Labcd/_J$a;
    .registers 3

    iget-object v0, p0, Labcd/_J;->j3:[Labcd/_J$a;

    iget v1, p0, Labcd/_J;->U2:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a8()Ljava/io/InputStream;
    .registers 4

    invoke-virtual {p0}, Labcd/_J;->XL()Labcd/_J$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/_J$a;->v5()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Labcd/_J;->Mr()Labcd/bK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bK;->j6()Labcd/jE$a;

    move-result-object v1

    sget-object v2, Labcd/jE$a;->j6:Labcd/jE$a;

    if-eq v1, v2, :cond_1a

    new-instance v1, Labcd/UK;

    invoke-direct {v1, v0}, Labcd/UK;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    :cond_1a
    return-object v0
.end method

.method public aM()J
    .registers 3

    invoke-virtual {p0}, Labcd/_J;->XL()Labcd/_J$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/_J$a;->j6()J

    move-result-wide v0

    return-wide v0
.end method

.method public gn()Z
    .registers 4

    iget v0, p0, Labcd/_J;->aM:I

    iget v1, p0, Labcd/_J;->U2:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    return v2

    :cond_8
    iget v0, p0, Labcd/TJ;->v5:I

    const v1, 0xf000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_14

    return v2

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public j3()J
    .registers 3

    invoke-virtual {p0}, Labcd/_J;->XL()Labcd/_J$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/_J$a;->DW()J

    move-result-wide v0

    return-wide v0
.end method

.method public j6(Labcd/QC;)Labcd/_J$c;
    .registers 13

    invoke-virtual {p1}, Labcd/QC;->tp()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p1, Labcd/_J$c;->j6:Labcd/_J$c;

    return-object p1

    :cond_9
    invoke-virtual {p1}, Labcd/QC;->J8()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p1, Labcd/_J$c;->DW:Labcd/_J$c;

    return-object p1

    :cond_12
    invoke-virtual {p1}, Labcd/QC;->J0()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Labcd/_J;->j3()J

    move-result-wide v0

    invoke-virtual {p1}, Labcd/QC;->FH()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    sget-object p1, Labcd/_J$c;->DW:Labcd/_J$c;

    return-object p1

    :cond_28
    invoke-virtual {p0}, Labcd/TJ;->VH()I

    move-result v0

    invoke-virtual {p1}, Labcd/QC;->Zo()I

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_57

    sget-object v1, Labcd/rE;->DW:Labcd/rE;

    invoke-virtual {p1}, Labcd/QC;->Zo()I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/rE;->j6(I)Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, p0, Labcd/_J;->QX:Labcd/_J$b;

    iget-object v1, v1, Labcd/_J$b;->j6:Labcd/bK;

    invoke-virtual {v1}, Labcd/bK;->DW()Z

    move-result v1

    if-nez v1, :cond_52

    sget-object v1, Labcd/rE;->Hw:Labcd/rE;

    invoke-virtual {v1}, Labcd/rE;->DW()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    :cond_52
    if-eqz v0, :cond_57

    sget-object p1, Labcd/_J$c;->DW:Labcd/_J$c;

    return-object p1

    :cond_57
    invoke-virtual {p1}, Labcd/QC;->DW()J

    move-result-wide v0

    invoke-virtual {p0}, Labcd/_J;->aM()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    rem-long v6, v0, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_6c

    rem-long v4, v2, v4

    sub-long/2addr v2, v4

    :cond_6c
    cmp-long v4, v2, v0

    if-eqz v4, :cond_73

    sget-object p1, Labcd/_J$c;->Hw:Labcd/_J$c;

    return-object p1

    :cond_73
    invoke-virtual {p1}, Labcd/QC;->J0()Z

    move-result p1

    if-nez p1, :cond_7c

    sget-object p1, Labcd/_J$c;->j6:Labcd/_J$c;

    return-object p1

    :cond_7c
    sget-object p1, Labcd/_J$c;->FH:Labcd/_J$c;

    return-object p1
.end method

.method public j6(Labcd/RC;)Labcd/rE;
    .registers 4

    invoke-virtual {p0}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    if-nez p1, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0}, Labcd/_J;->Mr()Labcd/bK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bK;->DW()Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    invoke-virtual {p1}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object p1

    sget-object v1, Labcd/rE;->FH:Labcd/rE;

    if-ne v1, v0, :cond_1f

    sget-object v1, Labcd/rE;->Hw:Labcd/rE;

    if-ne v1, p1, :cond_1f

    return-object p1

    :cond_1f
    sget-object v1, Labcd/rE;->Hw:Labcd/rE;

    if-ne v1, v0, :cond_28

    sget-object v1, Labcd/rE;->FH:Labcd/rE;

    if-ne v1, p1, :cond_28

    return-object p1

    :cond_28
    return-object v0
.end method

.method public j6(I)V
    .registers 3

    iget v0, p0, Labcd/_J;->U2:I

    sub-int/2addr v0, p1

    iput v0, p0, Labcd/_J;->U2:I

    invoke-direct {p0}, Labcd/_J;->er()V

    return-void
.end method

.method protected j6(Labcd/UE;)V
    .registers 4

    iput-object p1, p0, Labcd/_J;->lg:Labcd/UE;

    iget-object v0, p0, Labcd/_J;->a8:Labcd/UD;

    instance-of v1, v0, Labcd/_J$d;

    if-eqz v1, :cond_d

    check-cast v0, Labcd/_J$d;

    iget-object v0, v0, Labcd/_J$d;->DW:Labcd/_J$a;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    new-instance v1, Labcd/_J$e;

    invoke-direct {v1, v0, p1}, Labcd/_J$e;-><init>(Labcd/_J$a;Labcd/UE;)V

    iput-object v1, p0, Labcd/_J;->a8:Labcd/UD;

    return-void
.end method

.method protected j6([Labcd/_J$a;)V
    .registers 8

    iput-object p1, p0, Labcd/_J;->j3:[Labcd/_J$a;

    iget-object p1, p0, Labcd/_J;->QX:Labcd/_J$b;

    iget-object p1, p1, Labcd/_J$b;->DW:Ljava/nio/charset/CharsetEncoder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    iget-object v3, p0, Labcd/_J;->j3:[Labcd/_J$a;

    array-length v4, v3

    if-lt v1, v4, :cond_24

    iput v2, p0, Labcd/_J;->Mr:I

    sget-object p1, Labcd/_J;->we:Ljava/util/Comparator;

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 p1, -0x1

    iput p1, p0, Labcd/_J;->aM:I

    iput v0, p0, Labcd/_J;->U2:I

    invoke-virtual {p0}, Labcd/_J;->DW()Z

    move-result p1

    if-nez p1, :cond_23

    invoke-direct {p0}, Labcd/_J;->er()V

    :cond_23
    return-void

    :cond_24
    aget-object v3, v3, v1

    if-nez v3, :cond_29

    goto :goto_61

    :cond_29
    invoke-virtual {v3}, Labcd/_J$a;->Hw()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    const-string v5, ".."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_61

    :cond_3e
    const-string v5, ".git"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    goto :goto_61

    :cond_47
    const-string v5, ".gitignore"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    new-instance v4, Labcd/_J$d;

    invoke-direct {v4, v3}, Labcd/_J$d;-><init>(Labcd/_J$a;)V

    iput-object v4, p0, Labcd/_J;->a8:Labcd/UD;

    :cond_56
    if-eq v1, v2, :cond_5c

    iget-object v4, p0, Labcd/_J;->j3:[Labcd/_J$a;

    aput-object v3, v4, v2

    :cond_5c
    invoke-virtual {v3, p1}, Labcd/_J$a;->j6(Ljava/nio/charset/CharsetEncoder;)V

    add-int/lit8 v2, v2, 0x1

    :cond_61
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public j6(Labcd/QC;Z)Z
    .registers 8

    invoke-virtual {p0, p1}, Labcd/_J;->j6(Labcd/QC;)Labcd/_J$c;

    move-result-object v0

    invoke-static {}, Labcd/_J;->QX()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_41

    const/4 v4, 0x2

    if-eq v1, v4, :cond_40

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3b

    const/4 v4, 0x4

    if-ne v1, v4, :cond_23

    if-eqz p2, :cond_22

    invoke-direct {p0, p1}, Labcd/_J;->DW(Labcd/QC;)Z

    move-result p1

    return p1

    :cond_22
    return v3

    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->unexpectedCompareResult:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    invoke-direct {p0, p1}, Labcd/_J;->DW(Labcd/QC;)Z

    move-result p1

    return p1

    :cond_40
    return v3

    :cond_41
    return v2
.end method

.method protected j6(Labcd/_J$a;)[B
    .registers 3

    iget-object v0, p0, Labcd/_J;->lg:Labcd/UE;

    if-nez v0, :cond_7

    sget-object p1, Labcd/TJ;->j6:[B

    return-object p1

    :cond_7
    :try_start_7
    invoke-virtual {v0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v0
    :try_end_b
    .catch Labcd/iD; {:try_start_7 .. :try_end_b} :catch_10

    invoke-virtual {p0, v0, p1}, Labcd/_J;->j6(Ljava/io/File;Labcd/_J$a;)[B

    move-result-object p1

    return-object p1

    :catch_10
    move-exception p1

    sget-object p1, Labcd/TJ;->j6:[B

    return-object p1
.end method

.method protected j6(Ljava/io/File;Labcd/_J$a;)[B
    .registers 4

    :try_start_0
    invoke-virtual {p2}, Labcd/_J$a;->Hw()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Labcd/YH;->j6(Ljava/io/File;Ljava/lang/String;)Labcd/UE;

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_31

    if-nez p1, :cond_d

    sget-object p1, Labcd/TJ;->j6:[B

    return-object p1

    :cond_d
    :try_start_d
    const-string p2, "HEAD"

    invoke-virtual {p1, p2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object p2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_26
    .catchall {:try_start_d .. :try_end_13} :catchall_24

    invoke-virtual {p1}, Labcd/UE;->j6()V

    if-nez p2, :cond_1b

    sget-object p1, Labcd/TJ;->j6:[B

    return-object p1

    :cond_1b
    const/16 p1, 0x14

    new-array p1, p1, [B

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Labcd/YD;->DW([BI)V

    return-object p1

    :catchall_24
    move-exception p2

    goto :goto_2d

    :catch_26
    move-exception p2

    :try_start_27
    sget-object p2, Labcd/TJ;->j6:[B
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_24

    invoke-virtual {p1}, Labcd/UE;->j6()V

    return-object p2

    :goto_2d
    invoke-virtual {p1}, Labcd/UE;->j6()V

    throw p2

    :catch_31
    move-exception p1

    sget-object p1, Labcd/TJ;->j6:[B

    return-object p1
.end method

.method public tp()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public u7()[B
    .registers 4

    iget v0, p0, Labcd/_J;->aM:I

    iget v1, p0, Labcd/_J;->U2:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Labcd/_J;->XL:[B

    return-object v0

    :cond_9
    iget-object v0, p0, Labcd/_J;->QX:Labcd/_J$b;

    iget-object v1, v0, Labcd/_J$b;->v5:Labcd/YJ;

    if-eqz v1, :cond_2e

    iget v0, v0, Labcd/_J$b;->Zo:I

    const-class v2, Labcd/RC;

    invoke-virtual {v1, v0, v2}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    check-cast v0, Labcd/RC;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0, v1}, Labcd/_J;->j6(Labcd/QC;)Labcd/_J$c;

    move-result-object v1

    sget-object v2, Labcd/_J$c;->j6:Labcd/_J$c;

    if-ne v1, v2, :cond_2e

    invoke-virtual {v0}, Labcd/RC;->u7()[B

    move-result-object v0

    return-object v0

    :cond_2e
    iget v0, p0, Labcd/TJ;->v5:I

    const v1, 0xf000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-eq v0, v1, :cond_58

    const v1, 0xa000

    if-eq v0, v1, :cond_55

    const v1, 0xe000

    if-eq v0, v1, :cond_46

    sget-object v0, Labcd/TJ;->j6:[B

    return-object v0

    :cond_46
    iget v0, p0, Labcd/_J;->U2:I

    iput v0, p0, Labcd/_J;->aM:I

    iget-object v1, p0, Labcd/_J;->j3:[Labcd/_J$a;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Labcd/_J;->j6(Labcd/_J$a;)[B

    move-result-object v0

    iput-object v0, p0, Labcd/_J;->XL:[B

    return-object v0

    :cond_55
    sget-object v0, Labcd/TJ;->j6:[B

    return-object v0

    :cond_58
    iget v0, p0, Labcd/_J;->U2:I

    iput v0, p0, Labcd/_J;->aM:I

    iget-object v1, p0, Labcd/_J;->j3:[Labcd/_J$a;

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Labcd/_J;->FH(Labcd/_J$a;)[B

    move-result-object v0

    iput-object v0, p0, Labcd/_J;->XL:[B

    return-object v0
.end method
