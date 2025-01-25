.class public final Labcd/Js;
.super Labcd/Ms;


# static fields
.field public static final j6:Labcd/Js;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Labcd/Pt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/Js;

    const-string v1, ""

    invoke-direct {v0, v1}, Labcd/Js;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/Js;->j6:Labcd/Js;

    return-void
.end method

.method public constructor <init>(Labcd/Pt;)V
    .registers 3

    invoke-direct {p0}, Labcd/Ms;-><init>()V

    if-eqz p1, :cond_12

    iput-object p1, p0, Labcd/Js;->FH:Labcd/Pt;

    invoke-static {p1}, Labcd/Js;->j6(Labcd/Pt;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/Js;->DW:Ljava/lang/String;

    return-void

    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "bytes == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Labcd/Ms;-><init>()V

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    new-instance v0, Labcd/Pt;

    invoke-static {p1}, Labcd/Js;->j6(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/Pt;-><init>([B)V

    iput-object v0, p0, Labcd/Js;->FH:Labcd/Pt;

    return-void

    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static j6(II)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad utf-8 byte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at offset "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j6(Labcd/Pt;)Ljava/lang/String;
    .registers 13

    invoke-virtual {p0}, Labcd/Pt;->FH()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-lez v0, :cond_92

    invoke-virtual {p0, v4}, Labcd/Pt;->v5(I)I

    move-result v5

    shr-int/lit8 v6, v5, 0x4

    const/16 v7, 0x80

    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_98

    :pswitch_17  #0x8, 0x9, 0xa, 0xb
    invoke-static {v5, v4}, Labcd/Js;->j6(II)Ljava/lang/String;

    goto/16 :goto_91

    :pswitch_1c  #0xe
    add-int/lit8 v0, v0, -0x3

    if-ltz v0, :cond_52

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Labcd/Pt;->v5(I)I

    move-result v9

    and-int/lit16 v10, v9, 0xc0

    if-ne v10, v7, :cond_4e

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {p0, v6}, Labcd/Pt;->v5(I)I

    move-result v11

    if-ne v10, v7, :cond_4a

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v7, v9, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v5, v7

    and-int/lit8 v7, v11, 0x3f

    or-int/2addr v5, v7

    const/16 v7, 0x800

    if-lt v5, v7, :cond_46

    int-to-char v5, v5

    add-int/lit8 v4, v4, 0x3

    goto :goto_87

    :cond_46
    invoke-static {v11, v6}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v8

    :cond_4a
    invoke-static {v11, v6}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v8

    :cond_4e
    invoke-static {v9, v6}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v8

    :cond_52
    invoke-static {v5, v4}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v8

    :pswitch_56  #0xc, 0xd
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_7c

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Labcd/Pt;->v5(I)I

    move-result v9

    and-int/lit16 v10, v9, 0xc0

    if-ne v10, v7, :cond_78

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v10, v9, 0x3f

    or-int/2addr v5, v10

    if-eqz v5, :cond_74

    if-lt v5, v7, :cond_70

    goto :goto_74

    :cond_70
    invoke-static {v9, v6}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v8

    :cond_74
    :goto_74
    int-to-char v5, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_87

    :cond_78
    invoke-static {v9, v6}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v8

    :cond_7c
    invoke-static {v5, v4}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v8

    :pswitch_80  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    add-int/lit8 v0, v0, -0x1

    if-eqz v5, :cond_8d

    int-to-char v5, v5

    add-int/lit8 v4, v4, 0x1

    :goto_87
    aput-char v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    :cond_8d
    invoke-static {v5, v4}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v8

    :goto_91
    throw v8

    :cond_92
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_80  #00000000
        :pswitch_80  #00000001
        :pswitch_80  #00000002
        :pswitch_80  #00000003
        :pswitch_80  #00000004
        :pswitch_80  #00000005
        :pswitch_80  #00000006
        :pswitch_80  #00000007
        :pswitch_17  #00000008
        :pswitch_17  #00000009
        :pswitch_17  #0000000a
        :pswitch_17  #0000000b
        :pswitch_56  #0000000c
        :pswitch_56  #0000000d
        :pswitch_1c  #0000000e
    .end packed-switch
.end method

.method public static j6(Ljava/lang/String;)[B
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, v0, :cond_55

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-eqz v5, :cond_1d

    if-ge v5, v6, :cond_1d

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_1d
    const/16 v7, 0x800

    if-ge v5, v7, :cond_35

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    add-int/lit8 v7, v4, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    add-int/lit8 v4, v4, 0x2

    goto :goto_52

    :cond_35
    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    add-int/lit8 v7, v4, 0x2

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    add-int/lit8 v4, v4, 0x3

    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_55
    new-array p0, v4, [B

    invoke-static {v1, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method


# virtual methods
.method protected DW(Labcd/ms;)I
    .registers 3

    iget-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    check-cast p1, Labcd/Js;

    iget-object p1, p1, Labcd/Js;->DW:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public J8()I
    .registers 2

    iget-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public VH()Labcd/Pt;
    .registers 2

    iget-object v0, p0, Labcd/Js;->FH:Labcd/Pt;

    return-object v0
.end method

.method public Ws()I
    .registers 2

    iget-object v0, p0, Labcd/Js;->FH:Labcd/Pt;

    invoke-virtual {v0}, Labcd/Pt;->FH()I

    move-result v0

    return v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "utf8"

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 11

    iget-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v0, :cond_b6

    iget-object v4, p0, Labcd/Js;->DW:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    const/16 v6, 0x7f

    const/16 v7, 0x5c

    if-lt v4, v5, :cond_32

    if-ge v4, v6, :cond_32

    const/16 v5, 0x27

    if-eq v4, v5, :cond_2d

    const/16 v5, 0x22

    if-eq v4, v5, :cond_2d

    if-ne v4, v7, :cond_af

    :cond_2d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_af

    :cond_32
    if-gt v4, v6, :cond_83

    const/16 v5, 0x9

    if-eq v4, v5, :cond_7d

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7a

    const/16 v5, 0xd

    if-eq v4, v5, :cond_77

    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_4d

    iget-object v5, p0, Labcd/Js;->DW:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_4e

    :cond_4d
    const/4 v5, 0x0

    :goto_4e
    const/16 v6, 0x30

    const/4 v8, 0x1

    if-lt v5, v6, :cond_59

    const/16 v9, 0x37

    if-gt v5, v9, :cond_59

    const/4 v5, 0x1

    goto :goto_5a

    :cond_59
    const/4 v5, 0x0

    :goto_5a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    :goto_5e
    if-ltz v7, :cond_71

    shr-int v9, v4, v7

    and-int/lit8 v9, v9, 0x7

    add-int/2addr v9, v6

    int-to-char v9, v9

    if-ne v9, v6, :cond_6a

    if-eqz v5, :cond_6e

    :cond_6a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :cond_6e
    add-int/lit8 v7, v7, -0x3

    goto :goto_5e

    :cond_71
    if-nez v5, :cond_b2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b2

    :cond_77
    const-string v4, "\\r"

    goto :goto_7f

    :cond_7a
    const-string v4, "\\n"

    goto :goto_7f

    :cond_7d
    const-string v4, "\\t"

    :goto_7f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    :cond_83
    const-string v5, "\\u"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v4, 0xc

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v4, 0x8

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    :cond_af
    :goto_af
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b2
    :goto_b2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    :cond_b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/Js;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    check-cast p1, Labcd/Js;

    iget-object p1, p1, Labcd/Js;->DW:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getType()Labcd/Qs;
    .registers 2

    sget-object v0, Labcd/Qs;->aM:Labcd/Qs;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(I)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p1, -0x2

    if-gt v1, v2, :cond_f

    const-string p1, ""

    goto :goto_18

    :cond_f
    add-int/lit8 p1, p1, -0x5

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string p1, "..."

    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public lg()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "string{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public we()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    return-object v0
.end method
