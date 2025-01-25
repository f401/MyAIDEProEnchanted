.class public final Labcd/GK$c;
.super Labcd/GK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/GK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field private static final Hw:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Labcd/GK$c;->Hw:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/16 v0, 0x30

    :goto_c
    const/16 v1, 0x39

    const/4 v2, 0x0

    if-le v0, v1, :cond_ad

    const/16 v1, 0x61

    const/16 v0, 0x61

    :goto_15
    const/16 v3, 0x7a

    if-le v0, v3, :cond_a5

    const/16 v0, 0x41

    :goto_1b
    const/16 v3, 0x5a

    if-le v0, v3, :cond_9d

    sget-object v0, Labcd/GK$c;->Hw:[B

    const/16 v3, 0x20

    aput-byte v2, v0, v3

    const/16 v3, 0x24

    aput-byte v2, v0, v3

    const/16 v3, 0x25

    aput-byte v2, v0, v3

    const/16 v3, 0x26

    aput-byte v2, v0, v3

    const/16 v3, 0x2a

    aput-byte v2, v0, v3

    const/16 v3, 0x2b

    aput-byte v2, v0, v3

    const/16 v3, 0x2c

    aput-byte v2, v0, v3

    const/16 v3, 0x2d

    aput-byte v2, v0, v3

    const/16 v3, 0x2e

    aput-byte v2, v0, v3

    const/16 v3, 0x2f

    aput-byte v2, v0, v3

    const/16 v3, 0x3a

    aput-byte v2, v0, v3

    const/16 v3, 0x3b

    aput-byte v2, v0, v3

    const/16 v3, 0x3d

    aput-byte v2, v0, v3

    const/16 v3, 0x3f

    aput-byte v2, v0, v3

    const/16 v3, 0x40

    aput-byte v2, v0, v3

    const/16 v3, 0x5f

    aput-byte v2, v0, v3

    const/16 v3, 0x5e

    aput-byte v2, v0, v3

    const/16 v3, 0x7c

    aput-byte v2, v0, v3

    const/16 v3, 0x7e

    aput-byte v2, v0, v3

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    aput-byte v1, v0, v1

    const/16 v1, 0x22

    aput-byte v1, v0, v1

    return-void

    :cond_9d
    sget-object v3, Labcd/GK$c;->Hw:[B

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b

    :cond_a5
    sget-object v3, Labcd/GK$c;->Hw:[B

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15

    :cond_ad
    sget-object v1, Labcd/GK$c;->Hw:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/GK;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/GK$c;)V
    .registers 2

    invoke-direct {p0}, Labcd/GK$c;-><init>()V

    return-void
.end method

.method private static DW([BII)Ljava/lang/String;
    .registers 11

    sub-int v0, p2, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-lt p1, p2, :cond_9

    goto :goto_1f

    :cond_9
    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    const/16 v4, 0x5c

    if-eq p1, v4, :cond_18

    add-int/lit8 v4, v2, 0x1

    aput-byte p1, v0, v2

    move p1, v3

    :goto_16
    move v2, v4

    goto :goto_6

    :cond_18
    if-ne v3, p2, :cond_26

    add-int/lit8 p0, v2, 0x1

    aput-byte v4, v0, v2

    move v2, p0

    :goto_1f
    sget-object p0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, v1, v2}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    add-int/lit8 p1, v3, 0x1

    aget-byte v3, p0, v3

    const/16 v5, 0x22

    if-eq v3, v5, :cond_b2

    if-eq v3, v4, :cond_b2

    const/16 v5, 0x66

    if-eq v3, v5, :cond_ab

    const/16 v5, 0x6e

    if-eq v3, v5, :cond_a4

    const/16 v5, 0x72

    if-eq v3, v5, :cond_9d

    const/16 v5, 0x74

    if-eq v3, v5, :cond_96

    const/16 v5, 0x76

    if-eq v3, v5, :cond_8f

    const/16 v5, 0x61

    if-eq v3, v5, :cond_89

    const/16 v5, 0x62

    if-eq v3, v5, :cond_82

    packed-switch v3, :pswitch_data_be

    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v4, p1, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v0, v3

    goto :goto_6

    :pswitch_5c  #0x30, 0x31, 0x32, 0x33
    add-int/lit8 v3, p1, -0x1

    aget-byte v3, p0, v3

    const/16 v4, 0x30

    sub-int/2addr v3, v4

    const/4 v5, 0x1

    :goto_64
    const/4 v6, 0x3

    if-ge v5, v6, :cond_7c

    if-lt p1, p2, :cond_6a

    goto :goto_7c

    :cond_6a
    aget-byte v6, p0, p1

    if-gt v4, v6, :cond_7c

    const/16 v7, 0x37

    if-gt v6, v7, :cond_7c

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 v6, v6, -0x30

    or-int/2addr v3, v6

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    :cond_7c
    :goto_7c
    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    goto :goto_16

    :cond_82
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x8

    aput-byte v4, v0, v2

    goto :goto_ba

    :cond_89
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x7

    aput-byte v4, v0, v2

    goto :goto_ba

    :cond_8f
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xb

    aput-byte v4, v0, v2

    goto :goto_ba

    :cond_96
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x9

    aput-byte v4, v0, v2

    goto :goto_ba

    :cond_9d
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xd

    aput-byte v4, v0, v2

    goto :goto_ba

    :cond_a4
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xa

    aput-byte v4, v0, v2

    goto :goto_ba

    :cond_ab
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xc

    aput-byte v4, v0, v2

    goto :goto_ba

    :cond_b2
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, p1, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v0, v2

    :goto_ba
    move v2, v3

    goto/16 :goto_6

    nop

    :pswitch_data_be
    .packed-switch 0x30
        :pswitch_5c  #00000030
        :pswitch_5c  #00000031
        :pswitch_5c  #00000032
        :pswitch_5c  #00000033
    .end packed-switch
.end method


# virtual methods
.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    const-string p1, "\"\""

    return-object p1

    :cond_9
    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1d
    array-length v6, v0

    if-lt v5, v6, :cond_2b

    if-eqz v3, :cond_23

    return-object p1

    :cond_23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2b
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Labcd/GK$c;->Hw:[B

    array-length v8, v7

    const/16 v9, 0x5c

    if-ge v6, v8, :cond_46

    aget-byte v7, v7, v6

    if-nez v7, :cond_3f

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_68

    :cond_3f
    if-lez v7, :cond_46

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v3, v7

    goto :goto_64

    :cond_46
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v3, v6, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v3, v6, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v3, v6, 0x0

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    :goto_64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d
.end method

.method public j6([BII)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x2

    sub-int v1, p3, p2

    if-gt v0, v1, :cond_18

    aget-byte v0, p1, p2

    const/16 v1, 0x22

    if-ne v0, v1, :cond_18

    add-int/lit8 v0, p3, -0x1

    aget-byte v2, p1, v0

    if-ne v2, v1, :cond_18

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2, v0}, Labcd/GK$c;->DW([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v0, p1, p2, p3}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
