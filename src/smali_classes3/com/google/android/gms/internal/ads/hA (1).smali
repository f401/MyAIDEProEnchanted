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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->tp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->EQ:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->we:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->J0:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->J8:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/hA;->Ws:[B

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->QX:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/hA;->XL:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->aM:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->j3:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->Mr:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->U2:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->a8:I

    const/high16 v1, -0x40800000  # -1.0f

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

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->SI:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->KD:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->ro:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/hA;->cn:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/hA;->sh:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/hA;->dx:Z

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

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->EQ()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const v2, 0xfffe

    if-ne v0, v2, :cond_33

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/eA;->DW()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_33

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/eA;->DW()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4
    :try_end_2e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2e} :catch_35

    cmp-long p0, v2, v4

    if-nez p0, :cond_33

    return v1

    :cond_33
    const/4 p0, 0x0

    return p0

    :catch_35
    move-exception p0

    new-instance p0, Lcom/google/android/gms/internal/ads/My;

    const-string v0, "Error parsing MS/ACM codec private"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/hA;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hA;->sG:Ljava/lang/String;

    return-object p1
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/LD;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/LD;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0x10

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->J0()J

    move-result-wide v0

    const-wide/32 v2, 0x31435657

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    const/4 p0, 0x0

    return-object p0

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    :goto_1a
    array-length v1, p0
    :try_end_1b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_1b} :catch_4d

    add-int/lit8 v1, v1, -0x4

    if-ge v0, v1, :cond_45

    aget-byte v1, p0, v0

    if-nez v1, :cond_42

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_42

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p0, v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_42

    :try_start_38
    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_45
    new-instance p0, Lcom/google/android/gms/internal/ads/My;

    const-string v0, "Failed to find FourCC VC1 initialization data"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_38 .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception p0

    new-instance p0, Lcom/google/android/gms/internal/ads/My;

    const-string v0, "Error parsing FourCC VC1 codec private"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    goto :goto_57

    :goto_56
    throw p0

    :goto_57
    goto :goto_56
.end method

.method private static j6([B)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const-string v2, "Error parsing vorbis codec private"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5f

    const/4 v1, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_b
    aget-byte v6, p0, v4

    const/4 v7, -0x1

    if-ne v6, v7, :cond_15

    add-int/lit16 v5, v5, 0xff

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_15
    add-int/2addr v4, v1

    add-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_18
    aget-byte v8, p0, v4

    if-ne v8, v7, :cond_21

    add-int/lit16 v6, v6, 0xff

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_21
    add-int/2addr v4, v1

    aget-byte v7, p0, v4

    if-ne v7, v1, :cond_59

    :try_start_26
    new-array v1, v5, [B

    invoke-static {p0, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_26 .. :try_end_2b} :catch_65

    add-int/2addr v4, v5

    aget-byte v5, p0, v4

    const/4 v7, 0x3

    if-ne v5, v7, :cond_53

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    aget-byte v5, p0, v4

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4d

    :try_start_38
    array-length v5, p0

    sub-int/2addr v5, v4

    new-array v5, v5, [B

    array-length v6, p0

    sub-int/2addr v6, v4

    invoke-static {p0, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_4d
    new-instance p0, Lcom/google/android/gms/internal/ads/My;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_53
    new-instance p0, Lcom/google/android/gms/internal/ads/My;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    new-instance p0, Lcom/google/android/gms/internal/ads/My;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    new-instance p0, Lcom/google/android/gms/internal/ads/My;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_65
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_38 .. :try_end_65} :catch_65

    :catch_65
    move-exception p0

    new-instance p0, Lcom/google/android/gms/internal/ads/My;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    goto :goto_6d

    :goto_6c
    throw p0

    :goto_6d
    goto :goto_6c
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Rz;I)V
    .registers 44

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->j6:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x3

    sparse-switch v2, :sswitch_data_4c2

    goto/16 :goto_153

    :sswitch_14
    const-string v2, "A_OPUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xb

    goto/16 :goto_154

    :sswitch_20
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x15

    goto/16 :goto_154

    :sswitch_2c
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x10

    goto/16 :goto_154

    :sswitch_38
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x2

    goto/16 :goto_154

    :sswitch_43
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x18

    goto/16 :goto_154

    :sswitch_4f
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x7

    goto/16 :goto_154

    :sswitch_5a
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x17

    goto/16 :goto_154

    :sswitch_66
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x13

    goto/16 :goto_154

    :sswitch_72
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x9

    goto/16 :goto_154

    :sswitch_7e
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x1a

    goto/16 :goto_154

    :sswitch_8a
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x1

    goto/16 :goto_154

    :sswitch_95
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x0

    goto/16 :goto_154

    :sswitch_a0
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x12

    goto/16 :goto_154

    :sswitch_ac
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xf

    goto/16 :goto_154

    :sswitch_b8
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xc

    goto/16 :goto_154

    :sswitch_c4
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x14

    goto/16 :goto_154

    :sswitch_d0
    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x19

    goto/16 :goto_154

    :sswitch_dc
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x6

    goto/16 :goto_154

    :sswitch_e7
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x4

    goto/16 :goto_154

    :sswitch_f2
    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x1b

    goto :goto_154

    :sswitch_fd
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x8

    goto :goto_154

    :sswitch_108
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xe

    goto :goto_154

    :sswitch_113
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xd

    goto :goto_154

    :sswitch_11e
    const-string v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0xa

    goto :goto_154

    :sswitch_129
    const-string v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x11

    goto :goto_154

    :sswitch_134
    const-string v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/16 v1, 0x16

    goto :goto_154

    :sswitch_13f
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x3

    goto :goto_154

    :sswitch_149
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    const/4 v1, 0x5

    goto :goto_154

    :cond_153
    :goto_153
    const/4 v1, -0x1

    :goto_154
    const-string v2, ". Setting mimeType to "

    const-string v11, "Unsupported PCM bit depth: "

    const-string v12, "application/dvbsubs"

    const-string v13, "application/pgs"

    const-string v14, "application/vobsub"

    const-string v15, "application/x-subrip"

    const-string v16, "video/x-unknown"

    const-string v3, "MatroskaExtractor"

    const/16 v17, 0x0

    const-string v9, "audio/x-unknown"

    packed-switch v1, :pswitch_data_534

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    const-string v2, "Unrecognized codec identifier."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_173  #0x1b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    new-array v2, v4, [B

    aget-byte v3, v1, v8

    aput-byte v3, v2, v8

    aget-byte v3, v1, v6

    aput-byte v3, v2, v6

    aget-byte v3, v1, v7

    aput-byte v3, v2, v7

    aget-byte v1, v1, v10

    aput-byte v1, v2, v10

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v12

    goto/16 :goto_2f0

    :pswitch_18f  #0x1a
    move-object/from16 v16, v13

    goto/16 :goto_2ee

    :pswitch_193  #0x19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v14

    goto/16 :goto_2f0

    :pswitch_19d  #0x18
    move-object/from16 v16, v15

    goto/16 :goto_2ee

    :pswitch_1a1  #0x17
    iget v1, v0, Lcom/google/android/gms/internal/ads/hA;->KD:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(I)I

    move-result v1

    if-nez v1, :cond_1ed

    iget v1, v0, Lcom/google/android/gms/internal/ads/hA;->KD:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1b6
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1c6
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20c

    :pswitch_1ca  #0x16
    new-instance v1, Lcom/google/android/gms/internal/ads/LD;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/hA;->DW(Lcom/google/android/gms/internal/ads/LD;)Z

    move-result v1

    if-eqz v1, :cond_1f7

    iget v1, v0, Lcom/google/android/gms/internal/ads/hA;->KD:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/TD;->j6(I)I

    move-result v1

    if-nez v1, :cond_1ed

    iget v1, v0, Lcom/google/android/gms/internal/ads/hA;->KD:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1b6

    :cond_1ed
    const-string v2, "audio/raw"

    move/from16 v25, v1

    move-object/from16 v1, v17

    const/16 v30, -0x1

    goto/16 :goto_2f7

    :cond_1f7
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_204

    const-string v1, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c6

    :cond_204
    new-instance v1, Ljava/lang/String;

    const-string v2, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c6

    :goto_20c
    move-object/from16 v16, v9

    goto/16 :goto_2ee

    :pswitch_210  #0x15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "audio/x-flac"

    goto :goto_243

    :pswitch_219  #0x14
    const-string v1, "audio/vnd.dts.hd"

    goto/16 :goto_2ec

    :pswitch_21d  #0x12, 0x13
    const-string v1, "audio/vnd.dts"

    goto/16 :goto_2ec

    :pswitch_221  #0x11
    const-string v1, "audio/true-hd"

    goto/16 :goto_2ec

    :pswitch_225  #0x10
    const-string v1, "audio/eac3"

    goto/16 :goto_2ec

    :pswitch_229  #0xf
    const-string v1, "audio/ac3"

    goto/16 :goto_2ec

    :pswitch_22d  #0xe
    const-string v1, "audio/mpeg"

    goto :goto_232

    :pswitch_230  #0xd
    const-string v1, "audio/mpeg-L2"

    :goto_232
    const/16 v2, 0x1000

    move-object v2, v1

    move-object/from16 v1, v17

    const/16 v3, 0x1000

    goto/16 :goto_2f3

    :pswitch_23b  #0xc
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "audio/mp4a-latm"

    :goto_243
    move-object/from16 v16, v2

    goto/16 :goto_2f0

    :pswitch_247  #0xb
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/hA;->cn:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/hA;->sh:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "audio/opus"

    const/16 v3, 0x1680

    goto/16 :goto_2f3

    :pswitch_289  #0xa
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/hA;->j6([B)Ljava/util/List;

    move-result-object v1

    const-string v2, "audio/vorbis"

    const/16 v3, 0x2000

    goto :goto_2f3

    :pswitch_294  #0x8
    new-instance v1, Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/hA;->j6(Lcom/google/android/gms/internal/ads/LD;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2a4

    const-string v2, "video/wvc1"

    goto :goto_243

    :cond_2a4
    const-string v2, "Unsupported FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f0

    :pswitch_2aa  #0x7
    new-instance v1, Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/_D;->j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/_D;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/_D;->j6:Ljava/util/List;

    iget v1, v1, Lcom/google/android/gms/internal/ads/_D;->DW:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->Sf:I

    const-string v1, "video/hevc"

    goto :goto_2d1

    :pswitch_2be  #0x6
    new-instance v1, Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/WD;->j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/WD;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/WD;->j6:Ljava/util/List;

    iget v1, v1, Lcom/google/android/gms/internal/ads/WD;->DW:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/hA;->Sf:I

    const-string v1, "video/avc"

    :goto_2d1
    move-object/from16 v16, v1

    move-object v1, v2

    goto :goto_2f0

    :pswitch_2d5  #0x3, 0x4, 0x5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->gn:[B

    if-nez v1, :cond_2dc

    move-object/from16 v1, v17

    goto :goto_2e0

    :cond_2dc
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_2e0
    const-string v2, "video/mp4v-es"

    goto/16 :goto_243

    :pswitch_2e4  #0x2
    const-string v1, "video/mpeg2"

    goto :goto_2ec

    :pswitch_2e7  #0x1
    const-string v1, "video/x-vnd.on2.vp9"

    goto :goto_2ec

    :pswitch_2ea  #0x0
    const-string v1, "video/x-vnd.on2.vp8"

    :goto_2ec
    move-object/from16 v16, v1

    :goto_2ee
    :pswitch_2ee  #0x9
    move-object/from16 v1, v17

    :goto_2f0
    move-object/from16 v2, v16

    const/4 v3, -0x1

    :goto_2f3
    move/from16 v30, v3

    const/16 v25, -0x1

    :goto_2f7
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/hA;->dx:Z

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/hA;->cb:Z

    if-eqz v4, :cond_2ff

    const/4 v4, 0x2

    goto :goto_300

    :cond_2ff
    const/4 v4, 0x0

    :goto_300
    or-int/2addr v3, v8

    or-int/2addr v3, v4

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32e

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, -0x1

    iget v4, v0, Lcom/google/android/gms/internal/ads/hA;->SI:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->ro:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/hA;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/hA;->sG:Ljava/lang/String;

    move-object/from16 v19, v2

    move/from16 v22, v30

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v26, v1

    move-object/from16 v27, v7

    move/from16 v28, v3

    move-object/from16 v29, v8

    invoke-static/range {v18 .. v29}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v1

    goto/16 :goto_4b4

    :cond_32e
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_460

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->J8:I

    if-nez v3, :cond_34a

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->we:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_33f

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->tp:I

    :cond_33f
    iput v3, v0, Lcom/google/android/gms/internal/ads/hA;->we:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->J0:I

    if-ne v3, v4, :cond_347

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->EQ:I

    :cond_347
    iput v3, v0, Lcom/google/android/gms/internal/ads/hA;->J0:I

    goto :goto_34b

    :cond_34a
    const/4 v4, -0x1

    :goto_34b
    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->we:I

    const/high16 v5, -0x40800000  # -1.0f

    if-eq v3, v4, :cond_363

    iget v6, v0, Lcom/google/android/gms/internal/ads/hA;->J0:I

    if-eq v6, v4, :cond_363

    iget v4, v0, Lcom/google/android/gms/internal/ads/hA;->EQ:I

    mul-int v4, v4, v3

    int-to-float v3, v4

    iget v4, v0, Lcom/google/android/gms/internal/ads/hA;->tp:I

    mul-int v4, v4, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    move/from16 v36, v3

    goto :goto_365

    :cond_363
    const/high16 v36, -0x40800000  # -1.0f

    :goto_365
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/hA;->XL:Z

    if-eqz v3, :cond_434

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->lg:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_424

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->rN:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_424

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->er:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_424

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->yS:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_424

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->gW:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_424

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->BT:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_424

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->vy:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_424

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->P8:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_424

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->ei:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_424

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->nw:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3a7

    goto/16 :goto_424

    :cond_3a7
    const/16 v3, 0x19

    new-array v3, v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->lg:F

    const v6, 0x47435000  # 50000.0f

    mul-float v5, v5, v6

    const/high16 v8, 0x3f000000  # 0.5f

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->rN:F

    mul-float v5, v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->er:F

    mul-float v5, v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->yS:F

    mul-float v5, v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->gW:F

    mul-float v5, v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->BT:F

    mul-float v5, v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->vy:F

    mul-float v5, v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->P8:F

    mul-float v5, v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->ei:F

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->nw:F

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->U2:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->a8:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_426

    :cond_424
    :goto_424
    move-object/from16 v3, v17

    :goto_426
    new-instance v4, Lcom/google/android/gms/internal/ads/zzqi;

    iget v5, v0, Lcom/google/android/gms/internal/ads/hA;->aM:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/hA;->Mr:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/hA;->j3:I

    invoke-direct {v4, v5, v6, v8, v3}, Lcom/google/android/gms/internal/ads/zzqi;-><init>(III[B)V

    move-object/from16 v39, v4

    goto :goto_436

    :cond_434
    move-object/from16 v39, v17

    :goto_436
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, -0x1

    iget v3, v0, Lcom/google/android/gms/internal/ads/hA;->tp:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/hA;->EQ:I

    const/high16 v33, -0x40800000  # -1.0f

    const/16 v35, -0x1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/hA;->Ws:[B

    iget v6, v0, Lcom/google/android/gms/internal/ads/hA;->QX:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/hA;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v27, v2

    move/from16 v31, v3

    move/from16 v32, v4

    move-object/from16 v34, v1

    move-object/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v40, v8

    invoke-static/range {v26 .. v40}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzqi;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v1

    const/4 v6, 0x2

    goto :goto_4b4

    :cond_460
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_480

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, -0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hA;->sG:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hA;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v19, v2

    move/from16 v22, v3

    move-object/from16 v23, v1

    move-object/from16 v24, v4

    invoke-static/range {v18 .. v24}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v1

    :goto_47e
    const/4 v6, 0x3

    goto :goto_4b4

    :cond_480
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49b

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49b

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_493

    goto :goto_49b

    :cond_493
    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    const-string v2, "Unexpected MIME type."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49b
    :goto_49b
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, -0x1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hA;->sG:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hA;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v19, v2

    move-object/from16 v22, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    invoke-static/range {v18 .. v24}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v1

    goto :goto_47e

    :goto_4b4
    iget v2, v0, Lcom/google/android/gms/internal/ads/hA;->DW:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v6}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/hA;->ef:Lcom/google/android/gms/internal/ads/Yz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    return-void

    :sswitch_data_4c2
    .sparse-switch
        -0x7ce7f5de -> :sswitch_149
        -0x7ce7f3b0 -> :sswitch_13f
        -0x76567dc0 -> :sswitch_134
        -0x6a615338 -> :sswitch_129
        -0x672350af -> :sswitch_11e
        -0x585f4fce -> :sswitch_113
        -0x585f4fcd -> :sswitch_108
        -0x51dc40b2 -> :sswitch_fd
        -0x37a9c464 -> :sswitch_f2
        -0x2016c535 -> :sswitch_e7
        -0x2016c4e5 -> :sswitch_dc
        -0x19552dbd -> :sswitch_d0
        -0x1538b2ba -> :sswitch_c4
        0x3c02325 -> :sswitch_b8
        0x3c02353 -> :sswitch_ac
        0x3c030c5 -> :sswitch_a0
        0x4e86155 -> :sswitch_95
        0x4e86156 -> :sswitch_8a
        0x5e8da3e -> :sswitch_7e
        0x1a8350d6 -> :sswitch_72
        0x2056f406 -> :sswitch_66
        0x2b453ce4 -> :sswitch_5a
        0x32fdf009 -> :sswitch_4f
        0x54c61e47 -> :sswitch_43
        0x6bd6c624 -> :sswitch_38
        0x7446132a -> :sswitch_2c
        0x7446b0a6 -> :sswitch_20
        0x744ad97d -> :sswitch_14
    .end sparse-switch

    :pswitch_data_534
    .packed-switch 0x0
        :pswitch_2ea  #00000000
        :pswitch_2e7  #00000001
        :pswitch_2e4  #00000002
        :pswitch_2d5  #00000003
        :pswitch_2d5  #00000004
        :pswitch_2d5  #00000005
        :pswitch_2be  #00000006
        :pswitch_2aa  #00000007
        :pswitch_294  #00000008
        :pswitch_2ee  #00000009
        :pswitch_289  #0000000a
        :pswitch_247  #0000000b
        :pswitch_23b  #0000000c
        :pswitch_230  #0000000d
        :pswitch_22d  #0000000e
        :pswitch_229  #0000000f
        :pswitch_225  #00000010
        :pswitch_221  #00000011
        :pswitch_21d  #00000012
        :pswitch_21d  #00000013
        :pswitch_219  #00000014
        :pswitch_210  #00000015
        :pswitch_1ca  #00000016
        :pswitch_1a1  #00000017
        :pswitch_19d  #00000018
        :pswitch_193  #00000019
        :pswitch_18f  #0000001a
        :pswitch_173  #0000001b
    .end packed-switch
.end method
