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
    .registers 6

    const/16 v1, 0x61

    const/16 v5, 0x5c

    const/16 v4, 0x22

    const/4 v3, 0x0

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Labcd/GK$c;->Hw:[B

    sget-object v0, Labcd/GK$c;->Hw:[B

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    const/16 v0, 0x30

    :goto_0
    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    move v0, v1

    :goto_1
    const/16 v2, 0x7a

    if-le v0, v2, :cond_1

    const/16 v0, 0x41

    :goto_2
    const/16 v2, 0x5a

    if-le v0, v2, :cond_0

    sget-object v0, Labcd/GK$c;->Hw:[B

    const/16 v2, 0x20

    aput-byte v3, v0, v2

    const/16 v2, 0x24

    aput-byte v3, v0, v2

    const/16 v2, 0x25

    aput-byte v3, v0, v2

    const/16 v2, 0x26

    aput-byte v3, v0, v2

    const/16 v2, 0x2a

    aput-byte v3, v0, v2

    const/16 v2, 0x2b

    aput-byte v3, v0, v2

    const/16 v2, 0x2c

    aput-byte v3, v0, v2

    const/16 v2, 0x2d

    aput-byte v3, v0, v2

    const/16 v2, 0x2e

    aput-byte v3, v0, v2

    const/16 v2, 0x2f

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    aput-byte v3, v0, v2

    const/16 v2, 0x3b

    aput-byte v3, v0, v2

    const/16 v2, 0x3d

    aput-byte v3, v0, v2

    const/16 v2, 0x3f

    aput-byte v3, v0, v2

    const/16 v2, 0x40

    aput-byte v3, v0, v2

    const/16 v2, 0x5f

    aput-byte v3, v0, v2

    const/16 v2, 0x5e

    aput-byte v3, v0, v2

    const/16 v2, 0x7c

    aput-byte v3, v0, v2

    const/16 v2, 0x7e

    aput-byte v3, v0, v2

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

    aput-byte v5, v0, v5

    aput-byte v4, v0, v4

    return-void

    :cond_0
    sget-object v2, Labcd/GK$c;->Hw:[B

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_1
    sget-object v2, Labcd/GK$c;->Hw:[B

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    sget-object v2, Labcd/GK$c;->Hw:[B

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
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
    .registers 12

    const/4 v6, 0x0

    const/16 v8, 0x5c

    sub-int v0, p2, p1

    new-array v7, v0, [B

    move v5, p1

    move v2, v6

    :goto_0
    if-lt v5, p2, :cond_0

    move v0, v2

    :goto_1
    sget-object v1, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v1, v7, v6, v0}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v5, 0x1

    aget-byte v3, p0, v5

    if-eq v3, v8, :cond_1

    add-int/lit8 v1, v2, 0x1

    aput-byte v3, v7, v2

    :goto_2
    move v5, v0

    move v2, v1

    goto :goto_0

    :cond_1
    if-ne v0, p2, :cond_2

    add-int/lit8 v0, v2, 0x1

    aput-byte v8, v7, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p0, v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_c

    if-eq v0, v8, :cond_c

    const/16 v1, 0x66

    if-eq v0, v1, :cond_b

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_a

    const/16 v1, 0x72

    if-eq v0, v1, :cond_9

    const/16 v1, 0x74

    if-eq v0, v1, :cond_8

    const/16 v1, 0x76

    if-eq v0, v1, :cond_7

    const/16 v1, 0x61

    if-eq v0, v1, :cond_6

    const/16 v1, 0x62

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v2, 0x1

    aput-byte v8, v7, v2

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v1, v5, -0x1

    aget-byte v1, p0, v1

    aput-byte v1, v7, v0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p0, v0

    add-int/lit8 v1, v0, -0x30

    const/4 v4, 0x1

    move v3, v1

    move v0, v5

    :goto_3
    const/4 v1, 0x3

    if-ge v4, v1, :cond_3

    if-lt v0, p2, :cond_4

    :cond_3
    add-int/lit8 v1, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v7, v2

    goto :goto_2

    :cond_4
    aget-byte v1, p0, v0

    const/16 v5, 0x30

    if-gt v5, v1, :cond_3

    const/16 v5, 0x37

    if-gt v1, v5, :cond_3

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v1, -0x30

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x8

    aput-byte v1, v7, v2

    :goto_4
    move v2, v0

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, v2, 0x1

    const/4 v1, 0x7

    aput-byte v1, v7, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0xb

    aput-byte v1, v7, v2

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x9

    aput-byte v1, v7, v2

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0xd

    aput-byte v1, v7, v2

    goto :goto_4

    :cond_a
    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v2

    goto :goto_4

    :cond_b
    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0xc

    aput-byte v1, v7, v2

    goto :goto_4

    :cond_c
    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v5, -0x1

    aget-byte v1, p0, v1

    aput-byte v1, v7, v2

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/16 v9, 0x5c

    const/16 v8, 0x22

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "\"\""

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    array-length v0, v3

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    move v1, v2

    :goto_1
    array-length v5, v3

    if-lt v1, v5, :cond_2

    if-nez v0, :cond_0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    sget-object v6, Labcd/GK$c;->Hw:[B

    array-length v7, v6

    if-ge v5, v7, :cond_4

    aget-byte v6, v6, v5

    if-nez v6, :cond_3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-lez v6, :cond_4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v0, v6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v5, 0x6

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v5, 0x3

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v5, 0x0

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public j6([BII)Ljava/lang/String;
    .registers 7

    const/16 v2, 0x22

    const/4 v0, 0x2

    sub-int v1, p3, p2

    if-gt v0, v1, :cond_0

    aget-byte v0, p1, p2

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, p3, -0x1

    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x1

    invoke-static {p1, v1, v0}, Labcd/GK$c;->DW([BII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v0, p1, p2, p3}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
