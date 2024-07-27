.class public Labcd/Gr;
.super Ljava/lang/Object;


# instance fields
.field private DW:[B

.field private FH:I

.field private Hw:Ljava/lang/StringBuffer;

.field private j6:Labcd/Dr;

.field private v5:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Dr;

    invoke-direct {v0}, Labcd/Dr;-><init>()V

    iput-object v0, p0, Labcd/Gr;->j6:Labcd/Dr;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/Gr;->DW:[B

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Labcd/Gr;->Hw:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Labcd/Gr;->v5:Ljava/lang/StringBuffer;

    return-void
.end method

.method private j6([BIII)I
    .registers 10

    if-eqz p3, :cond_3

    iget-object v2, p0, Labcd/Gr;->DW:[B

    iget-object v0, p0, Labcd/Gr;->j6:Labcd/Dr;

    iget-object v0, v0, Labcd/Dr;->DW:Labcd/Dr$a;

    invoke-virtual {v0, p4}, Labcd/Dr$a;->j6(I)V

    :cond_0
    iget-object v0, p0, Labcd/Gr;->j6:Labcd/Dr;

    iget-object v0, v0, Labcd/Dr;->DW:Labcd/Dr$a;

    invoke-virtual {v0}, Labcd/Dr$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Gr;->j6:Labcd/Dr;

    iget-object v0, v0, Labcd/Dr;->DW:Labcd/Dr$a;

    invoke-virtual {v0}, Labcd/Dr$a;->Hw()I

    move-result v0

    add-int v1, v0, p3

    iget v3, p0, Labcd/Gr;->FH:I

    if-gt v1, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    add-int v3, v0, v1

    aget-byte v3, v2, v3

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Labcd/Gr;->FH:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Labcd/Gr;->j6(I)V

    iget-object v1, p0, Labcd/Gr;->DW:[B

    iget v0, p0, Labcd/Gr;->FH:I

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Labcd/Gr;->FH:I

    add-int/2addr v1, p3

    iput v1, p0, Labcd/Gr;->FH:I

    iget-object v1, p0, Labcd/Gr;->j6:Labcd/Dr;

    invoke-virtual {v1, p4, v0}, Labcd/Dr;->j6(II)V

    :cond_2
    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private j6(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/Gr;->DW:[B

    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_0

    new-array v0, v0, [B

    iget-object v1, p0, Labcd/Gr;->DW:[B

    iget v2, p0, Labcd/Gr;->FH:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Gr;->DW:[B

    :cond_1
    return-void
.end method

.method private j6(ILjava/lang/StringBuffer;)V
    .registers 8

    iget-object v1, p0, Labcd/Gr;->DW:[B

    :goto_0
    array-length v0, v1

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, v1, p1

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    shr-int/lit8 v3, v2, 0x4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/io/UTFDataFormatException;

    const-string v2, "Malformed input"

    invoke-direct {v1, v2}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_1
    add-int/lit8 v3, v0, 0x1

    array-length v4, v1

    if-ge v3, v4, :cond_2

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v2

    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v0, v2

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/io/UTFDataFormatException;

    const-string v2, "End index not on boundary"

    invoke-direct {v1, v2}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_2
    array-length v3, v1

    if-ge v0, v3, :cond_3

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/io/UTFDataFormatException;

    const-string v2, "End index not on boundary"

    invoke-direct {v1, v2}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_3
    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget-object v0, p0, Labcd/Gr;->j6:Labcd/Dr;

    invoke-virtual {v0}, Labcd/Dr;->FH()I

    move-result v0

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/Gr;->FH:I

    return v0
.end method

.method public j6(II)I
    .registers 16

    const/4 v12, 0x5

    const/16 v11, 0x80

    const/4 v2, 0x0

    iget-object v7, p0, Labcd/Gr;->DW:[B

    move v1, v2

    move v3, v2

    :goto_0
    add-int/lit8 v0, p1, 0x1

    aget-byte v4, v7, p1

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v4, 0x7f

    mul-int/lit8 v6, v3, 0x7

    shl-int/2addr v5, v6

    or-int/2addr v1, v5

    const/4 v6, 0x1

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v4, v4, 0x80

    if-ne v4, v11, :cond_0

    if-lt v3, v12, :cond_2

    :cond_0
    if-eq v4, v11, :cond_9

    move v4, v2

    move v5, v2

    :goto_1
    add-int/lit8 v3, p2, 0x1

    aget-byte v8, v7, p2

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v8, 0x7f

    mul-int/lit8 v10, v4, 0x7

    shl-int/2addr v9, v10

    or-int/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v8, v8, 0x80

    if-ne v8, v11, :cond_1

    if-lt v4, v12, :cond_3

    :cond_1
    if-eq v8, v11, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v5, 0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_6

    add-int v1, v0, v4

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    add-int v8, v3, v4

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v9, v1, 0x80

    if-nez v9, :cond_a

    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_4

    move v1, v6

    :goto_3
    if-nez v1, :cond_7

    :goto_4
    return v2

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    move p2, v3

    goto :goto_1

    :cond_4
    sub-int/2addr v1, v8

    if-eqz v1, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    iget-object v1, p0, Labcd/Gr;->Hw:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Labcd/Gr;->Hw:Ljava/lang/StringBuffer;

    invoke-direct {p0, v0, v1}, Labcd/Gr;->j6(ILjava/lang/StringBuffer;)V

    iget-object v0, p0, Labcd/Gr;->v5:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Labcd/Gr;->v5:Ljava/lang/StringBuffer;

    invoke-direct {p0, v3, v0}, Labcd/Gr;->j6(ILjava/lang/StringBuffer;)V

    iget-object v0, p0, Labcd/Gr;->Hw:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Gr;->v5:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/Gr;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_8
    new-instance v0, Labcd/Ut;

    const-string v1, "invalid LEB128 sequence"

    invoke-direct {v0, v1}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Labcd/Ut;

    const-string v1, "invalid LEB128 sequence"

    invoke-direct {v0, v1}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v1, v6

    goto :goto_3
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    sub-int v0, v4, v5

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, v1, v2

    goto :goto_1
.end method

.method public j6([BI)I
    .registers 7

    const/4 v1, 0x0

    move v0, p2

    move v2, v1

    :goto_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v2, v0

    and-int/lit16 v0, v0, 0x80

    const/16 v3, 0x80

    if-eq v0, v3, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    if-eqz v1, :cond_0

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v2, v1

    move v1, v0

    goto :goto_1

    :cond_0
    sub-int/2addr v0, p2

    invoke-direct {p0, p1, p2, v0, v2}, Labcd/Gr;->j6([BIII)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public j6()[B
    .registers 2

    iget-object v0, p0, Labcd/Gr;->DW:[B

    return-object v0
.end method
