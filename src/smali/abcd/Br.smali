.class public final Labcd/Br;
.super Ljava/lang/Object;


# static fields
.field private static final j6:[B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0xff

    const/4 v2, 0x1

    new-array v0, v6, [B

    sput-object v0, Labcd/Br;->j6:[B

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_5

    :try_start_0
    invoke-static {v1}, Labcd/oq;->j6(I)Labcd/oq$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/oq$a;->DW()Labcd/mq;

    move-result-object v3

    invoke-virtual {v0}, Labcd/oq$a;->j6()Labcd/er;

    move-result-object v0

    sget-object v4, Labcd/mq;->DW:Labcd/mq;

    if-ne v3, v4, :cond_0

    sget-object v3, Labcd/Br;->j6:[B

    invoke-static {v0}, Labcd/Br;->j6(Labcd/er;)B

    move-result v0

    aput-byte v0, v3, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Labcd/Br;->j6(Labcd/er;)B

    move-result v0

    sget-object v4, Labcd/Ar;->j6:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    or-int/lit8 v0, v0, 0x40

    :goto_2
    int-to-byte v0, v0

    sget-object v3, Labcd/Br;->j6:[B

    aput-byte v0, v3, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown index type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    or-int/lit8 v0, v0, 0x30

    goto :goto_2

    :cond_3
    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_4
    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_5
    return-void
.end method

.method private static j6(Labcd/er;)B
    .registers 3

    sget-object v0, Labcd/Ar;->DW:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown opcode format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Jumbo opcodes not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x5

    :goto_0
    return v0

    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Jumbo opcodes not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static j6([SLabcd/yr;)V
    .registers 8

    const v5, 0xffff

    sget-object v2, Labcd/Br;->j6:[B

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_c

    aget-short v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_9

    const/16 v3, 0x1b

    if-eq v1, v3, :cond_8

    const/16 v3, 0xff

    if-eq v1, v3, :cond_7

    aget-byte v3, v2, v1

    if-eqz v3, :cond_6

    const/16 v1, 0xf

    if-ge v3, v1, :cond_1

    add-int/lit8 v1, v3, -0x1

    add-int/2addr v0, v1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v3, 0xf0

    const/16 v4, 0x10

    if-eq v1, v4, :cond_5

    const/16 v4, 0x20

    if-eq v1, v4, :cond_4

    const/16 v4, 0x30

    if-eq v1, v4, :cond_3

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-short v4, p0, v1

    and-int/2addr v4, v5

    invoke-virtual {p1, v4}, Labcd/yr;->VH(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v1

    :goto_2
    and-int/lit8 v1, v3, 0xf

    add-int/lit8 v1, v1, -0x1

    :goto_3
    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected mask"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    aget-short v4, p0, v1

    and-int/2addr v4, v5

    invoke-virtual {p1, v4}, Labcd/yr;->Zo(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget-short v4, p0, v1

    and-int/2addr v4, v5

    invoke-virtual {p1, v4}, Labcd/yr;->u7(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v0, 0x1

    aget-short v4, p0, v1

    and-int/2addr v4, v5

    invoke-virtual {p1, v4}, Labcd/yr;->tp(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opcode size not found for opcode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Extended opcodes not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Extended opcodes not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    aget-short v1, p0, v0

    and-int/2addr v1, v5

    const/16 v3, 0x100

    if-eq v1, v3, :cond_b

    const/16 v3, 0x200

    if-eq v1, v3, :cond_a

    const/16 v3, 0x300

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-short v1, p0, v1

    and-int/2addr v1, v5

    add-int/lit8 v3, v0, 0x2

    aget-short v3, p0, v3

    and-int/2addr v3, v5

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    :goto_4
    add-int/lit8 v1, v1, 0x3

    goto :goto_3

    :cond_a
    add-int/lit8 v1, v0, 0x1

    aget-short v1, p0, v1

    and-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v1, v0, 0x1

    aget-short v1, p0, v1

    and-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_c
    return-void
.end method
