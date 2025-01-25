.class public final enum Lorg/apache/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "JavaVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_14:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_15:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_16:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_17:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_9:Lorg/apache/commons/lang3/JavaVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 33
    new-instance v1, Lorg/apache/commons/lang3/JavaVersion;

    const-string v2, "JAVA_0_9"

    const/4 v3, 0x0

    const/high16 v4, 0x3fc00000  # 1.5f

    const-string v5, "0.9"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 38
    new-instance v2, Lorg/apache/commons/lang3/JavaVersion;

    const-string v3, "JAVA_1_1"

    const/4 v4, 0x1

    const v5, 0x3f8ccccd  # 1.1f

    const-string v6, "1.1"

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

    .line 43
    new-instance v3, Lorg/apache/commons/lang3/JavaVersion;

    const-string v4, "JAVA_1_2"

    const/4 v5, 0x2

    const v6, 0x3f99999a  # 1.2f

    const-string v7, "1.2"

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

    .line 48
    new-instance v4, Lorg/apache/commons/lang3/JavaVersion;

    const-string v5, "JAVA_1_3"

    const/4 v6, 0x3

    const v7, 0x3fa66666  # 1.3f

    const-string v8, "1.3"

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

    .line 53
    new-instance v5, Lorg/apache/commons/lang3/JavaVersion;

    const-string v6, "JAVA_1_4"

    const/4 v7, 0x4

    const v8, 0x3fb33333  # 1.4f

    const-string v9, "1.4"

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

    .line 58
    new-instance v6, Lorg/apache/commons/lang3/JavaVersion;

    const-string v7, "JAVA_1_5"

    const/4 v8, 0x5

    const/high16 v9, 0x3fc00000  # 1.5f

    const-string v10, "1.5"

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v6, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

    .line 63
    new-instance v7, Lorg/apache/commons/lang3/JavaVersion;

    const-string v8, "JAVA_1_6"

    const/4 v9, 0x6

    const v10, 0x3fcccccd  # 1.6f

    const-string v11, "1.6"

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v7, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

    .line 68
    new-instance v8, Lorg/apache/commons/lang3/JavaVersion;

    const-string v9, "JAVA_1_7"

    const/4 v10, 0x7

    const v11, 0x3fd9999a  # 1.7f

    const-string v12, "1.7"

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v8, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

    .line 73
    new-instance v9, Lorg/apache/commons/lang3/JavaVersion;

    const-string v10, "JAVA_1_8"

    const/16 v11, 0x8

    const v12, 0x3fe66666  # 1.8f

    const-string v13, "1.8"

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v9, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

    .line 80
    new-instance v10, Lorg/apache/commons/lang3/JavaVersion;

    const-string v11, "JAVA_1_9"

    const/16 v12, 0x9

    const/high16 v13, 0x41100000  # 9.0f

    const-string v14, "9"

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v10, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 88
    new-instance v11, Lorg/apache/commons/lang3/JavaVersion;

    const-string v12, "JAVA_9"

    const/16 v13, 0xa

    const/high16 v14, 0x41100000  # 9.0f

    const-string v15, "9"

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v11, Lorg/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 95
    new-instance v12, Lorg/apache/commons/lang3/JavaVersion;

    const-string v13, "JAVA_10"

    const/16 v14, 0xb

    const/high16 v15, 0x41200000  # 10.0f

    const-string v16, "10"

    invoke-direct/range {v12 .. v16}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v12, Lorg/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

    .line 102
    new-instance v13, Lorg/apache/commons/lang3/JavaVersion;

    const-string v14, "JAVA_11"

    const/16 v15, 0xc

    const/high16 v16, 0x41300000  # 11.0f

    const-string v17, "11"

    invoke-direct/range {v13 .. v17}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v13, Lorg/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

    .line 109
    new-instance v14, Lorg/apache/commons/lang3/JavaVersion;

    const-string v15, "JAVA_12"

    const/16 v16, 0xd

    const/high16 v17, 0x41400000  # 12.0f

    const-string v18, "12"

    invoke-direct/range {v14 .. v18}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v14, Lorg/apache/commons/lang3/JavaVersion;->JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

    .line 116
    new-instance v15, Lorg/apache/commons/lang3/JavaVersion;

    const-string v16, "JAVA_13"

    const/16 v17, 0xe

    const/high16 v18, 0x41500000  # 13.0f

    const-string v19, "13"

    invoke-direct/range {v15 .. v19}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v15, Lorg/apache/commons/lang3/JavaVersion;->JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

    .line 123
    new-instance v16, Lorg/apache/commons/lang3/JavaVersion;

    const-string v17, "JAVA_14"

    const/16 v18, 0xf

    const/high16 v19, 0x41600000  # 14.0f

    const-string v20, "14"

    invoke-direct/range {v16 .. v20}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v16, Lorg/apache/commons/lang3/JavaVersion;->JAVA_14:Lorg/apache/commons/lang3/JavaVersion;

    .line 130
    new-instance v17, Lorg/apache/commons/lang3/JavaVersion;

    const-string v18, "JAVA_15"

    const/16 v19, 0x10

    const/high16 v20, 0x41700000  # 15.0f

    const-string v21, "15"

    invoke-direct/range {v17 .. v21}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v17, Lorg/apache/commons/lang3/JavaVersion;->JAVA_15:Lorg/apache/commons/lang3/JavaVersion;

    .line 137
    new-instance v18, Lorg/apache/commons/lang3/JavaVersion;

    const-string v19, "JAVA_16"

    const/16 v20, 0x11

    const/high16 v21, 0x41800000  # 16.0f

    const-string v22, "16"

    invoke-direct/range {v18 .. v22}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v18, Lorg/apache/commons/lang3/JavaVersion;->JAVA_16:Lorg/apache/commons/lang3/JavaVersion;

    .line 144
    new-instance v19, Lorg/apache/commons/lang3/JavaVersion;

    const-string v20, "JAVA_17"

    const/16 v21, 0x12

    const/high16 v22, 0x41880000  # 17.0f

    const-string v23, "17"

    invoke-direct/range {v19 .. v23}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v19, Lorg/apache/commons/lang3/JavaVersion;->JAVA_17:Lorg/apache/commons/lang3/JavaVersion;

    .line 149
    new-instance v20, Lorg/apache/commons/lang3/JavaVersion;

    const-string v21, "JAVA_RECENT"

    const/16 v22, 0x13

    invoke-static {}, Lorg/apache/commons/lang3/JavaVersion;->maxVersion()F

    move-result v23

    invoke-static {}, Lorg/apache/commons/lang3/JavaVersion;->maxVersion()F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v20 .. v24}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v20, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    .line 28
    const/16 v21, 0x14

    move/from16 v0, v21

    new-array v0, v0, [Lorg/apache/commons/lang3/JavaVersion;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v1, v21, v22

    const/4 v1, 0x1

    aput-object v2, v21, v1

    const/4 v1, 0x2

    aput-object v3, v21, v1

    const/4 v1, 0x3

    aput-object v4, v21, v1

    const/4 v1, 0x4

    aput-object v5, v21, v1

    const/4 v1, 0x5

    aput-object v6, v21, v1

    const/4 v1, 0x6

    aput-object v7, v21, v1

    const/4 v1, 0x7

    aput-object v8, v21, v1

    const/16 v1, 0x8

    aput-object v9, v21, v1

    const/16 v1, 0x9

    aput-object v10, v21, v1

    const/16 v1, 0xa

    aput-object v11, v21, v1

    const/16 v1, 0xb

    aput-object v12, v21, v1

    const/16 v1, 0xc

    aput-object v13, v21, v1

    const/16 v1, 0xd

    aput-object v14, v21, v1

    const/16 v1, 0xe

    aput-object v15, v21, v1

    const/16 v1, 0xf

    aput-object v16, v21, v1

    const/16 v1, 0x10

    aput-object v17, v21, v1

    const/16 v1, 0x11

    aput-object v18, v21, v1

    const/16 v1, 0x12

    aput-object v19, v21, v1

    const/16 v1, 0x13

    aput-object v20, v21, v1

    sput-object v21, Lorg/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/commons/lang3/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 168
    iput p3, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    .line 169
    iput-object p4, p0, Lorg/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    .line 170
    return-void
.end method

.method static get(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .registers 9

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    const/16 v4, 0x2c

    const/4 v0, 0x0

    .line 225
    if-nez p0, :cond_8

    .line 274
    :cond_7
    :goto_7
    return-object v0

    .line 228
    :cond_8
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_16a

    :cond_10
    :goto_10
    packed-switch v1, :pswitch_data_1b4

    .line 266
    invoke-static {p0}, Lorg/apache/commons/lang3/JavaVersion;->toFloatVersion(Ljava/lang/String;)F

    move-result v1

    .line 267
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v6

    cmpg-double v2, v2, v6

    if-gez v2, :cond_160

    .line 268
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 270
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const v2, 0x3f666666  # 0.9f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 271
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    goto :goto_7

    .line 228
    :sswitch_4e
    const-string v2, "1.8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v1, 0x8

    goto :goto_10

    :sswitch_59
    const-string v2, "1.7"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x7

    goto :goto_10

    :sswitch_63
    const-string v2, "1.6"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x6

    goto :goto_10

    :sswitch_6d
    const-string v2, "1.5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x5

    goto :goto_10

    :sswitch_77
    const-string v2, "1.4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x4

    goto :goto_10

    :sswitch_81
    const-string v2, "1.3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x3

    goto :goto_10

    :sswitch_8b
    const-string v2, "1.2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x2

    goto/16 :goto_10

    :sswitch_96
    const-string v2, "1.1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    goto/16 :goto_10

    :sswitch_a1
    const-string v2, "0.9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x0

    goto/16 :goto_10

    :sswitch_ac
    const-string v2, "17"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v1, 0x11

    goto/16 :goto_10

    :sswitch_b8
    const-string v2, "16"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v1, 0x10

    goto/16 :goto_10

    :sswitch_c4
    const-string v2, "15"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v1, 0xf

    goto/16 :goto_10

    :sswitch_d0
    const-string v2, "14"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v1, 0xe

    goto/16 :goto_10

    :sswitch_dc
    const-string v2, "13"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v1, 0xd

    goto/16 :goto_10

    :sswitch_e8
    const-string v2, "12"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v1, 0xc

    goto/16 :goto_10

    :sswitch_f4
    const-string v2, "11"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v1, 0xb

    goto/16 :goto_10

    :sswitch_100
    const-string v2, "10"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v1, 0xa

    goto/16 :goto_10

    :sswitch_10c
    const-string v2, "9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v1, 0x9

    goto/16 :goto_10

    .line 264
    :pswitch_118  #0x11
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_17:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 262
    :pswitch_11c  #0x10
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_16:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 260
    :pswitch_120  #0xf
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_15:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 258
    :pswitch_124  #0xe
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_14:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 256
    :pswitch_128  #0xd
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 254
    :pswitch_12c  #0xc
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 252
    :pswitch_130  #0xb
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 250
    :pswitch_134  #0xa
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 248
    :pswitch_138  #0x9
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 246
    :pswitch_13c  #0x8
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 244
    :pswitch_140  #0x7
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 242
    :pswitch_144  #0x6
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 240
    :pswitch_148  #0x5
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 238
    :pswitch_14c  #0x4
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 236
    :pswitch_150  #0x3
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 234
    :pswitch_154  #0x2
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 232
    :pswitch_158  #0x1
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 230
    :pswitch_15c  #0x0
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 273
    :cond_160
    const/high16 v2, 0x41200000  # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 274
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_7

    .line 228
    :sswitch_data_16a
    .sparse-switch
        0x39 -> :sswitch_10c
        0x61f -> :sswitch_100
        0x620 -> :sswitch_f4
        0x621 -> :sswitch_e8
        0x622 -> :sswitch_dc
        0x623 -> :sswitch_d0
        0x624 -> :sswitch_c4
        0x625 -> :sswitch_b8
        0x626 -> :sswitch_ac
        0xb9fb -> :sswitch_a1
        0xbdb4 -> :sswitch_96
        0xbdb5 -> :sswitch_8b
        0xbdb6 -> :sswitch_81
        0xbdb7 -> :sswitch_77
        0xbdb8 -> :sswitch_6d
        0xbdb9 -> :sswitch_63
        0xbdba -> :sswitch_59
        0xbdbb -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_15c  #00000000
        :pswitch_158  #00000001
        :pswitch_154  #00000002
        :pswitch_150  #00000003
        :pswitch_14c  #00000004
        :pswitch_148  #00000005
        :pswitch_144  #00000006
        :pswitch_140  #00000007
        :pswitch_13c  #00000008
        :pswitch_138  #00000009
        :pswitch_134  #0000000a
        :pswitch_130  #0000000b
        :pswitch_12c  #0000000c
        :pswitch_128  #0000000d
        :pswitch_124  #0000000e
        :pswitch_120  #0000000f
        :pswitch_11c  #00000010
        :pswitch_118  #00000011
    .end packed-switch
.end method

.method static getJavaVersion(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .registers 2

    .line 212
    invoke-static {p0}, Lorg/apache/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;

    move-result-object v0

    return-object v0
.end method

.method private static maxVersion()F
    .registers 2

    .line 299
    const-string v0, "java.specification.version"

    const-string v1, "99.0"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/JavaVersion;->toFloatVersion(Ljava/lang/String;)F

    move-result v0

    .line 300
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_12

    .line 303
    :goto_11
    return v0

    :cond_12
    const/high16 v0, 0x42c60000  # 99.0f

    goto :goto_11
.end method

.method private static toFloatVersion(Ljava/lang/String;)F
    .registers 5

    const/high16 v0, -0x40800000  # -1.0f

    .line 313
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 315
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 316
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_32

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    .line 320
    :cond_32
    :goto_32
    return v0

    :cond_33
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_32
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .registers 2

    .line 28
    const-class v0, Lorg/apache/commons/lang3/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/JavaVersion;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/lang3/JavaVersion;
    .registers 1

    .line 28
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/commons/lang3/JavaVersion;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public atLeast(Lorg/apache/commons/lang3/JavaVersion;)Z
    .registers 4

    .line 183
    iget v0, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lorg/apache/commons/lang3/JavaVersion;->value:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public atMost(Lorg/apache/commons/lang3/JavaVersion;)Z
    .registers 4

    .line 198
    iget v0, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lorg/apache/commons/lang3/JavaVersion;->value:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Lorg/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-object v0
.end method
