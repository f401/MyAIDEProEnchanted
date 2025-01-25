.class final Lcom/google/common/hash/FarmHashFingerprint64;
.super Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.source "FarmHashFingerprint64.java"


# static fields
.field static final FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

.field private static final K0:J = -0x3c5a37a36834ced9L

.field private static final K1:J = -0x4b6d499041670d8dL

.field private static final K2:J = -0x651e95c4d06fbfb1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/google/common/hash/FarmHashFingerprint64;

    invoke-direct {v0}, Lcom/google/common/hash/FarmHashFingerprint64;-><init>()V

    sput-object v0, Lcom/google/common/hash/FarmHashFingerprint64;->FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;-><init>()V

    return-void
.end method

.method static fingerprint([BII)J
    .registers 5

    .line 69
    const/16 v0, 0x20

    if-gt p2, v0, :cond_12

    .line 70
    const/16 v0, 0x10

    if-gt p2, v0, :cond_d

    .line 71
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength0to16([BII)J

    move-result-wide v0

    .line 78
    :goto_c
    return-wide v0

    .line 73
    :cond_d
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength17to32([BII)J

    move-result-wide v0

    goto :goto_c

    .line 75
    :cond_12
    const/16 v0, 0x40

    if-gt p2, v0, :cond_1b

    .line 76
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength33To64([BII)J

    move-result-wide v0

    goto :goto_c

    .line 78
    :cond_1b
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength65Plus([BII)J

    move-result-wide v0

    goto :goto_c
.end method

.method private static hashLength0to16([BII)J
    .registers 15

    const-wide v10, 0x651e95c4d06fbfb1L  # 1.2393855117460178E179

    const-wide v8, 0xffffffffL

    const-wide v0, -0x651e95c4d06fbfb1L  # -3.35749372464804E-179

    .line 118
    const/16 v2, 0x8

    if-lt p2, v2, :cond_3a

    .line 119
    mul-int/lit8 v2, p2, 0x2

    int-to-long v2, v2

    sub-long v4, v2, v10

    .line 120
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 121
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x8

    invoke-static {p0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    .line 122
    const/16 v6, 0x25

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    .line 123
    const/16 v8, 0x19

    invoke-static {v0, v1, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    .line 124
    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    add-long/2addr v2, v8

    mul-long/2addr v2, v4

    invoke-static/range {v0 .. v5}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    .line 139
    :cond_39
    :goto_39
    return-wide v0

    .line 126
    :cond_3a
    const/4 v2, 0x4

    if-lt p2, v2, :cond_5a

    .line 127
    mul-int/lit8 v0, p2, 0x2

    int-to-long v4, v0

    .line 128
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    move-result v0

    int-to-long v0, v0

    .line 129
    int-to-long v2, p2

    and-long/2addr v0, v8

    const/4 v6, 0x3

    shl-long/2addr v0, v6

    add-long/2addr v0, v2

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x4

    invoke-static {p0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    sub-long/2addr v4, v10

    invoke-static/range {v0 .. v5}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    goto :goto_39

    .line 131
    :cond_5a
    if-lez p2, :cond_39

    .line 132
    aget-byte v2, p0, p1

    .line 133
    shr-int/lit8 v3, p2, 0x1

    add-int/2addr v3, p1

    aget-byte v3, p0, v3

    .line 134
    add-int/lit8 v4, p2, -0x1

    add-int/2addr v4, p1

    aget-byte v4, p0, v4

    .line 135
    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    int-to-long v4, v4

    const-wide v6, -0x3c5a37a36834ced9L  # -7.8480313857871552E17

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v2

    mul-long/2addr v0, v2

    goto :goto_39
.end method

.method private static hashLength16(JJJ)J
    .registers 12

    const/16 v4, 0x2f

    .line 87
    xor-long v0, p0, p2

    mul-long/2addr v0, p4

    .line 88
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    xor-long/2addr v0, p2

    mul-long/2addr v0, p4

    .line 90
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    mul-long/2addr v0, p4

    return-wide v0
.end method

.method private static hashLength17to32([BII)J
    .registers 21

    .line 143
    mul-int/lit8 v2, p2, 0x2

    int-to-long v2, v2

    const-wide v4, 0x651e95c4d06fbfb1L  # 1.2393855117460178E179

    sub-long v6, v2, v4

    .line 144
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    const-wide v4, -0x4b6d499041670d8dL  # -1.9079014105469082E-55

    mul-long/2addr v4, v2

    .line 145
    add-int/lit8 v2, p1, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    .line 146
    add-int v8, p1, p2

    add-int/lit8 v8, v8, -0x8

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v8

    mul-long/2addr v8, v6

    .line 147
    add-int v10, p1, p2

    add-int/lit8 v10, v10, -0x10

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v10

    .line 148
    add-long v12, v4, v2

    const/16 v14, 0x2b

    invoke-static {v12, v13, v14}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    const/16 v14, 0x1e

    invoke-static {v8, v9, v14}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v14

    const-wide v16, -0x651e95c4d06fbfb1L  # -3.35749372464804E-179

    add-long v2, v2, v16

    const/16 v16, 0x12

    move/from16 v0, v16

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v16

    add-long v2, v12, v14

    const-wide v12, -0x651e95c4d06fbfb1L  # -3.35749372464804E-179

    mul-long/2addr v10, v12

    add-long/2addr v2, v10

    add-long v4, v4, v16

    add-long/2addr v4, v8

    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private static hashLength33To64([BII)J
    .registers 23

    .line 153
    mul-int/lit8 v2, p2, 0x2

    int-to-long v2, v2

    const-wide v4, 0x651e95c4d06fbfb1L  # 1.2393855117460178E179

    sub-long v6, v2, v4

    .line 154
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    const-wide v4, -0x651e95c4d06fbfb1L  # -3.35749372464804E-179

    mul-long v8, v2, v4

    .line 155
    add-int/lit8 v2, p1, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    .line 156
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x8

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    mul-long v10, v2, v6

    .line 157
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    .line 158
    add-long v12, v8, v4

    const/16 v14, 0x2b

    invoke-static {v12, v13, v14}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    const/16 v14, 0x1e

    invoke-static {v10, v11, v14}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v14

    add-long/2addr v12, v14

    const-wide v14, -0x651e95c4d06fbfb1L  # -3.35749372464804E-179

    mul-long/2addr v2, v14

    add-long/2addr v2, v12

    .line 159
    const-wide v12, -0x651e95c4d06fbfb1L  # -3.35749372464804E-179

    add-long/2addr v4, v12

    const/16 v12, 0x12

    invoke-static {v4, v5, v12}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v4, v8

    add-long/2addr v4, v10

    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v4

    .line 160
    add-int/lit8 v10, p1, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v10

    mul-long/2addr v10, v6

    .line 161
    add-int/lit8 v12, p1, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v12

    .line 162
    add-int v14, p1, p2

    add-int/lit8 v14, v14, -0x20

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v14

    add-long/2addr v2, v14

    mul-long v14, v2, v6

    .line 163
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x18

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    .line 164
    add-long v16, v10, v12

    const/16 v18, 0x2b

    invoke-static/range {v16 .. v18}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v16

    const/16 v18, 0x1e

    move/from16 v0, v18

    invoke-static {v14, v15, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v18

    add-long/2addr v8, v12

    const/16 v12, 0x12

    invoke-static {v8, v9, v12}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    add-long v12, v16, v18

    add-long/2addr v2, v4

    mul-long/2addr v2, v6

    add-long/2addr v2, v12

    add-long v4, v10, v8

    add-long/2addr v4, v14

    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private static hashLength65Plus([BII)J
    .registers 29

    .line 172
    const-wide v4, 0x226bb95b4e64b6d4L  # 7.104748899679321E-143

    .line 177
    const-wide v2, 0x226bb95b4e64b6d4L  # 7.104748899679321E-143

    const-wide v6, -0x651e95c4d06fbfb1L  # -3.35749372464804E-179

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x71

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v2

    .line 178
    const/4 v6, 0x2

    new-array v8, v6, [J

    .line 179
    const/4 v6, 0x2

    new-array v0, v6, [J

    move-object/from16 v16, v0

    .line 180
    const-wide v6, -0x651e95c4d06fbfb1L  # -3.35749372464804E-179

    const-wide/16 v10, 0x51

    mul-long/2addr v6, v10

    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 183
    add-int/lit8 v9, p2, -0x1

    div-int/lit8 v9, v9, 0x40

    mul-int/lit8 v9, v9, 0x40

    add-int v9, v9, p1

    .line 184
    add-int/lit8 v10, p2, -0x1

    and-int/lit8 v10, v10, 0x3f

    add-int/2addr v10, v9

    add-int/lit8 v17, v10, -0x3f

    const-wide v10, -0x651e95c4d06fbfb1L  # -3.35749372464804E-179

    mul-long/2addr v10, v2

    move/from16 v3, p1

    .line 186
    :goto_43
    add-long/2addr v6, v4

    const/4 v2, 0x0

    aget-wide v12, v8, v2

    add-long/2addr v6, v12

    add-int/lit8 v2, v3, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v12

    add-long/2addr v6, v12

    const/16 v2, 0x25

    invoke-static {v6, v7, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    .line 187
    const/4 v2, 0x1

    aget-wide v12, v8, v2

    add-long/2addr v4, v12

    add-int/lit8 v2, v3, 0x30

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v12

    add-long/2addr v4, v12

    const/16 v2, 0x2a

    invoke-static {v4, v5, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    .line 188
    const-wide v12, -0x4b6d499041670d8dL  # -1.9079014105469082E-55

    mul-long/2addr v6, v12

    const/4 v2, 0x1

    aget-wide v12, v16, v2

    xor-long v22, v6, v12

    .line 189
    const-wide v6, -0x4b6d499041670d8dL  # -1.9079014105469082E-55

    mul-long/2addr v4, v6

    const/4 v2, 0x0

    aget-wide v6, v8, v2

    add-int/lit8 v2, v3, 0x28

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v12

    add-long/2addr v6, v12

    add-long v18, v4, v6

    .line 190
    const/4 v2, 0x0

    aget-wide v4, v16, v2

    add-long/2addr v4, v10

    const/16 v2, 0x21

    invoke-static {v4, v5, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    const-wide v6, -0x4b6d499041670d8dL  # -1.9079014105469082E-55

    mul-long v20, v4, v6

    .line 191
    const/4 v2, 0x1

    aget-wide v4, v8, v2

    const-wide v6, -0x4b6d499041670d8dL  # -1.9079014105469082E-55

    mul-long/2addr v4, v6

    const/4 v2, 0x0

    aget-wide v6, v16, v2

    add-long v6, v6, v22

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 192
    add-int/lit8 v11, v3, 0x20

    const/4 v2, 0x1

    aget-wide v4, v16, v2

    add-long v12, v20, v4

    add-int/lit8 v2, v3, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long v14, v18, v4

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v16}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 193
    add-int/lit8 v3, v3, 0x40

    .line 197
    if-ne v3, v9, :cond_19c

    .line 198
    const-wide/16 v2, 0xff

    and-long v2, v2, v22

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    const-wide v4, 0x4b6d499041670d8dL  # 2.244137232028957E55

    sub-long v24, v2, v4

    .line 200
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, v16, v3

    add-int/lit8 v3, p2, -0x1

    and-int/lit8 v3, v3, 0x3f

    int-to-long v6, v3

    add-long/2addr v4, v6

    aput-wide v4, v16, v2

    .line 202
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, v8, v3

    const/4 v3, 0x0

    aget-wide v6, v16, v3

    add-long/2addr v4, v6

    aput-wide v4, v8, v2

    .line 203
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, v16, v3

    const/4 v3, 0x0

    aget-wide v6, v8, v3

    add-long/2addr v4, v6

    aput-wide v4, v16, v2

    .line 204
    add-long v2, v20, v18

    const/4 v4, 0x0

    aget-wide v4, v8, v4

    add-long/2addr v2, v4

    add-int/lit8 v4, v17, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/16 v4, 0x25

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    .line 205
    const/4 v4, 0x1

    aget-wide v4, v8, v4

    add-long v4, v4, v18

    add-int/lit8 v6, v17, 0x30

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v6

    add-long/2addr v4, v6

    const/16 v6, 0x2a

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    .line 206
    const/4 v6, 0x1

    aget-wide v6, v16, v6

    const-wide/16 v10, 0x9

    mul-long/2addr v6, v10

    mul-long v2, v2, v24

    xor-long v18, v6, v2

    .line 207
    mul-long v2, v4, v24

    const/4 v4, 0x0

    aget-wide v4, v8, v4

    const-wide/16 v6, 0x9

    mul-long/2addr v4, v6

    add-int/lit8 v6, v17, 0x28

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long v20, v2, v4

    .line 208
    const/4 v2, 0x0

    aget-wide v2, v16, v2

    add-long v2, v2, v22

    const/16 v4, 0x21

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v22, v2, v24

    .line 209
    const/4 v2, 0x1

    aget-wide v2, v8, v2

    mul-long v4, v2, v24

    const/4 v2, 0x0

    aget-wide v2, v16, v2

    add-long v6, v2, v18

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-static/range {v2 .. v8}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 210
    add-int/lit8 v11, v17, 0x20

    const/4 v2, 0x1

    aget-wide v2, v16, v2

    add-long v12, v22, v2

    add-int/lit8 v2, v17, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    add-long v14, v2, v20

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v16}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 211
    const/4 v2, 0x0

    aget-wide v2, v8, v2

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    move-wide/from16 v6, v24

    .line 212
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v10

    invoke-static/range {v20 .. v21}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v12

    const/4 v2, 0x1

    aget-wide v2, v8, v2

    const/4 v4, 0x1

    aget-wide v4, v16, v4

    move-wide/from16 v6, v24

    .line 213
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v4

    .line 211
    const-wide v2, -0x3c5a37a36834ced9L  # -7.8480313857871552E17

    mul-long/2addr v2, v12

    add-long/2addr v2, v10

    add-long v2, v2, v18

    add-long v4, v4, v22

    move-wide/from16 v6, v24

    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v2

    return-wide v2

    :cond_19c
    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move-wide/from16 v10, v22

    .line 197
    goto/16 :goto_43
.end method

.method private static shiftMix(J)J
    .registers 4

    .line 83
    const/16 v0, 0x2f

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method private static weakHashLength32WithSeeds([BIJJ[J)V
    .registers 19

    .line 102
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v0

    .line 103
    add-int/lit8 v2, p1, 0x8

    invoke-static {p0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    .line 104
    add-int/lit8 v4, p1, 0x10

    invoke-static {p0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    .line 105
    add-int/lit8 v6, p1, 0x18

    invoke-static {p0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v6

    .line 107
    add-long/2addr v0, p2

    .line 108
    add-long v8, p4, v0

    add-long/2addr v8, v6

    const/16 v10, 0x15

    invoke-static {v8, v9, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    .line 109
    add-long/2addr v2, v0

    add-long/2addr v2, v4

    .line 112
    const/16 v4, 0x2c

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    .line 113
    const/4 v10, 0x0

    add-long/2addr v2, v6

    aput-wide v2, p6, v10

    .line 114
    const/4 v2, 0x1

    add-long/2addr v4, v8

    add-long/2addr v0, v4

    aput-wide v0, p6, v2

    .line 115
    return-void
.end method


# virtual methods
.method public bits()I
    .registers 2

    .line 57
    const/16 v0, 0x40

    return v0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .registers 6

    .line 51
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 52
    invoke-static {p1, p2, p3}, Lcom/google/common/hash/FarmHashFingerprint64;->fingerprint([BII)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 62
    const-string v0, "Hashing.farmHashFingerprint64()"

    return-object v0
.end method
