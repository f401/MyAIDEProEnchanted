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

    if-eqz p3, :cond_4d

    iget-object v0, p0, Labcd/Gr;->DW:[B

    iget-object v1, p0, Labcd/Gr;->j6:Labcd/Dr;

    iget-object v1, v1, Labcd/Dr;->DW:Labcd/Dr$a;

    invoke-virtual {v1, p4}, Labcd/Dr$a;->j6(I)V

    :cond_b
    :goto_b
    iget-object v1, p0, Labcd/Gr;->j6:Labcd/Dr;

    iget-object v1, v1, Labcd/Dr;->DW:Labcd/Dr$a;

    invoke-virtual {v1}, Labcd/Dr$a;->j6()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Labcd/Gr;->j6:Labcd/Dr;

    iget-object v1, v1, Labcd/Dr;->DW:Labcd/Dr$a;

    invoke-virtual {v1}, Labcd/Dr$a;->Hw()I

    move-result v1

    add-int v2, v1, p3

    iget v3, p0, Labcd/Gr;->FH:I

    if-gt v2, v3, :cond_b

    const/4 v2, 0x0

    :goto_24
    if-ge v2, p3, :cond_34

    add-int v3, v1, v2

    aget-byte v3, v0, v3

    add-int v4, p2, v2

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_31

    goto :goto_b

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_34
    return v1

    :cond_35
    iget v0, p0, Labcd/Gr;->FH:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Labcd/Gr;->j6(I)V

    iget-object v0, p0, Labcd/Gr;->DW:[B

    iget v1, p0, Labcd/Gr;->FH:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Labcd/Gr;->FH:I

    add-int/2addr p1, p3

    iput p1, p0, Labcd/Gr;->FH:I

    iget-object p1, p0, Labcd/Gr;->j6:Labcd/Dr;

    invoke-virtual {p1, p4, v1}, Labcd/Dr;->j6(II)V

    return v1

    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_54

    :goto_53
    throw p1

    :goto_54
    goto :goto_53
.end method

.method private j6(I)V
    .registers 5

    iget-object v0, p0, Labcd/Gr;->DW:[B

    array-length v1, v0

    if-ge v1, p1, :cond_17

    array-length v0, v0

    :goto_6
    mul-int/lit8 v0, v0, 0x2

    if-ge v0, p1, :cond_b

    goto :goto_6

    :cond_b
    new-array p1, v0, [B

    iget-object v0, p0, Labcd/Gr;->DW:[B

    iget v1, p0, Labcd/Gr;->FH:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Labcd/Gr;->DW:[B

    :cond_17
    return-void
.end method

.method private j6(ILjava/lang/StringBuffer;)V
    .registers 8

    iget-object v0, p0, Labcd/Gr;->DW:[B

    :goto_2
    array-length v1, v0

    if-ge p1, v1, :cond_75

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_e

    goto :goto_75

    :cond_e
    shr-int/lit8 v2, p1, 0x4

    const-string v3, "End index not on boundary"

    packed-switch v2, :pswitch_data_76

    :pswitch_15  #0x8, 0x9, 0xa, 0xb
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/io/UTFDataFormatException;

    const-string v0, "Malformed input"

    invoke-direct {p2, v0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_22  #0xe
    add-int/lit8 v2, v1, 0x1

    array-length v4, v0

    if-ge v2, v4, :cond_44

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr p1, v1

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr p1, v1

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, v2, 0x1

    goto :goto_2

    :cond_44
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/io/UTFDataFormatException;

    invoke-direct {p2, v3}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_4f  #0xc, 0xd
    array-length v2, v0

    if-ge v1, v2, :cond_64

    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr p1, v2

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, v1, 0x1

    goto :goto_2

    :cond_64
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/io/UTFDataFormatException;

    invoke-direct {p2, v3}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_6f  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p1, v1

    goto :goto_2

    :cond_75
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_6f  #00000000
        :pswitch_6f  #00000001
        :pswitch_6f  #00000002
        :pswitch_6f  #00000003
        :pswitch_6f  #00000004
        :pswitch_6f  #00000005
        :pswitch_6f  #00000006
        :pswitch_6f  #00000007
        :pswitch_15  #00000008
        :pswitch_15  #00000009
        :pswitch_15  #0000000a
        :pswitch_15  #0000000b
        :pswitch_4f  #0000000c
        :pswitch_4f  #0000000d
        :pswitch_22  #0000000e
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
    .registers 15

    iget-object v0, p0, Labcd/Gr;->DW:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    add-int/lit8 v4, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 v5, p1, 0x7f

    mul-int/lit8 v6, v3, 0x7

    shl-int/2addr v5, v6

    or-int/2addr v2, v5

    const/4 v5, 0x1

    add-int/2addr v3, v5

    const/16 v6, 0x80

    and-int/2addr p1, v6

    const/4 v7, 0x5

    if-ne p1, v6, :cond_1e

    if-lt v3, v7, :cond_1c

    goto :goto_1e

    :cond_1c
    move p1, v4

    goto :goto_5

    :cond_1e
    :goto_1e
    const-string v3, "invalid LEB128 sequence"

    if-eq p1, v6, :cond_8f

    const/4 p1, 0x0

    const/4 v8, 0x0

    :goto_24
    add-int/lit8 v9, p2, 0x1

    aget-byte p2, v0, p2

    and-int/lit16 p2, p2, 0xff

    and-int/lit8 v10, p2, 0x7f

    mul-int/lit8 v11, v8, 0x7

    shl-int/2addr v10, v11

    or-int/2addr p1, v10

    add-int/2addr v8, v5

    and-int/2addr p2, v6

    if-ne p2, v6, :cond_39

    if-lt v8, v7, :cond_37

    goto :goto_39

    :cond_37
    move p2, v9

    goto :goto_24

    :cond_39
    :goto_39
    if-eq p2, v6, :cond_89

    add-int/2addr v2, v5

    add-int/2addr p1, v5

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    :goto_42
    if-ge p2, p1, :cond_60

    add-int v2, v4, p2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v3, v9, p2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v6, v2, 0x80

    if-nez v6, :cond_61

    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_59

    goto :goto_61

    :cond_59
    sub-int/2addr v2, v3

    if-eqz v2, :cond_5d

    return v2

    :cond_5d
    add-int/lit8 p2, p2, 0x1

    goto :goto_42

    :cond_60
    const/4 v5, 0x0

    :cond_61
    :goto_61
    if-nez v5, :cond_64

    return v1

    :cond_64
    iget-object p1, p0, Labcd/Gr;->Hw:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object p1, p0, Labcd/Gr;->Hw:Ljava/lang/StringBuffer;

    invoke-direct {p0, v4, p1}, Labcd/Gr;->j6(ILjava/lang/StringBuffer;)V

    iget-object p1, p0, Labcd/Gr;->v5:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object p1, p0, Labcd/Gr;->v5:Ljava/lang/StringBuffer;

    invoke-direct {p0, v9, p1}, Labcd/Gr;->j6(ILjava/lang/StringBuffer;)V

    iget-object p1, p0, Labcd/Gr;->Hw:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Labcd/Gr;->v5:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Labcd/Gr;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_89
    new-instance p1, Labcd/Ut;

    invoke-direct {p1, v3}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8f
    new-instance p1, Labcd/Ut;

    invoke-direct {p1, v3}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    goto :goto_96

    :goto_95
    throw p1

    :goto_96
    goto :goto_95
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1e

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1b

    sub-int/2addr v4, v5

    return v4

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1e
    sub-int/2addr v0, v1

    return v0
.end method

.method public j6([BI)I
    .registers 7

    const/4 v0, 0x0

    move v1, p2

    :goto_2
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v1

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_21

    :goto_10
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    if-eqz v2, :cond_1b

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    move v2, v1

    goto :goto_10

    :cond_1b
    sub-int/2addr v1, p2

    invoke-direct {p0, p1, p2, v1, v0}, Labcd/Gr;->j6([BIII)I

    move-result p1

    return p1

    :cond_21
    move v1, v2

    goto :goto_2
.end method

.method public j6()[B
    .registers 2

    iget-object v0, p0, Labcd/Gr;->DW:[B

    return-object v0
.end method
