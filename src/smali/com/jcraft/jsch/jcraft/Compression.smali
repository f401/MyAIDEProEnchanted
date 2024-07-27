.class public Lcom/jcraft/jsch/jcraft/Compression;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Compression;


# instance fields
.field private DW:I

.field private FH:Labcd/Oy;

.field private Hw:[B

.field private final j6:I

.field private v5:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x34

    iput v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->j6:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->Hw:[B

    new-instance v0, Labcd/Oy;

    invoke-direct {v0}, Labcd/Oy;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    return-void
.end method


# virtual methods
.method public DW([BI[I)[B
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    iput-object p1, v0, Labcd/Oy;->j6:[B

    iput p2, v0, Labcd/Oy;->DW:I

    aget v1, p3, v2

    iput v1, v0, Labcd/Oy;->FH:I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/Compression;->Hw:[B

    iput-object v3, v0, Labcd/Oy;->v5:[B

    iput v2, v0, Labcd/Oy;->Zo:I

    const/16 v3, 0x1000

    iput v3, v0, Labcd/Oy;->VH:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Labcd/Oy;->FH(I)I

    move-result v0

    const/4 v3, -0x5

    if-eq v0, v3, :cond_3

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uncompress: inflate returnd "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->v5:[B

    array-length v3, v0

    add-int/lit16 v4, v1, 0x1000

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    iget v5, v5, Labcd/Oy;->VH:I

    sub-int v6, v4, v5

    if-ge v3, v6, :cond_2

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v3, v4, v5

    if-ge v0, v3, :cond_1

    sub-int v0, v4, v5

    :cond_1
    new-array v0, v0, [B

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/Compression;->v5:[B

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->v5:[B

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->Hw:[B

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/Compression;->v5:[B

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    iget v4, v4, Labcd/Oy;->VH:I

    rsub-int v4, v4, 0x1000

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    iget v0, v0, Labcd/Oy;->VH:I

    rsub-int v0, v0, 0x1000

    add-int/2addr v0, v1

    aput v0, p3, v2

    move v1, v0

    goto :goto_0

    :cond_3
    array-length v0, p1

    sub-int/2addr v0, p2

    if-le v1, v0, :cond_4

    add-int v0, v1, p2

    new-array v0, v0, [B

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/Compression;->v5:[B

    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :goto_2
    aput v1, p3, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->v5:[B

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public j6(II)V
    .registers 5

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    invoke-virtual {v0, p2}, Labcd/Oy;->DW(I)I

    iput v1, p0, Lcom/jcraft/jsch/jcraft/Compression;->DW:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    invoke-virtual {v0}, Labcd/Oy;->DW()I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->v5:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->DW:I

    goto :goto_0
.end method

.method public j6([BI[I)[B
    .registers 11

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    iput-object p1, v0, Labcd/Oy;->j6:[B

    iput p2, v0, Labcd/Oy;->DW:I

    aget v1, p3, v6

    sub-int/2addr v1, p2

    iput v1, v0, Labcd/Oy;->FH:I

    move v2, p2

    move-object v1, p1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/Compression;->Hw:[B

    iput-object v3, v0, Labcd/Oy;->v5:[B

    iput v6, v0, Labcd/Oy;->Zo:I

    const/16 v3, 0x1000

    iput v3, v0, Labcd/Oy;->VH:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Labcd/Oy;->j6(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "compress: deflate returnd "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    iget v0, v0, Labcd/Oy;->VH:I

    if-eqz v0, :cond_0

    aput v2, p3, v6

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->FH:Labcd/Oy;

    iget v0, v0, Labcd/Oy;->VH:I

    rsub-int v4, v0, 0x1000

    array-length v0, v1

    add-int v3, v2, v4

    add-int/lit8 v5, v3, 0x34

    if-ge v0, v5, :cond_2

    mul-int/lit8 v0, v5, 0x2

    new-array v0, v0, [B

    array-length v5, v1

    invoke-static {v1, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget-object v1, p0, Lcom/jcraft/jsch/jcraft/Compression;->Hw:[B

    invoke-static {v1, v6, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    move v2, v3

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
