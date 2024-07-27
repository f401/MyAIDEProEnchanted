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
            "Ljava/util/Comparator",
            "<",
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

    fill-array-data v0, :array_0

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

    :array_0
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
    .registers 3

    invoke-direct {p0, p1}, Labcd/TJ;-><init>(Labcd/TJ;)V

    iget-object v0, p1, Labcd/_J;->QX:Labcd/_J$b;

    iput-object v0, p0, Labcd/_J;->QX:Labcd/_J$b;

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
    .registers 3

    invoke-virtual {p0}, Labcd/_J$a;->FH()Labcd/rE;

    move-result-object v0

    sget-object v1, Labcd/rE;->j6:Labcd/rE;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/_J;->j3()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Labcd/QC;->j6(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private DW([BI)Z
    .registers 4

    invoke-static {p1, p2}, Labcd/tC;->j6([BI)Z

    move-result v0

    return v0
.end method

.method private static FH(Ljava/io/InputStream;)V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private FH(Labcd/_J$a;)[B
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Labcd/_J$a;->v5()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Labcd/TJ;->j6:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/_J;->QX:Labcd/_J$b;

    invoke-virtual {v0}, Labcd/_J$b;->j6()V

    invoke-virtual {p1}, Labcd/_J$a;->DW()J

    move-result-wide v0

    invoke-direct {p0}, Labcd/_J;->rN()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2, v0, v1}, Labcd/_J;->j6(Ljava/io/InputStream;J)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-static {v2}, Labcd/_J;->FH(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Labcd/TJ;->j6:[B

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0x10000

    cmp-long v3, v0, v4

    if-gtz v3, :cond_3

    long-to-int v0, v0

    :try_start_3
    invoke-static {v2, v0}, Labcd/BK;->j6(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p0, v1, v0}, Labcd/_J;->DW([BI)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v1, v0}, Labcd/_J;->j6([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    :cond_2
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    int-to-long v0, v0

    invoke-direct {p0, v3, v0, v1}, Labcd/_J;->j6(Ljava/io/InputStream;J)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    :try_start_4
    invoke-static {v2}, Labcd/_J;->FH(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-direct {p0, p1}, Labcd/_J;->Hw(Labcd/_J$a;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2, v0, v1}, Labcd/_J;->j6(Ljava/io/InputStream;J)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    :try_start_6
    invoke-static {v2}, Labcd/_J;->FH(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :cond_4
    :try_start_7
    invoke-virtual {p1}, Labcd/_J$a;->v5()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/_J;->DW(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    :try_start_8
    invoke-direct {p0, v0}, Labcd/_J;->j6(Ljava/io/InputStream;)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-wide v4

    :try_start_9
    invoke-static {v0}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Labcd/_J;->DW(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0, v4, v5}, Labcd/_J;->j6(Ljava/io/InputStream;J)[B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v0

    :try_start_a
    invoke-static {v2}, Labcd/_J;->FH(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_b
    invoke-static {v0}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_c
    invoke-static {v2}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
.end method

.method private Hw(Labcd/_J$a;)Z
    .registers 4

    invoke-virtual {p1}, Labcd/_J$a;->v5()Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Labcd/tC;->j6(Ljava/io/InputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-static {v0}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    throw v1
.end method

.method static synthetic J8()[I
    .registers 3

    sget-object v0, Labcd/_J;->J8:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/UD$a;->values()[Labcd/UD$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/UD$a;->FH:Labcd/UD$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Labcd/UD$a;->DW:Labcd/UD$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Labcd/UD$a;->j6:Labcd/UD$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Labcd/_J;->J8:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic QX()[I
    .registers 3

    sget-object v0, Labcd/_J;->Ws:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/_J$c;->values()[Labcd/_J$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/_J$c;->DW:Labcd/_J$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Labcd/_J$c;->Hw:Labcd/_J$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Labcd/_J$c;->j6:Labcd/_J$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Labcd/_J$c;->FH:Labcd/_J$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Labcd/_J;->Ws:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic Ws()[I
    .registers 3

    sget-object v0, Labcd/_J;->J0:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/jE$a;->values()[Labcd/jE$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/jE$a;->j6:Labcd/jE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Labcd/jE$a;->FH:Labcd/jE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Labcd/jE$a;->DW:Labcd/jE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Labcd/_J;->J0:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
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

    const/4 v2, 0x0

    iget-object v3, p0, Labcd/TJ;->Zo:[B

    iget v4, p0, Labcd/TJ;->VH:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/TJ;->VH:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/TJ;->gn:I

    return-void
.end method

.method private j6(Ljava/io/InputStream;)J
    .registers 9

    const-wide/16 v2, 0x0

    move-wide v0, v2

    :goto_0
    const-wide/32 v4, 0x100000

    invoke-virtual {p1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gtz v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v4

    goto :goto_0
.end method

.method private j6([BI)Ljava/nio/ByteBuffer;
    .registers 5

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-direct {p0, v1}, Labcd/_J;->DW(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p2}, Labcd/BK;->j6(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v1}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Labcd/_J;->FH(Ljava/io/InputStream;)V

    throw v0
.end method

.method private j6(Ljava/io/InputStream;J)[B
    .registers 14

    iget-object v0, p0, Labcd/_J;->QX:Labcd/_J$b;

    iget-object v4, v0, Labcd/_J$b;->FH:Ljava/security/MessageDigest;

    iget-object v5, v0, Labcd/_J$b;->Hw:[B

    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    sget-object v0, Labcd/_J;->EQ:[B

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update(B)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update(B)V

    move-wide v0, p2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update(B)V

    :goto_1
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_3

    cmp-long v0, v0, p2

    if-eqz v0, :cond_2

    sget-object v0, Labcd/TJ;->j6:[B

    :goto_2
    return-object v0

    :cond_0
    array-length v3, v5

    move-wide v0, p2

    move v2, v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    sget-object v6, Labcd/_J;->tp:[B

    const-wide/16 v8, 0xa

    rem-long v8, v0, v8

    long-to-int v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v5, v2

    const-wide/16 v6, 0xa

    div-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_1

    sub-int/2addr v3, v2

    invoke-virtual {v4, v5, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v4, v5, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method private lg()Labcd/UD;
    .registers 3

    iget-object v0, p0, Labcd/_J;->a8:Labcd/UD;

    instance-of v1, v0, Labcd/_J$d;

    if-eqz v1, :cond_0

    check-cast v0, Labcd/_J$d;

    invoke-virtual {v0}, Labcd/_J$d;->DW()Labcd/UD;

    move-result-object v0

    iput-object v0, p0, Labcd/_J;->a8:Labcd/UD;

    :cond_0
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

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public DW()Z
    .registers 3

    iget v0, p0, Labcd/_J;->U2:I

    iget v1, p0, Labcd/_J;->Mr:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public EQ()V
    .registers 2

    invoke-virtual {p0}, Labcd/_J;->FH()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Labcd/_J;->U2:I

    invoke-virtual {p0}, Labcd/_J;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/_J;->er()V

    :cond_0
    return-void
.end method

.method public FH(I)V
    .registers 3

    iget v0, p0, Labcd/_J;->U2:I

    add-int/2addr v0, p1

    iput v0, p0, Labcd/_J;->U2:I

    invoke-virtual {p0}, Labcd/_J;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/_J;->er()V

    :cond_0
    return-void
.end method

.method public FH()Z
    .registers 2

    iget v0, p0, Labcd/_J;->U2:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected Hw(I)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Labcd/_J;->lg()Labcd/UD;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v0, p0, Labcd/TJ;->VH:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v4, p0, Labcd/TJ;->Zo:[B

    invoke-static {v4, v0, p1}, Labcd/YJ;->j6([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Labcd/_J;->J8()[I

    move-result-object v4

    sget-object v5, Labcd/rE;->j6:Labcd/rE;

    iget v6, p0, Labcd/TJ;->v5:I

    invoke-virtual {v5, v6}, Labcd/rE;->j6(I)Z

    move-result v5

    invoke-virtual {v3, v0, v5}, Labcd/UD;->j6(Ljava/lang/String;Z)Labcd/UD$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Labcd/TJ;->DW:Labcd/TJ;

    instance-of v1, v0, Labcd/_J;

    if-eqz v1, :cond_4

    check-cast v0, Labcd/_J;

    invoke-virtual {v0, p1}, Labcd/_J;->Hw(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
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

    move-result-object v1

    invoke-virtual {p0}, Labcd/_J;->Mr()Labcd/bK;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bK;->j6()Labcd/jE$a;

    move-result-object v0

    sget-object v2, Labcd/jE$a;->j6:Labcd/jE$a;

    if-eq v0, v2, :cond_0

    new-instance v0, Labcd/UK;

    invoke-direct {v0, v1}, Labcd/UK;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
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

    const/4 v0, 0x1

    iget v1, p0, Labcd/_J;->aM:I

    iget v2, p0, Labcd/_J;->U2:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Labcd/TJ;->v5:I

    const v2, 0xf000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
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
    .registers 12

    const-wide/16 v8, 0x3e8

    invoke-virtual {p1}, Labcd/QC;->tp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Labcd/_J$c;->j6:Labcd/_J$c;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Labcd/QC;->J8()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Labcd/_J$c;->DW:Labcd/_J$c;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Labcd/QC;->J0()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Labcd/_J;->j3()J

    move-result-wide v0

    invoke-virtual {p1}, Labcd/QC;->FH()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Labcd/_J$c;->DW:Labcd/_J$c;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Labcd/TJ;->VH()I

    move-result v0

    invoke-virtual {p1}, Labcd/QC;->Zo()I

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    sget-object v1, Labcd/rE;->DW:Labcd/rE;

    invoke-virtual {p1}, Labcd/QC;->Zo()I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/rE;->j6(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Labcd/_J;->QX:Labcd/_J$b;

    iget-object v1, v1, Labcd/_J$b;->j6:Labcd/bK;

    invoke-virtual {v1}, Labcd/bK;->DW()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Labcd/rE;->Hw:Labcd/rE;

    invoke-virtual {v1}, Labcd/rE;->DW()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    sget-object v0, Labcd/_J$c;->DW:Labcd/_J$c;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Labcd/QC;->DW()J

    move-result-wide v2

    invoke-virtual {p0}, Labcd/_J;->aM()J

    move-result-wide v0

    rem-long v4, v2, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    rem-long v4, v0, v8

    sub-long/2addr v0, v4

    :cond_5
    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    sget-object v0, Labcd/_J$c;->Hw:Labcd/_J$c;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Labcd/QC;->J0()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Labcd/_J$c;->j6:Labcd/_J$c;

    goto :goto_0

    :cond_7
    sget-object v0, Labcd/_J$c;->FH:Labcd/_J$c;

    goto :goto_0
.end method

.method public j6(Labcd/RC;)Labcd/rE;
    .registers 5

    invoke-virtual {p0}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Labcd/_J;->Mr()Labcd/bK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bK;->DW()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    sget-object v2, Labcd/rE;->FH:Labcd/rE;

    if-ne v2, v0, :cond_2

    sget-object v2, Labcd/rE;->Hw:Labcd/rE;

    if-ne v2, v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Labcd/rE;->Hw:Labcd/rE;

    if-ne v2, v0, :cond_0

    sget-object v2, Labcd/rE;->FH:Labcd/rE;

    if-ne v2, v1, :cond_0

    move-object v0, v1

    goto :goto_0
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

    if-eqz v1, :cond_0

    check-cast v0, Labcd/_J$d;

    iget-object v0, v0, Labcd/_J$d;->DW:Labcd/_J$a;

    :goto_0
    new-instance v1, Labcd/_J$e;

    invoke-direct {v1, v0, p1}, Labcd/_J$e;-><init>(Labcd/_J$a;Labcd/UE;)V

    iput-object v1, p0, Labcd/_J;->a8:Labcd/UD;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j6([Labcd/_J$a;)V
    .registers 9

    const/4 v1, 0x0

    iput-object p1, p0, Labcd/_J;->j3:[Labcd/_J$a;

    iget-object v0, p0, Labcd/_J;->QX:Labcd/_J$b;

    iget-object v3, v0, Labcd/_J$b;->DW:Ljava/nio/charset/CharsetEncoder;

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v4, p0, Labcd/_J;->j3:[Labcd/_J$a;

    array-length v5, v4

    if-lt v2, v5, :cond_1

    iput v0, p0, Labcd/_J;->Mr:I

    iget v0, p0, Labcd/_J;->Mr:I

    sget-object v2, Labcd/_J;->we:Ljava/util/Comparator;

    invoke-static {v4, v1, v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, -0x1

    iput v0, p0, Labcd/_J;->aM:I

    iput v1, p0, Labcd/_J;->U2:I

    invoke-virtual {p0}, Labcd/_J;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/_J;->er()V

    :cond_0
    return-void

    :cond_1
    aget-object v4, v4, v2

    if-nez v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Labcd/_J$a;->Hw()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".git"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".gitignore"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Labcd/_J$d;

    invoke-direct {v5, v4}, Labcd/_J$d;-><init>(Labcd/_J$a;)V

    iput-object v5, p0, Labcd/_J;->a8:Labcd/UD;

    :cond_4
    if-eq v2, v0, :cond_5

    iget-object v5, p0, Labcd/_J;->j3:[Labcd/_J$a;

    aput-object v4, v5, v0

    :cond_5
    invoke-virtual {v4, v3}, Labcd/_J$a;->j6(Ljava/nio/charset/CharsetEncoder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public j6(Labcd/QC;Z)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Labcd/_J;->j6(Labcd/QC;)Labcd/_J$c;

    move-result-object v2

    invoke-static {}, Labcd/_J;->QX()[I

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Labcd/_J;->DW(Labcd/QC;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->unexpectedCompareResult:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-direct {p0, p1}, Labcd/_J;->DW(Labcd/QC;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected j6(Labcd/_J$a;)[B
    .registers 3

    iget-object v0, p0, Labcd/_J;->lg:Labcd/UE;

    if-nez v0, :cond_0

    sget-object v0, Labcd/TJ;->j6:[B

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Labcd/UE;->J8()Ljava/io/File;
    :try_end_0
    .catch Labcd/iD; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Labcd/_J;->j6(Ljava/io/File;Labcd/_J$a;)[B

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Labcd/TJ;->j6:[B

    goto :goto_0
.end method

.method protected j6(Ljava/io/File;Labcd/_J$a;)[B
    .registers 6

    :try_start_0
    invoke-virtual {p2}, Labcd/_J$a;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Labcd/YH;->j6(Ljava/io/File;Ljava/lang/String;)Labcd/UE;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Labcd/TJ;->j6:[B

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "HEAD"

    invoke-virtual {v1, v0}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    invoke-virtual {v1}, Labcd/UE;->j6()V

    if-nez v2, :cond_1

    sget-object v0, Labcd/TJ;->j6:[B

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Labcd/YD;->DW([BI)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Labcd/TJ;->j6:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Labcd/UE;->j6()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/UE;->j6()V

    throw v0

    :catch_1
    move-exception v0

    sget-object v0, Labcd/TJ;->j6:[B

    goto :goto_0
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

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/_J;->XL:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/_J;->QX:Labcd/_J$b;

    iget-object v1, v0, Labcd/_J$b;->v5:Labcd/YJ;

    if-eqz v1, :cond_1

    iget v0, v0, Labcd/_J$b;->Zo:I

    const-class v2, Labcd/RC;

    invoke-virtual {v1, v0, v2}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    check-cast v0, Labcd/RC;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Labcd/_J;->j6(Labcd/QC;)Labcd/_J$c;

    move-result-object v1

    sget-object v2, Labcd/_J$c;->j6:Labcd/_J$c;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Labcd/RC;->u7()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Labcd/TJ;->v5:I

    const v1, 0xf000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-eq v0, v1, :cond_4

    const v1, 0xa000

    if-eq v0, v1, :cond_3

    const v1, 0xe000

    if-eq v0, v1, :cond_2

    sget-object v0, Labcd/TJ;->j6:[B

    goto :goto_0

    :cond_2
    iget v0, p0, Labcd/_J;->U2:I

    iput v0, p0, Labcd/_J;->aM:I

    iget-object v1, p0, Labcd/_J;->j3:[Labcd/_J$a;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Labcd/_J;->j6(Labcd/_J$a;)[B

    move-result-object v0

    iput-object v0, p0, Labcd/_J;->XL:[B

    goto :goto_0

    :cond_3
    sget-object v0, Labcd/TJ;->j6:[B

    goto :goto_0

    :cond_4
    iget v0, p0, Labcd/_J;->U2:I

    iput v0, p0, Labcd/_J;->aM:I

    iget-object v1, p0, Labcd/_J;->j3:[Labcd/_J$a;

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Labcd/_J;->FH(Labcd/_J$a;)[B

    move-result-object v0

    iput-object v0, p0, Labcd/_J;->XL:[B

    goto :goto_0
.end method
