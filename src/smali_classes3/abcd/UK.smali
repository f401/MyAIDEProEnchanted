.class public Labcd/UK;
.super Ljava/io/InputStream;


# instance fields
.field private final DW:[B

.field private final FH:Ljava/io/InputStream;

.field private Hw:I

.field private VH:Z

.field private Zo:Z

.field private final j6:[B

.field private v5:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/UK;->j6:[B

    const/16 v0, 0x1fa0

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/UK;->DW:[B

    iput-object p1, p0, Labcd/UK;->FH:Ljava/io/InputStream;

    return-void
.end method

.method private j6()Z
    .registers 5

    iget-object v0, p0, Labcd/UK;->FH:Ljava/io/InputStream;

    iget-object v1, p0, Labcd/UK;->DW:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Labcd/UK;->Hw:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    return v3

    :cond_10
    iget-boolean v2, p0, Labcd/UK;->VH:Z

    if-nez v2, :cond_1e

    iget-object v2, p0, Labcd/UK;->DW:[B

    invoke-static {v2, v0}, Labcd/tC;->j6([BI)Z

    move-result v0

    iput-boolean v0, p0, Labcd/UK;->Zo:Z

    iput-boolean v1, p0, Labcd/UK;->VH:Z

    :cond_1e
    iput v3, p0, Labcd/UK;->v5:I

    return v1
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Labcd/UK;->FH:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .registers 4

    iget-object v0, p0, Labcd/UK;->j6:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Labcd/UK;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Labcd/UK;->j6:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    :goto_12
    return v0
.end method

.method public read([BII)I
    .registers 10

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget v0, p0, Labcd/UK;->Hw:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    move v0, p2

    :goto_b
    add-int v2, p3, p2

    if-lt v0, v2, :cond_10

    goto :goto_3f

    :cond_10
    iget v2, p0, Labcd/UK;->v5:I

    iget v3, p0, Labcd/UK;->Hw:I

    if-ne v2, v3, :cond_1d

    invoke-direct {p0}, Labcd/UK;->j6()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_3f

    :cond_1d
    iget-object v2, p0, Labcd/UK;->DW:[B

    iget v3, p0, Labcd/UK;->v5:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/UK;->v5:I

    aget-byte v2, v2, v3

    iget-boolean v3, p0, Labcd/UK;->Zo:Z

    if-nez v3, :cond_5e

    const/16 v3, 0xd

    if-eq v2, v3, :cond_30

    goto :goto_5e

    :cond_30
    iget v2, p0, Labcd/UK;->Hw:I

    if-ne v4, v2, :cond_45

    invoke-direct {p0}, Labcd/UK;->j6()Z

    move-result v2

    if-nez v2, :cond_45

    add-int/lit8 p3, v0, 0x1

    aput-byte v3, p1, v0

    move v0, p3

    :goto_3f
    if-ne p2, v0, :cond_42

    goto :goto_44

    :cond_42
    sub-int v1, v0, p2

    :goto_44
    return v1

    :cond_45
    iget-object v2, p0, Labcd/UK;->DW:[B

    iget v4, p0, Labcd/UK;->v5:I

    aget-byte v2, v2, v4

    const/16 v5, 0xa

    if-ne v2, v5, :cond_58

    add-int/lit8 v2, v0, 0x1

    aput-byte v5, p1, v0

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Labcd/UK;->v5:I

    goto :goto_5c

    :cond_58
    add-int/lit8 v2, v0, 0x1

    aput-byte v3, p1, v0

    :goto_5c
    move v0, v2

    goto :goto_b

    :cond_5e
    :goto_5e
    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method
