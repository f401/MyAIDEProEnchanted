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
    .registers 5

    invoke-direct {p0}, Labcd/CC;-><init>()V

    iput-object p1, p0, Labcd/tC;->DW:[B

    iget-object v0, p0, Labcd/tC;->DW:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Labcd/IK;->Hw([BII)Labcd/CK;

    move-result-object v0

    iput-object v0, p0, Labcd/tC;->FH:Labcd/CK;

    return-void
.end method

.method private DW(I)I
    .registers 4

    iget-object v0, p0, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Labcd/CK;->DW(I)I

    move-result v0

    return v0
.end method

.method private j6(I)I
    .registers 4

    iget-object v0, p0, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Labcd/CK;->DW(I)I

    move-result v0

    return v0
.end method

.method public static j6(Ljava/io/InputStream;)Z
    .registers 5

    const/16 v0, 0x1f40

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    :cond_0
    invoke-static {v1, v0}, Labcd/tC;->j6([BI)Z

    move-result v0

    return v0

    :cond_1
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public static j6([B)Z
    .registers 2

    array-length v0, p0

    invoke-static {p0, v0}, Labcd/tC;->j6([BI)Z

    move-result v0

    return v0
.end method

.method public static j6([BI)Z
    .registers 5

    const/16 v0, 0x1f40

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    move v0, v1

    :goto_0
    if-lt v0, p1, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_1
    aget-byte v2, p0, v0

    if-nez v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public DW()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Labcd/tC;->FH:Labcd/CK;

    invoke-virtual {v1}, Labcd/CK;->DW()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Labcd/CK;->DW(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Labcd/tC;->DW:[B

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v2, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
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
    .registers 7

    invoke-direct {p0, p2}, Labcd/tC;->DW(I)I

    move-result v1

    invoke-direct {p0, p2}, Labcd/tC;->j6(I)I

    move-result v0

    iget-object v2, p0, Labcd/tC;->DW:[B

    add-int/lit8 v3, v0, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v2, p0, Labcd/tC;->DW:[B

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
