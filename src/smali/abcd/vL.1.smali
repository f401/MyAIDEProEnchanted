.class public Labcd/vL;
.super Ljava/io/FilterInputStream;


# instance fields
.field private final DW:Z

.field private final FH:[[B

.field private final j6:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-static {p1}, Labcd/OM;->j6(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/vL;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/vL;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Labcd/vL;->j6:I

    iput-boolean p3, p0, Labcd/vL;->DW:Z

    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Labcd/vL;->FH:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Labcd/vL;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 5

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Labcd/vL;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static DW(Ljava/io/InputStream;I)I
    .registers 5

    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v2, v0, 0x7f

    if-eqz v2, :cond_4

    :goto_0
    if-ltz v0, :cond_0

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_2

    :cond_0
    if-ltz v0, :cond_3

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found inside tag value."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - invalid high tag number found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static DW(Labcd/HM;)[C
    .registers 6

    invoke-virtual {p0}, Labcd/HM;->j6()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Labcd/HM;->read()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Labcd/HM;->read()I

    move-result v4

    if-ltz v4, :cond_0

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static j6(Ljava/io/InputStream;I)I
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_6

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    and-int/lit8 v3, v0, 0x7f

    const/4 v0, 0x4

    if-gt v3, v0, :cond_5

    move v1, v2

    move v0, v2

    :goto_0
    if-lt v1, v3, :cond_3

    if-ltz v0, :cond_2

    if-lt v0, p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - out of bounds length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - negative length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_4

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found reading length"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DER length more than 4 bytes: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found when length expected"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static j6(ILabcd/HM;[[B)Labcd/EL;
    .registers 5

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown tag "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encountered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v0, Labcd/bM;

    invoke-static {p1}, Labcd/vL;->DW(Labcd/HM;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/bM;-><init>([C)V

    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Labcd/BM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/BM;-><init>([B)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Labcd/iM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/iM;-><init>([B)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Labcd/CM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/CM;-><init>([B)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Labcd/uL;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/uL;-><init>([B)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Labcd/NL;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/NL;-><init>([B)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Labcd/kM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/kM;-><init>([B)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Labcd/xM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/xM;-><init>([B)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Labcd/sM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/sM;-><init>([B)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Labcd/nM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/nM;-><init>([B)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Labcd/AM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/AM;-><init>([B)V

    goto :goto_0

    :pswitch_c
    invoke-static {p1, p2}, Labcd/vL;->j6(Labcd/HM;[[B)[B

    move-result-object v0

    invoke-static {v0}, Labcd/eM;->DW([B)Labcd/sL;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-static {p1, p2}, Labcd/vL;->j6(Labcd/HM;[[B)[B

    move-result-object v0

    invoke-static {v0}, Labcd/oM;->DW([B)Labcd/zL;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    sget-object v0, Labcd/mM;->j6:Labcd/mM;

    goto :goto_0

    :pswitch_f
    new-instance v0, Labcd/pM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/pM;-><init>([B)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p1}, Labcd/HM;->j6()I

    move-result v0

    invoke-static {v0, p1}, Labcd/cM;->j6(ILjava/io/InputStream;)Labcd/cM;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Labcd/wL;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/wL;-><init>([B)V

    goto/16 :goto_0

    :pswitch_12
    invoke-static {p1, p2}, Labcd/vL;->j6(Labcd/HM;[[B)[B

    move-result-object v0

    invoke-static {v0}, Labcd/dM;->DW([B)Labcd/oL;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static j6(Labcd/HM;[[B)[B
    .registers 5

    invoke-virtual {p0}, Labcd/HM;->j6()I

    move-result v1

    invoke-virtual {p0}, Labcd/HM;->j6()I

    move-result v0

    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v0, p1, v1

    if-nez v0, :cond_0

    new-array v0, v1, [B

    aput-object v0, p1, v1

    :cond_0
    invoke-static {p0, v0}, Labcd/XP;->j6(Ljava/io/InputStream;[B)I

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Labcd/HM;->DW()[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method DW()I
    .registers 2

    iget v0, p0, Labcd/vL;->j6:I

    return v0
.end method

.method protected FH()I
    .registers 2

    iget v0, p0, Labcd/vL;->j6:I

    invoke-static {p0, v0}, Labcd/vL;->j6(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public Hw()Labcd/EL;
    .registers 7

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v2

    if-gtz v2, :cond_1

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v2}, Labcd/vL;->DW(Ljava/io/InputStream;I)I

    move-result v3

    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Labcd/vL;->FH()I

    move-result v4

    if-gez v4, :cond_a

    if-eqz v0, :cond_9

    new-instance v0, Labcd/JL;

    new-instance v4, Labcd/JM;

    iget v5, p0, Labcd/vL;->j6:I

    invoke-direct {v4, p0, v5}, Labcd/JM;-><init>(Ljava/io/InputStream;I)V

    iget v5, p0, Labcd/vL;->j6:I

    invoke-direct {v0, v4, v5}, Labcd/JL;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_3

    new-instance v1, Labcd/PL;

    invoke-direct {v1, v3, v0}, Labcd/PL;-><init>(ILabcd/JL;)V

    invoke-virtual {v1}, Labcd/PL;->j6()Labcd/EL;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    new-instance v2, Labcd/ZL;

    invoke-direct {v2, v1, v3, v0}, Labcd/ZL;-><init>(ZILabcd/JL;)V

    invoke-virtual {v2}, Labcd/ZL;->j6()Labcd/EL;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-eq v3, v1, :cond_8

    const/16 v1, 0x8

    if-eq v3, v1, :cond_7

    const/16 v1, 0x10

    if-eq v3, v1, :cond_6

    const/16 v1, 0x11

    if-ne v3, v1, :cond_5

    new-instance v1, Labcd/XL;

    invoke-direct {v1, v0}, Labcd/XL;-><init>(Labcd/JL;)V

    invoke-virtual {v1}, Labcd/XL;->j6()Labcd/EL;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v1, Labcd/VL;

    invoke-direct {v1, v0}, Labcd/VL;-><init>(Labcd/JL;)V

    invoke-virtual {v1}, Labcd/VL;->j6()Labcd/EL;

    move-result-object v0

    goto :goto_0

    :cond_7
    new-instance v1, Labcd/gM;

    invoke-direct {v1, v0}, Labcd/gM;-><init>(Labcd/JL;)V

    invoke-virtual {v1}, Labcd/gM;->j6()Labcd/EL;

    move-result-object v0

    goto :goto_0

    :cond_8
    new-instance v1, Labcd/TL;

    invoke-direct {v1, v0}, Labcd/TL;-><init>(Labcd/JL;)V

    invoke-virtual {v1}, Labcd/TL;->j6()Labcd/EL;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :try_start_0
    invoke-virtual {p0, v2, v3, v4}, Labcd/vL;->j6(III)Labcd/EL;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/tL;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Labcd/tL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected j6(III)Labcd/EL;
    .registers 8

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Labcd/HM;

    invoke-direct {v2, p0, p3}, Labcd/HM;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_1

    new-instance v1, Labcd/aM;

    invoke-virtual {v2}, Labcd/HM;->DW()[B

    move-result-object v2

    invoke-direct {v1, v0, p2, v2}, Labcd/aM;-><init>(ZI[B)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    and-int/lit16 v3, p1, 0x80

    if-eqz v3, :cond_2

    new-instance v1, Labcd/JL;

    invoke-direct {v1, v2}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0, p2}, Labcd/JL;->j6(ZI)Labcd/EL;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_9

    const/4 v0, 0x4

    if-eq p2, v0, :cond_7

    const/16 v0, 0x8

    if-eq p2, v0, :cond_6

    const/16 v0, 0x10

    if-eq p2, v0, :cond_4

    const/16 v0, 0x11

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, v2}, Labcd/vL;->j6(Labcd/HM;)Labcd/rL;

    move-result-object v0

    invoke-static {v0}, Labcd/hM;->DW(Labcd/rL;)Labcd/HL;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown tag "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encountered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-boolean v0, p0, Labcd/vL;->DW:Z

    if-eqz v0, :cond_5

    new-instance v0, Labcd/LM;

    invoke-virtual {v2}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/LM;-><init>([B)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Labcd/vL;->j6(Labcd/HM;)Labcd/rL;

    move-result-object v0

    invoke-static {v0}, Labcd/hM;->j6(Labcd/rL;)Labcd/FL;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v0, Labcd/fM;

    invoke-virtual {p0, v2}, Labcd/vL;->j6(Labcd/HM;)Labcd/rL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/fM;-><init>(Labcd/rL;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v2}, Labcd/vL;->j6(Labcd/HM;)Labcd/rL;

    move-result-object v2

    invoke-virtual {v2}, Labcd/rL;->j6()I

    move-result v0

    new-array v3, v0, [Labcd/AL;

    :goto_2
    array-length v0, v3

    if-ne v1, v0, :cond_8

    new-instance v0, Labcd/SL;

    invoke-direct {v0, v3}, Labcd/SL;-><init>([Labcd/AL;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v2, v1}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/AL;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Labcd/vL;->FH:[[B

    invoke-static {p2, v2, v0}, Labcd/vL;->j6(ILabcd/HM;[[B)Labcd/EL;

    move-result-object v0

    goto/16 :goto_1
.end method

.method j6()Labcd/rL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    :goto_0
    invoke-virtual {p0}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_0
.end method

.method j6(Labcd/HM;)Labcd/rL;
    .registers 3

    new-instance v0, Labcd/vL;

    invoke-direct {v0, p1}, Labcd/vL;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Labcd/vL;->j6()Labcd/rL;

    move-result-object v0

    return-object v0
.end method
