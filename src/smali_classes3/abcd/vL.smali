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
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Labcd/vL;->j6:I

    iput-boolean p3, p0, Labcd/vL;->DW:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Labcd/vL;->FH:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Labcd/vL;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1, p2}, Labcd/vL;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static DW(Ljava/io/InputStream;I)I
    .registers 4

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_36

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    and-int/lit8 v0, p1, 0x7f

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    :goto_e
    if-ltz p1, :cond_1f

    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_15

    goto :goto_1f

    :cond_15
    and-int/lit8 p1, p1, 0x7f

    or-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    goto :goto_e

    :cond_1f
    :goto_1f
    if-ltz p1, :cond_26

    and-int/lit8 p0, p1, 0x7f

    or-int p1, v0, p0

    goto :goto_36

    :cond_26
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found inside tag value."

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    :goto_36
    return p1
.end method

.method private static DW(Labcd/HM;)[C
    .registers 6

    invoke-virtual {p0}, Labcd/HM;->j6()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_9
    if-lt v2, v0, :cond_c

    goto :goto_19

    :cond_c
    invoke-virtual {p0}, Labcd/HM;->read()I

    move-result v3

    if-gez v3, :cond_13

    goto :goto_19

    :cond_13
    invoke-virtual {p0}, Labcd/HM;->read()I

    move-result v4

    if-gez v4, :cond_1a

    :goto_19
    return-object v1

    :cond_1a
    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method static j6(Ljava/io/InputStream;I)I
    .registers 6

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_58

    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    const/16 v1, 0x7f

    if-le v0, v1, :cond_57

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x4

    if-gt v0, v1, :cond_43

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    if-lt v2, v0, :cond_2f

    if-ltz v1, :cond_27

    if-ge v1, p1, :cond_1f

    move v0, v1

    goto :goto_57

    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - out of bounds length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - negative length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_3b

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_3b
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "DER length more than 4 bytes: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_57
    :goto_57
    return v0

    :cond_58
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_61

    :goto_60
    throw p0

    :goto_61
    goto :goto_60
.end method

.method static j6(ILabcd/HM;[[B)Labcd/EL;
    .registers 3

    packed-switch p0, :pswitch_data_c6

    :pswitch_3  #0x7, 0x8, 0x9, 0xb, 0xd, 0xe, 0xf, 0x10, 0x11, 0x15, 0x19, 0x1d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unknown tag "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " encountered"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1c  #0x1e
    new-instance p0, Labcd/bM;

    invoke-static {p1}, Labcd/vL;->DW(Labcd/HM;)[C

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/bM;-><init>([C)V

    return-object p0

    :pswitch_26  #0x1c
    new-instance p0, Labcd/BM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/BM;-><init>([B)V

    return-object p0

    :pswitch_30  #0x1b
    new-instance p0, Labcd/iM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/iM;-><init>([B)V

    return-object p0

    :pswitch_3a  #0x1a
    new-instance p0, Labcd/CM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/CM;-><init>([B)V

    return-object p0

    :pswitch_44  #0x18
    new-instance p0, Labcd/uL;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/uL;-><init>([B)V

    return-object p0

    :pswitch_4e  #0x17
    new-instance p0, Labcd/NL;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/NL;-><init>([B)V

    return-object p0

    :pswitch_58  #0x16
    new-instance p0, Labcd/kM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/kM;-><init>([B)V

    return-object p0

    :pswitch_62  #0x14
    new-instance p0, Labcd/xM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/xM;-><init>([B)V

    return-object p0

    :pswitch_6c  #0x13
    new-instance p0, Labcd/sM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/sM;-><init>([B)V

    return-object p0

    :pswitch_76  #0x12
    new-instance p0, Labcd/nM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/nM;-><init>([B)V

    return-object p0

    :pswitch_80  #0xc
    new-instance p0, Labcd/AM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/AM;-><init>([B)V

    return-object p0

    :pswitch_8a  #0xa
    invoke-static {p1, p2}, Labcd/vL;->j6(Labcd/HM;[[B)[B

    move-result-object p0

    invoke-static {p0}, Labcd/eM;->DW([B)Labcd/sL;

    move-result-object p0

    return-object p0

    :pswitch_93  #0x6
    invoke-static {p1, p2}, Labcd/vL;->j6(Labcd/HM;[[B)[B

    move-result-object p0

    invoke-static {p0}, Labcd/oM;->DW([B)Labcd/zL;

    move-result-object p0

    return-object p0

    :pswitch_9c  #0x5
    sget-object p0, Labcd/mM;->j6:Labcd/mM;

    return-object p0

    :pswitch_9f  #0x4
    new-instance p0, Labcd/pM;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/pM;-><init>([B)V

    return-object p0

    :pswitch_a9  #0x3
    invoke-virtual {p1}, Labcd/HM;->j6()I

    move-result p0

    invoke-static {p0, p1}, Labcd/cM;->j6(ILjava/io/InputStream;)Labcd/cM;

    move-result-object p0

    return-object p0

    :pswitch_b2  #0x2
    new-instance p0, Labcd/wL;

    invoke-virtual {p1}, Labcd/HM;->DW()[B

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/wL;-><init>([B)V

    return-object p0

    :pswitch_bc  #0x1
    invoke-static {p1, p2}, Labcd/vL;->j6(Labcd/HM;[[B)[B

    move-result-object p0

    invoke-static {p0}, Labcd/dM;->DW([B)Labcd/oL;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_bc  #00000001
        :pswitch_b2  #00000002
        :pswitch_a9  #00000003
        :pswitch_9f  #00000004
        :pswitch_9c  #00000005
        :pswitch_93  #00000006
        :pswitch_3  #00000007
        :pswitch_3  #00000008
        :pswitch_3  #00000009
        :pswitch_8a  #0000000a
        :pswitch_3  #0000000b
        :pswitch_80  #0000000c
        :pswitch_3  #0000000d
        :pswitch_3  #0000000e
        :pswitch_3  #0000000f
        :pswitch_3  #00000010
        :pswitch_3  #00000011
        :pswitch_76  #00000012
        :pswitch_6c  #00000013
        :pswitch_62  #00000014
        :pswitch_3  #00000015
        :pswitch_58  #00000016
        :pswitch_4e  #00000017
        :pswitch_44  #00000018
        :pswitch_3  #00000019
        :pswitch_3a  #0000001a
        :pswitch_30  #0000001b
        :pswitch_26  #0000001c
        :pswitch_3  #0000001d
        :pswitch_1c  #0000001e
    .end packed-switch
.end method

.method private static j6(Labcd/HM;[[B)[B
    .registers 5

    invoke-virtual {p0}, Labcd/HM;->j6()I

    move-result v0

    invoke-virtual {p0}, Labcd/HM;->j6()I

    move-result v1

    array-length v2, p1

    if-ge v1, v2, :cond_17

    aget-object v1, p1, v0

    if-nez v1, :cond_13

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_13
    invoke-static {p0, v1}, Labcd/XP;->j6(Ljava/io/InputStream;[B)I

    return-object v1

    :cond_17
    invoke-virtual {p0}, Labcd/HM;->DW()[B

    move-result-object p0

    return-object p0
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

    invoke-virtual {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-gtz v0, :cond_12

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {p0, v0}, Labcd/vL;->DW(Ljava/io/InputStream;I)I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {p0}, Labcd/vL;->FH()I

    move-result v4

    if-gez v4, :cond_97

    if-eqz v2, :cond_8f

    new-instance v2, Labcd/JL;

    new-instance v4, Labcd/JM;

    iget v5, p0, Labcd/vL;->j6:I

    invoke-direct {v4, p0, v5}, Labcd/JM;-><init>(Ljava/io/InputStream;I)V

    iget v5, p0, Labcd/vL;->j6:I

    invoke-direct {v2, v4, v5}, Labcd/JL;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_42

    new-instance v0, Labcd/PL;

    invoke-direct {v0, v1, v2}, Labcd/PL;-><init>(ILabcd/JL;)V

    invoke-virtual {v0}, Labcd/PL;->j6()Labcd/EL;

    move-result-object v0

    return-object v0

    :cond_42
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_50

    new-instance v0, Labcd/ZL;

    invoke-direct {v0, v3, v1, v2}, Labcd/ZL;-><init>(ZILabcd/JL;)V

    invoke-virtual {v0}, Labcd/ZL;->j6()Labcd/EL;

    move-result-object v0

    return-object v0

    :cond_50
    const/4 v0, 0x4

    if-eq v1, v0, :cond_85

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7b

    const/16 v0, 0x10

    if-eq v1, v0, :cond_71

    const/16 v0, 0x11

    if-ne v1, v0, :cond_69

    new-instance v0, Labcd/XL;

    invoke-direct {v0, v2}, Labcd/XL;-><init>(Labcd/JL;)V

    invoke-virtual {v0}, Labcd/XL;->j6()Labcd/EL;

    move-result-object v0

    return-object v0

    :cond_69
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    new-instance v0, Labcd/VL;

    invoke-direct {v0, v2}, Labcd/VL;-><init>(Labcd/JL;)V

    invoke-virtual {v0}, Labcd/VL;->j6()Labcd/EL;

    move-result-object v0

    return-object v0

    :cond_7b
    new-instance v0, Labcd/gM;

    invoke-direct {v0, v2}, Labcd/gM;-><init>(Labcd/JL;)V

    invoke-virtual {v0}, Labcd/gM;->j6()Labcd/EL;

    move-result-object v0

    return-object v0

    :cond_85
    new-instance v0, Labcd/TL;

    invoke-direct {v0, v2}, Labcd/TL;-><init>(Labcd/JL;)V

    invoke-virtual {v0}, Labcd/TL;->j6()Labcd/EL;

    move-result-object v0

    return-object v0

    :cond_8f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    :try_start_97
    invoke-virtual {p0, v0, v1, v4}, Labcd/vL;->j6(III)Labcd/EL;

    move-result-object v0
    :try_end_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_97 .. :try_end_9b} :catch_9c

    return-object v0

    :catch_9c
    move-exception v0

    new-instance v1, Labcd/tL;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Labcd/tL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected j6(III)Labcd/EL;
    .registers 7

    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    new-instance v2, Labcd/HM;

    invoke-direct {v2, p0, p3}, Labcd/HM;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p3, p1, 0x40

    if-eqz p3, :cond_1b

    new-instance p1, Labcd/aM;

    invoke-virtual {v2}, Labcd/HM;->DW()[B

    move-result-object p3

    invoke-direct {p1, v0, p2, p3}, Labcd/aM;-><init>(ZI[B)V

    return-object p1

    :cond_1b
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_29

    new-instance p1, Labcd/JL;

    invoke-direct {p1, v2}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v0, p2}, Labcd/JL;->j6(ZI)Labcd/EL;

    move-result-object p1

    return-object p1

    :cond_29
    if-eqz v0, :cond_9a

    const/4 p1, 0x4

    if-eq p2, p1, :cond_7d

    const/16 p1, 0x8

    if-eq p2, p1, :cond_73

    const/16 p1, 0x10

    if-eq p2, p1, :cond_5c

    const/16 p1, 0x11

    if-ne p2, p1, :cond_43

    invoke-virtual {p0, v2}, Labcd/vL;->j6(Labcd/HM;)Labcd/rL;

    move-result-object p1

    invoke-static {p1}, Labcd/hM;->DW(Labcd/rL;)Labcd/HL;

    move-result-object p1

    return-object p1

    :cond_43
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "unknown tag "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " encountered"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5c
    iget-boolean p1, p0, Labcd/vL;->DW:Z

    if-eqz p1, :cond_6a

    new-instance p1, Labcd/LM;

    invoke-virtual {v2}, Labcd/HM;->DW()[B

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/LM;-><init>([B)V

    return-object p1

    :cond_6a
    invoke-virtual {p0, v2}, Labcd/vL;->j6(Labcd/HM;)Labcd/rL;

    move-result-object p1

    invoke-static {p1}, Labcd/hM;->j6(Labcd/rL;)Labcd/FL;

    move-result-object p1

    return-object p1

    :cond_73
    new-instance p1, Labcd/fM;

    invoke-virtual {p0, v2}, Labcd/vL;->j6(Labcd/HM;)Labcd/rL;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/fM;-><init>(Labcd/rL;)V

    return-object p1

    :cond_7d
    invoke-virtual {p0, v2}, Labcd/vL;->j6(Labcd/HM;)Labcd/rL;

    move-result-object p1

    invoke-virtual {p1}, Labcd/rL;->j6()I

    move-result p3

    new-array v0, p3, [Labcd/AL;

    :goto_87
    if-ne v1, p3, :cond_8f

    new-instance p1, Labcd/SL;

    invoke-direct {p1, v0}, Labcd/SL;-><init>([Labcd/AL;)V

    return-object p1

    :cond_8f
    invoke-virtual {p1, v1}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object p2

    check-cast p2, Labcd/AL;

    aput-object p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    :cond_9a
    iget-object p1, p0, Labcd/vL;->FH:[[B

    invoke-static {p2, v2, p1}, Labcd/vL;->j6(ILabcd/HM;[[B)Labcd/EL;

    move-result-object p1

    return-object p1
.end method

.method j6()Labcd/rL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    :goto_5
    invoke-virtual {p0}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_5
.end method

.method j6(Labcd/HM;)Labcd/rL;
    .registers 3

    new-instance v0, Labcd/vL;

    invoke-direct {v0, p1}, Labcd/vL;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Labcd/vL;->j6()Labcd/rL;

    move-result-object p1

    return-object p1
.end method
