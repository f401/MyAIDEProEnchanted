.class final Lcom/google/android/gms/internal/ads/hA;
.super Ljava/lang/Object;


# instance fields
.field public BT:F

.field public DW:I

.field public EQ:I

.field public FH:I

.field public Hw:I

.field public J0:I

.field public J8:I

.field public KD:I

.field public Mr:I

.field public P8:F

.field public QX:I

.field public SI:I

.field public Sf:I

.field public U2:I

.field public VH:Lcom/google/android/gms/internal/ads/Zz;

.field public Ws:[B

.field public XL:Z

.field public Zo:[B

.field public a8:I

.field public aM:I

.field public cb:Z

.field public cn:J

.field public dx:Z

.field public ef:Lcom/google/android/gms/internal/ads/Yz;

.field public ei:F

.field public er:F

.field public gW:F

.field public gn:[B

.field public j3:I

.field public j6:Ljava/lang/String;

.field public lg:F

.field public nw:F

.field public rN:F

.field public ro:I

.field private sG:Ljava/lang/String;

.field public sh:J

.field public tp:I

.field public u7:Lcom/google/android/gms/internal/ads/zzhp;

.field public v5:Z

.field public vy:F

.field public we:I

.field public yS:F


# direct methods
.method private constructor <init>()V
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/internal/ads/hA;->tp:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/hA;->EQ:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/hA;->we:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/hA;->J0:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/hA;->J8:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hA;->Ws:[B

    iput v2, p0, Lcom/google/android/gms/internal/ads/hA;->QX:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/hA;->XL:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/hA;->aM:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/hA;->j3:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/hA;->Mr:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->U2:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->a8:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->lg:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->rN:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->er:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->yS:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->gW:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->BT:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->vy:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->P8:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->ei:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->nw:F

    iput v4, p0, Lcom/google/android/gms/internal/ads/hA;->SI:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/hA;->KD:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->ro:I

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/hA;->cn:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/hA;->sh:J

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/hA;->dx:Z

    const-string v0, "eng"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hA;->sG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fA;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hA;-><init>()V

    return-void
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/LD;)Z
    .registers 7

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->EQ()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v2, 0xfffe

    if-ne v1, v2, :cond_2

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/eA;->DW()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/eA;->DW()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Error parsing MS/ACM codec private"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/hA;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hA;->sG:Ljava/lang/String;

    return-object p1
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/LD;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/LD;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->J0()J

    move-result-wide v0

    const-wide/32 v2, 0x31435657

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    :goto_1
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_2

    aget-byte v2, v1, v0

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    :try_start_1
    array-length v2, v1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Error parsing FourCC VC1 codec private"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6([B)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    aget-byte v0, p0, v1

    if-ne v0, v2, :cond_5

    move v0, v1

    move v2, v3

    :goto_0
    aget-byte v4, p0, v2

    if-ne v4, v5, :cond_0

    add-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    add-int/2addr v2, v0

    move v0, v4

    :goto_1
    aget-byte v4, p0, v0

    if-ne v4, v5, :cond_1

    add-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p0, v0

    aget-byte v5, p0, v4

    if-ne v5, v3, :cond_4

    :try_start_0
    new-array v3, v2, [B

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v4

    aget-byte v4, p0, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    aget-byte v1, p0, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :try_start_1
    array-length v1, p0

    sub-int/2addr v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v4, p0

    sub-int/2addr v4, v0

    invoke-static {p0, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Rz;I)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v11, 0x3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lcom/google/android/gms/internal/ads/My;

    const-string v3, "Unrecognized codec identifier."

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    const-string v3, "A_OPUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_0

    :sswitch_1
    const-string v3, "A_FLAC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto :goto_0

    :sswitch_2
    const-string v3, "A_EAC3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto :goto_0

    :sswitch_3
    const-string v3, "V_MPEG2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto :goto_0

    :sswitch_5
    const-string v3, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_6
    const-string v3, "A_PCM/INT/LIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :sswitch_7
    const-string v3, "A_DTS/EXPRESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto :goto_0

    :sswitch_8
    const-string v3, "V_THEORA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_9
    const-string v3, "S_HDMV/PGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    goto :goto_0

    :sswitch_a
    const-string v3, "V_VP9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "V_VP8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "A_DTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "A_AC3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "A_AAC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "A_DTS/LOSSLESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "S_VOBSUB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "V_MPEG4/ISO/AVC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "V_MPEG4/ISO/ASP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "S_DVBSUB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_14
    const-string v3, "V_MS/VFW/FOURCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "A_MPEG/L3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "A_MPEG/L2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_17
    const-string v3, "A_VORBIS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_18
    const-string v3, "A_TRUEHD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_19
    const-string v3, "A_MS/ACM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_1a
    const-string v3, "V_MPEG4/ISO/SP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_0

    :sswitch_1b
    const-string v3, "V_MPEG4/ISO/AP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v2, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v2, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v2, v2, v5

    aput-byte v2, v3, v4

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v2, "application/dvbsubs"

    :goto_1
    const/4 v5, -0x1

    move-object v4, v3

    :goto_2
    const/4 v9, -0x1

    move-object v3, v2

    move-object v10, v4

    move v6, v5

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/hA;->dx:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/hA;->cb:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    :goto_4
    or-int/lit8 v4, v4, 0x0

    or-int v12, v4, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/ads/hA;->SI:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/hA;->ro:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/hA;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/hA;->sG:Ljava/lang/String;

    invoke-static/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/hA;->DW:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/hA;->ef:Lcom/google/android/gms/internal/ads/Yz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hA;->ef:Lcom/google/android/gms/internal/ads/Yz;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    return-void

    :pswitch_1
    const-string v2, "application/pgs"

    :goto_6
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v2, "application/vobsub"

    goto :goto_1

    :pswitch_3
    const-string v2, "application/x-subrip"

    goto :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->KD:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/TD;->j6(I)I

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->KD:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "audio/x-unknown"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unsupported PCM bit depth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Setting mimeType to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "audio/x-unknown"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MatroskaExtractor"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    const-string v2, "audio/x-unknown"

    goto :goto_6

    :cond_1
    const-string v3, "audio/raw"

    const/4 v10, 0x0

    const/4 v6, -0x1

    move v9, v2

    goto/16 :goto_3

    :pswitch_5
    new-instance v2, Lcom/google/android/gms/internal/ads/LD;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/hA;->DW(Lcom/google/android/gms/internal/ads/LD;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->KD:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/TD;->j6(I)I

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->KD:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "audio/x-unknown"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unsupported PCM bit depth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Setting mimeType to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "audio/x-unknown"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MatroskaExtractor"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_2
    const-string v2, "audio/x-unknown"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    const-string v3, "audio/x-unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    const-string v3, "MatroskaExtractor"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_3
    new-instance v2, Ljava/lang/String;

    const-string v3, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v2, "audio/x-flac"

    goto/16 :goto_1

    :pswitch_7
    const-string v2, "audio/vnd.dts.hd"

    goto/16 :goto_6

    :pswitch_8
    const-string v2, "audio/vnd.dts"

    goto/16 :goto_6

    :pswitch_9
    const-string v2, "audio/true-hd"

    goto/16 :goto_6

    :pswitch_a
    const-string v2, "audio/eac3"

    goto/16 :goto_6

    :pswitch_b
    const-string v2, "audio/ac3"

    goto/16 :goto_6

    :pswitch_c
    const-string v2, "audio/mpeg"

    :goto_9
    const/4 v3, 0x0

    const/16 v5, 0x1000

    move-object v4, v3

    goto/16 :goto_2

    :pswitch_d
    const-string v2, "audio/mpeg-L2"

    goto :goto_9

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v2, "audio/mp4a-latm"

    goto/16 :goto_1

    :pswitch_f
    new-instance v3, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/hA;->cn:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/hA;->sh:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "audio/opus"

    const/16 v5, 0x1680

    move-object v4, v3

    goto/16 :goto_2

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/hA;->j6([B)Ljava/util/List;

    move-result-object v3

    const-string v2, "audio/vorbis"

    const/16 v5, 0x2000

    move-object v4, v3

    goto/16 :goto_2

    :pswitch_11
    const-string v2, "video/x-unknown"

    goto/16 :goto_6

    :pswitch_12
    new-instance v2, Lcom/google/android/gms/internal/ads/LD;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/hA;->j6(Lcom/google/android/gms/internal/ads/LD;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v2, "video/wvc1"

    goto/16 :goto_1

    :cond_4
    const-string v2, "MatroskaExtractor"

    const-string v4, "Unsupported FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "video/x-unknown"

    goto/16 :goto_1

    :pswitch_13
    new-instance v2, Lcom/google/android/gms/internal/ads/LD;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/_D;->j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/_D;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/_D;->j6:Ljava/util/List;

    iget v2, v2, Lcom/google/android/gms/internal/ads/_D;->DW:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/hA;->Sf:I

    const-string v2, "video/hevc"

    goto/16 :goto_1

    :pswitch_14
    new-instance v2, Lcom/google/android/gms/internal/ads/LD;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/WD;->j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/WD;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/WD;->j6:Ljava/util/List;

    iget v2, v2, Lcom/google/android/gms/internal/ads/WD;->DW:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/hA;->Sf:I

    const-string v2, "video/avc"

    goto/16 :goto_1

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    if-nez v2, :cond_5

    const/4 v3, 0x0

    :goto_a
    const-string v2, "video/mp4v-es"

    goto/16 :goto_1

    :cond_5
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_a

    :pswitch_16
    const-string v2, "video/mpeg2"

    goto/16 :goto_6

    :pswitch_17
    const-string v2, "video/x-vnd.on2.vp9"

    goto/16 :goto_6

    :pswitch_18
    const-string v2, "video/x-vnd.on2.vp8"

    goto/16 :goto_6

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->J8:I

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->we:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->tp:I

    :cond_8
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/hA;->we:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->J0:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->EQ:I

    :cond_9
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/hA;->J0:I

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->we:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/hA;->J0:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->EQ:I

    mul-int/2addr v2, v5

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->tp:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float v12, v2, v4

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/hA;->XL:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->lg:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->rN:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->er:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->yS:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->gW:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->BT:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->vy:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->P8:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->ei:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->nw:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_c

    move-object v2, v7

    :goto_c
    new-instance v15, Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/hA;->aM:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->Mr:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/ads/hA;->j3:I

    invoke-direct {v15, v4, v5, v7, v2}, Lcom/google/android/gms/internal/ads/zzqi;-><init>(III[B)V

    :goto_d
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/ads/hA;->tp:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/hA;->EQ:I

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/hA;->Ws:[B

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/internal/ads/hA;->QX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hA;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v16, v0

    invoke-static/range {v2 .. v16}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzqi;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    const/4 v3, 0x2

    goto/16 :goto_5

    :cond_b
    const/high16 v12, -0x40800000    # -1.0f

    goto/16 :goto_b

    :cond_c
    const/16 v2, 0x19

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->lg:F

    const v7, 0x47435000    # 50000.0f

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->rN:F

    const v7, 0x47435000    # 50000.0f

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->er:F

    const v7, 0x47435000    # 50000.0f

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->yS:F

    const v7, 0x47435000    # 50000.0f

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->gW:F

    const v7, 0x47435000    # 50000.0f

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->BT:F

    const v7, 0x47435000    # 50000.0f

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->vy:F

    const v7, 0x47435000    # 50000.0f

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->P8:F

    const v7, 0x47435000    # 50000.0f

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->ei:F

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->nw:F

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->U2:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->a8:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_c

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_e
    const-string v2, "application/x-subrip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/hA;->sG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/hA;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move v6, v12

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    move v3, v11

    goto/16 :goto_5

    :cond_f
    const-string v2, "application/vobsub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "application/pgs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "application/dvbsubs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/hA;->sG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/hA;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object v6, v10

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    move v3, v11

    goto/16 :goto_5

    :cond_11
    new-instance v2, Lcom/google/android/gms/internal/ads/My;

    const-string v3, "Unexpected MIME type."

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    move-object v2, v7

    goto/16 :goto_c

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1b
        -0x7ce7f3b0 -> :sswitch_1a
        -0x76567dc0 -> :sswitch_19
        -0x6a615338 -> :sswitch_18
        -0x672350af -> :sswitch_17
        -0x585f4fce -> :sswitch_16
        -0x585f4fcd -> :sswitch_15
        -0x51dc40b2 -> :sswitch_14
        -0x37a9c464 -> :sswitch_13
        -0x2016c535 -> :sswitch_12
        -0x2016c4e5 -> :sswitch_11
        -0x19552dbd -> :sswitch_10
        -0x1538b2ba -> :sswitch_f
        0x3c02325 -> :sswitch_e
        0x3c02353 -> :sswitch_d
        0x3c030c5 -> :sswitch_c
        0x4e86155 -> :sswitch_b
        0x4e86156 -> :sswitch_a
        0x5e8da3e -> :sswitch_9
        0x1a8350d6 -> :sswitch_8
        0x2056f406 -> :sswitch_7
        0x2b453ce4 -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
