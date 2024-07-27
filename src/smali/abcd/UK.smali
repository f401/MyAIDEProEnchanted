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
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Labcd/UK;->FH:Ljava/io/InputStream;

    iget-object v3, p0, Labcd/UK;->DW:[B

    array-length v4, v3

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    iput v2, p0, Labcd/UK;->Hw:I

    iget v2, p0, Labcd/UK;->Hw:I

    if-ge v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v3, p0, Labcd/UK;->VH:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Labcd/UK;->DW:[B

    invoke-static {v3, v2}, Labcd/tC;->j6([BI)Z

    move-result v2

    iput-boolean v2, p0, Labcd/UK;->Zo:Z

    iput-boolean v1, p0, Labcd/UK;->VH:Z

    :cond_1
    iput v0, p0, Labcd/UK;->v5:I

    move v0, v1

    goto :goto_0
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

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/UK;->j6:[B

    invoke-virtual {p0, v0, v1, v2}, Labcd/UK;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Labcd/UK;->j6:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .registers 11

    const/16 v6, 0xa

    const/16 v5, 0xd

    const/4 v0, -0x1

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Labcd/UK;->Hw:I

    if-eq v1, v0, :cond_0

    move v2, p2

    :goto_1
    add-int v1, p3, p2

    if-lt v2, v1, :cond_3

    :cond_2
    move v1, v2

    :goto_2
    if-eq p2, v1, :cond_0

    sub-int v0, v1, p2

    goto :goto_0

    :cond_3
    iget v1, p0, Labcd/UK;->v5:I

    iget v3, p0, Labcd/UK;->Hw:I

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Labcd/UK;->j6()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_4
    iget-object v1, p0, Labcd/UK;->DW:[B

    iget v3, p0, Labcd/UK;->v5:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/UK;->v5:I

    aget-byte v1, v1, v3

    iget-boolean v3, p0, Labcd/UK;->Zo:Z

    if-nez v3, :cond_5

    if-eq v1, v5, :cond_6

    :cond_5
    aput-byte v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget v1, p0, Labcd/UK;->v5:I

    iget v3, p0, Labcd/UK;->Hw:I

    if-ne v1, v3, :cond_7

    invoke-direct {p0}, Labcd/UK;->j6()Z

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 v1, v2, 0x1

    aput-byte v5, p1, v2

    goto :goto_2

    :cond_7
    iget-object v1, p0, Labcd/UK;->DW:[B

    iget v3, p0, Labcd/UK;->v5:I

    aget-byte v1, v1, v3

    if-ne v1, v6, :cond_8

    add-int/lit8 v1, v2, 0x1

    aput-byte v6, p1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Labcd/UK;->v5:I

    :goto_3
    move v2, v1

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v2, 0x1

    aput-byte v5, p1, v2

    goto :goto_3
.end method
