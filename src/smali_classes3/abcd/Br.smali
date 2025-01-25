.class public final Labcd/Br;
.super Ljava/lang/Object;


# static fields
.field private static final j6:[B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Labcd/Br;->j6:[B

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_8
    if-ge v2, v0, :cond_66

    :try_start_a
    invoke-static {v2}, Labcd/oq;->j6(I)Labcd/oq$a;

    move-result-object v3

    invoke-virtual {v3}, Labcd/oq$a;->DW()Labcd/mq;

    move-result-object v4

    invoke-virtual {v3}, Labcd/oq$a;->j6()Labcd/er;

    move-result-object v3

    sget-object v5, Labcd/mq;->DW:Labcd/mq;

    if-ne v4, v5, :cond_23

    sget-object v4, Labcd/Br;->j6:[B

    invoke-static {v3}, Labcd/Br;->j6(Labcd/er;)B

    move-result v3

    aput-byte v3, v4, v2

    goto :goto_63

    :cond_23
    invoke-static {v3}, Labcd/Br;->j6(Labcd/er;)B

    move-result v3

    sget-object v5, Labcd/Ar;->j6:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v1, :cond_5a

    const/4 v6, 0x2

    if-eq v5, v6, :cond_57

    const/4 v6, 0x3

    if-eq v5, v6, :cond_54

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3d

    or-int/lit8 v3, v3, 0x40

    goto :goto_5c

    :cond_3d
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown index type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_54
    or-int/lit8 v3, v3, 0x30

    goto :goto_5c

    :cond_57
    or-int/lit8 v3, v3, 0x20

    goto :goto_5c

    :cond_5a
    or-int/lit8 v3, v3, 0x10

    :goto_5c
    int-to-byte v3, v3

    sget-object v4, Labcd/Br;->j6:[B

    aput-byte v3, v4, v2
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_61} :catch_62

    goto :goto_63

    :catch_62
    move-exception v3

    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_66
    return-void
.end method

.method private static j6(Labcd/er;)B
    .registers 3

    sget-object v0, Labcd/Ar;->DW:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-string v0, "Jumbo opcodes not supported"

    const-string v1, "Unexpected format"

    packed-switch p0, :pswitch_data_44

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown opcode format"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_17  #0x24, 0x25
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1d  #0x23
    const/4 p0, 0x5

    return p0

    :pswitch_1f  #0x22
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_25  #0x21
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2b  #0x1d, 0x1e, 0x1f, 0x20
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_31  #0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c
    const/4 p0, 0x3

    return p0

    :pswitch_33  #0x12, 0x13
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_39  #0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11
    const/4 p0, 0x2

    return p0

    :pswitch_3b  #0x2, 0x3, 0x4, 0x5, 0x6
    const/4 p0, 0x1

    return p0

    :pswitch_3d  #0x1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3d  #00000001
        :pswitch_3b  #00000002
        :pswitch_3b  #00000003
        :pswitch_3b  #00000004
        :pswitch_3b  #00000005
        :pswitch_3b  #00000006
        :pswitch_39  #00000007
        :pswitch_39  #00000008
        :pswitch_39  #00000009
        :pswitch_39  #0000000a
        :pswitch_39  #0000000b
        :pswitch_39  #0000000c
        :pswitch_39  #0000000d
        :pswitch_39  #0000000e
        :pswitch_39  #0000000f
        :pswitch_39  #00000010
        :pswitch_39  #00000011
        :pswitch_33  #00000012
        :pswitch_33  #00000013
        :pswitch_31  #00000014
        :pswitch_31  #00000015
        :pswitch_31  #00000016
        :pswitch_31  #00000017
        :pswitch_31  #00000018
        :pswitch_31  #00000019
        :pswitch_31  #0000001a
        :pswitch_31  #0000001b
        :pswitch_31  #0000001c
        :pswitch_2b  #0000001d
        :pswitch_2b  #0000001e
        :pswitch_2b  #0000001f
        :pswitch_2b  #00000020
        :pswitch_25  #00000021
        :pswitch_1f  #00000022
        :pswitch_1d  #00000023
        :pswitch_17  #00000024
        :pswitch_17  #00000025
    .end packed-switch
.end method

.method public static j6([SLabcd/yr;)V
    .registers 8

    sget-object v0, Labcd/Br;->j6:[B

    const/4 v1, 0x0

    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_d3

    aget-short v2, p0, v1

    and-int/lit16 v3, v2, 0xff

    const v4, 0xffff

    if-eqz v3, :cond_9c

    const/16 v2, 0x1b

    const-string v5, "Extended opcodes not supported"

    if-eq v3, v2, :cond_96

    const/16 v2, 0xff

    if-eq v3, v2, :cond_90

    aget-byte v2, v0, v3

    if-eqz v2, :cond_75

    const/16 v3, 0xf

    if-ge v2, v3, :cond_25

    :goto_21
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_ce

    :cond_25
    and-int/lit16 v3, v2, 0xf0

    const/16 v5, 0x10

    if-eq v3, v5, :cond_66

    const/16 v5, 0x20

    if-eq v3, v5, :cond_59

    const/16 v5, 0x30

    if-eq v3, v5, :cond_4c

    const/16 v5, 0x40

    if-ne v3, v5, :cond_44

    add-int/lit8 v3, v1, 0x1

    aget-short v5, p0, v3

    and-int/2addr v4, v5

    invoke-virtual {p1, v4}, Labcd/yr;->VH(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v3

    goto :goto_72

    :cond_44
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected mask"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    add-int/lit8 v3, v1, 0x1

    aget-short v5, p0, v3

    and-int/2addr v4, v5

    invoke-virtual {p1, v4}, Labcd/yr;->Zo(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v3

    goto :goto_72

    :cond_59
    add-int/lit8 v3, v1, 0x1

    aget-short v5, p0, v3

    and-int/2addr v4, v5

    invoke-virtual {p1, v4}, Labcd/yr;->u7(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v3

    goto :goto_72

    :cond_66
    add-int/lit8 v3, v1, 0x1

    aget-short v5, p0, v3

    and-int/2addr v4, v5

    invoke-virtual {p1, v4}, Labcd/yr;->tp(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v3

    :goto_72
    and-int/lit8 v2, v2, 0xf

    goto :goto_21

    :cond_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Opcode size not found for opcode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_90
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_96
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9c
    and-int/2addr v2, v4

    const/16 v3, 0x100

    if-eq v2, v3, :cond_c5

    const/16 v3, 0x200

    if-eq v2, v3, :cond_bb

    const/16 v3, 0x300

    if-eq v2, v3, :cond_aa

    goto :goto_cf

    :cond_aa
    add-int/lit8 v2, v1, 0x1

    aget-short v2, p0, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, v1, 0x2

    aget-short v3, p0, v3

    and-int/2addr v3, v4

    mul-int v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    goto :goto_cc

    :cond_bb
    add-int/lit8 v2, v1, 0x1

    aget-short v2, p0, v2

    and-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    :cond_c5
    add-int/lit8 v2, v1, 0x1

    aget-short v2, p0, v2

    and-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    :goto_cc
    add-int/lit8 v2, v2, 0x3

    :goto_ce
    add-int/2addr v1, v2

    :goto_cf
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_d3
    return-void
.end method
