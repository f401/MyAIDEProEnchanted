.class final enum Lcom/google/common/math/LongMath$MillerRabinTester$2;
.super Lcom/google/common/math/LongMath$MillerRabinTester;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath$MillerRabinTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 1086
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/math/LongMath$MillerRabinTester;-><init>(Ljava/lang/String;ILcom/google/common/math/LongMath$1;)V

    return-void
.end method

.method private plusMod(JJJ)J
    .registers 12

    .line 1089
    add-long v0, p1, p3

    sub-long v2, p5, p3

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    sub-long/2addr v0, p5

    :cond_0
    return-wide v0
.end method

.method private times2ToThe32Mod(JJ)J
    .registers 10

    .line 1094
    const/16 v0, 0x20

    .line 1096
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1099
    shl-long v2, p1, v1

    invoke-static {v2, v3, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide p1

    .line 1100
    sub-int/2addr v0, v1

    .line 1101
    if-gtz v0, :cond_0

    .line 1102
    return-wide p1
.end method


# virtual methods
.method mulMod(JJJ)J
    .registers 20

    .line 1107
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    .line 1108
    const/16 v4, 0x20

    ushr-long v4, p3, v4

    .line 1109
    const-wide v6, 0xffffffffL

    and-long/2addr v6, p1

    .line 1110
    const-wide v8, 0xffffffffL

    and-long v8, v8, p3

    .line 1120
    mul-long v10, v2, v4

    move-wide/from16 v0, p5

    invoke-direct {p0, v10, v11, v0, v1}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v10

    .line 1121
    mul-long/2addr v2, v8

    add-long/2addr v2, v10

    .line 1122
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-gez v10, :cond_0

    .line 1123
    move-wide/from16 v0, p5

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v2

    .line 1126
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->signum(J)I

    .line 1127
    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    move-wide/from16 v0, p5

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v4

    .line 1128
    mul-long v2, v6, v8

    move-wide/from16 v0, p5

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v6

    move-object v3, p0

    move-wide/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide v2

    return-wide v2
.end method

.method squareMod(JJ)J
    .registers 14

    .line 1133
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    .line 1134
    const-wide v2, 0xffffffffL

    and-long v4, p1, v2

    .line 1143
    mul-long v2, v0, v0

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v2

    .line 1144
    mul-long/2addr v0, v4

    const-wide/16 v6, 0x2

    mul-long/2addr v0, v6

    .line 1145
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    .line 1146
    invoke-static {v0, v1, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v0

    .line 1145
    :cond_0
    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v2

    .line 1151
    mul-long v0, v4, v4

    invoke-static {v0, v1, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v4

    move-object v1, p0

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
