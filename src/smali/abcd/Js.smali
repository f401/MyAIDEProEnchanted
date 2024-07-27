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
    .registers 4

    invoke-direct {p0}, Labcd/Ms;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/Js;->FH:Labcd/Pt;

    invoke-static {p1}, Labcd/Js;->j6(Labcd/Pt;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Labcd/Ms;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    new-instance v0, Labcd/Pt;

    invoke-static {p1}, Labcd/Js;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/Pt;-><init>([B)V

    iput-object v0, p0, Labcd/Js;->FH:Labcd/Pt;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(II)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad utf-8 byte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static j6(Labcd/Pt;)Ljava/lang/String;
    .registers 13

    const/4 v4, 0x0

    const/16 v11, 0x80

    const/4 v10, 0x0

    invoke-virtual {p0}, Labcd/Pt;->FH()I

    move-result v1

    new-array v5, v1, [C

    move v3, v4

    move v0, v4

    :goto_0
    if-lez v1, :cond_9

    invoke-virtual {p0, v0}, Labcd/Pt;->v5(I)I

    move-result v2

    shr-int/lit8 v6, v2, 0x4

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    invoke-static {v2, v0}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v10

    :pswitch_1
    add-int/lit8 v1, v1, -0x3

    if-ltz v1, :cond_3

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Labcd/Pt;->v5(I)I

    move-result v7

    and-int/lit16 v8, v7, 0xc0

    if-ne v8, v11, :cond_2

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Labcd/Pt;->v5(I)I

    move-result v9

    if-ne v8, v11, :cond_1

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v2, v7

    and-int/lit8 v7, v9, 0x3f

    or-int/2addr v2, v7

    const/16 v7, 0x800

    if-lt v2, v7, :cond_0

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x3

    :goto_1
    aput-char v2, v5, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-static {v9, v6}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v10

    :cond_1
    invoke-static {v9, v6}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v10

    :cond_2
    invoke-static {v7, v6}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v10

    :cond_3
    invoke-static {v2, v0}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v10

    :pswitch_2
    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_7

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Labcd/Pt;->v5(I)I

    move-result v7

    and-int/lit16 v8, v7, 0xc0

    if-ne v8, v11, :cond_6

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v8, v7, 0x3f

    or-int/2addr v2, v8

    if-eqz v2, :cond_4

    if-lt v2, v11, :cond_5

    :cond_4
    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_5
    invoke-static {v7, v6}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v10

    :cond_6
    invoke-static {v7, v6}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v10

    :cond_7
    invoke-static {v2, v0}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v10

    :pswitch_3
    add-int/lit8 v1, v1, -0x1

    if-eqz v2, :cond_8

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    invoke-static {v2, v0}, Labcd/Js;->j6(II)Ljava/lang/String;

    throw v10

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v4, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

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

.method public static j6(Ljava/lang/String;)[B
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v0, v3, 0x3

    new-array v4, v0, [B

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v5, :cond_0

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0x800

    if-ge v5, v6, :cond_1

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v6, v0, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_2
    new-array v1, v0, [B

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method protected DW(Labcd/ms;)I
    .registers 4

    iget-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    check-cast p1, Labcd/Js;

    iget-object v1, p1, Labcd/Js;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
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
    .registers 13

    const/4 v1, 0x1

    const/16 v11, 0x5c

    const/16 v10, 0x30

    const/4 v2, 0x0

    const/16 v9, 0x10

    iget-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v5, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_d

    iget-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v0, 0x20

    if-lt v7, v0, :cond_3

    const/16 v0, 0x7f

    if-ge v7, v0, :cond_3

    const/16 v0, 0x27

    if-eq v7, v0, :cond_0

    const/16 v0, 0x22

    if-eq v7, v0, :cond_0

    if-ne v7, v11, :cond_1

    :cond_0
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x7f

    if-gt v7, v0, :cond_c

    const/16 v0, 0x9

    if-eq v7, v0, :cond_b

    const/16 v0, 0xa

    if-eq v7, v0, :cond_a

    const/16 v0, 0xd

    if-eq v7, v0, :cond_9

    add-int/lit8 v0, v5, -0x1

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    if-lt v0, v10, :cond_7

    const/16 v3, 0x37

    if-gt v0, v3, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    :goto_4
    if-ltz v3, :cond_8

    shr-int v8, v7, v3

    and-int/lit8 v8, v8, 0x7

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    if-ne v8, v10, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_5
    add-int/lit8 v3, v3, -0x3

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    if-nez v0, :cond_2

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const-string v0, "\\r"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    const-string v0, "\\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_b
    const-string v0, "\\t"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_c
    const-string v0, "\\u"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v7, 0xc

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v7, 0x8

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v7, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/Js;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/Js;->DW:Ljava/lang/String;

    check-cast p1, Labcd/Js;

    iget-object v1, p1, Labcd/Js;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
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
    .registers 6

    const/16 v3, 0x22

    invoke-virtual {p0}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, p1, -0x2

    if-gt v0, v2, :cond_0

    const-string v0, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v2, p1, -0x5

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v0, "..."

    goto :goto_0
.end method

.method public lg()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
