.class public Labcd/tC;
.super Labcd/CC;


# static fields
.field public static final j6:Labcd/tC;


# instance fields
.field protected final DW:[B

.field protected final FH:Labcd/CK;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/tC;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Labcd/tC;-><init>([B)V

    sput-object v0, Labcd/tC;->j6:Labcd/tC;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Labcd/CC;-><init>()V

    iput-object p1, p0, Labcd/tC;->DW:[B

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Labcd/IK;->Hw([BII)Labcd/CK;

    move-result-object p1

    iput-object p1, p0, Labcd/tC;->FH:Labcd/CK;

    return-void
.end method

.method private DW(I)I
    .registers 3

    iget-object v0, p0, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Labcd/CK;->DW(I)I

    move-result p1

    return p1
.end method

.method private j6(I)I
    .registers 3

    iget-object v0, p0, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Labcd/CK;->DW(I)I

    move-result p1

    return p1
.end method

.method public static j6(Ljava/io/InputStream;)Z
    .registers 6

    const/16 v0, 0x1f40

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v0, :cond_8

    goto :goto_11

    :cond_8
    rsub-int v3, v2, 0x1f40

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    :goto_11
    invoke-static {v1, v2}, Labcd/tC;->j6([BI)Z

    move-result p0

    return p0

    :cond_16
    add-int/2addr v2, v3

    goto :goto_5
.end method

.method public static j6([B)Z
    .registers 2

    array-length v0, p0

    invoke-static {p0, v0}, Labcd/tC;->j6([BI)Z

    move-result p0

    return p0
.end method

.method public static j6([BI)Z
    .registers 5

    const/16 v0, 0x1f40

    if-le p1, v0, :cond_6

    const/16 p1, 0x1f40

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    if-lt v1, p1, :cond_b

    return v0

    :cond_b
    aget-byte v2, p0, v1

    if-nez v2, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method


# virtual methods
.method public DW()Z
    .registers 4

    iget-object v0, p0, Labcd/tC;->FH:Labcd/CK;

    invoke-virtual {v0}, Labcd/CK;->DW()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Labcd/CK;->DW(I)I

    move-result v0

    if-nez v0, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Labcd/tC;->DW:[B

    sub-int/2addr v0, v2

    aget-byte v0, v1, v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_19

    return v2

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/tC;->FH:Labcd/CK;

    invoke-virtual {v0}, Labcd/CK;->DW()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public j6(Ljava/io/OutputStream;I)V
    .registers 8

    invoke-direct {p0, p2}, Labcd/tC;->DW(I)I

    move-result v0

    invoke-direct {p0, p2}, Labcd/tC;->j6(I)I

    move-result p2

    iget-object v1, p0, Labcd/tC;->DW:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v3, v1, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_13

    move p2, v2

    :cond_13
    sub-int/2addr p2, v0

    invoke-virtual {p1, v1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
