.class public final Lcom/google/android/gms/internal/ads/Hw;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/google/android/gms/internal/ads/Hw;

.field private static final FH:Lcom/google/android/gms/internal/ads/Hw;

.field private static final Hw:Lcom/google/android/gms/internal/ads/Hw;

.field public static final j6:Lcom/google/android/gms/internal/ads/Hw;


# instance fields
.field private final EQ:D

.field private final J0:D

.field private final VH:D

.field private final Zo:D

.field private final gn:D

.field private final tp:D

.field private final u7:D

.field private final v5:D

.field private final we:D


# direct methods
.method static constructor <clinit>()V
    .registers 20

    new-instance v1, Lcom/google/android/gms/internal/ads/Hw;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/Hw;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/google/android/gms/internal/ads/Hw;->j6:Lcom/google/android/gms/internal/ads/Hw;

    new-instance v1, Lcom/google/android/gms/internal/ads/Hw;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/Hw;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/google/android/gms/internal/ads/Hw;->DW:Lcom/google/android/gms/internal/ads/Hw;

    new-instance v1, Lcom/google/android/gms/internal/ads/Hw;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/Hw;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/google/android/gms/internal/ads/Hw;->FH:Lcom/google/android/gms/internal/ads/Hw;

    new-instance v1, Lcom/google/android/gms/internal/ads/Hw;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/Hw;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/google/android/gms/internal/ads/Hw;->Hw:Lcom/google/android/gms/internal/ads/Hw;

    return-void
.end method

.method private constructor <init>(DDDDDDDDD)V
    .registers 22

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/Hw;->v5:D

    iput-wide p11, p0, Lcom/google/android/gms/internal/ads/Hw;->Zo:D

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Hw;->VH:D

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Hw;->gn:D

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/Hw;->u7:D

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/Hw;->tp:D

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/Hw;->EQ:D

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Hw;->we:D

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Hw;->J0:D

    return-void
.end method

.method public static j6(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/Hw;
    .registers 21

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v4

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->v5(Ljava/nio/ByteBuffer;)D

    move-result-wide v10

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v6

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v8

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->v5(Ljava/nio/ByteBuffer;)D

    move-result-wide v12

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v16

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v18

    new-instance v1, Lcom/google/android/gms/internal/ads/Hw;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->v5(Ljava/nio/ByteBuffer;)D

    move-result-wide v14

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/Hw;-><init>(DDDDDDDDD)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    const-class v2, Lcom/google/android/gms/internal/ads/Hw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/Hw;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->gn:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->gn:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->u7:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->u7:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->tp:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->tp:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->EQ:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->EQ:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->we:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->we:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->J0:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->J0:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->v5:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->v5:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->Zo:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->Zo:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->VH:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->VH:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 14

    const/16 v12, 0x20

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Hw;->v5:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v12

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Hw;->Zo:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v4, v2, v12

    xor-long/2addr v2, v4

    long-to-int v1, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Hw;->VH:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v4, v2, v12

    xor-long/2addr v2, v4

    long-to-int v2, v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->gn:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long v6, v4, v12

    xor-long/2addr v4, v6

    long-to-int v3, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->u7:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long v6, v4, v12

    xor-long/2addr v4, v6

    long-to-int v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/Hw;->tp:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long v8, v6, v12

    xor-long/2addr v6, v8

    long-to-int v5, v6

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/Hw;->EQ:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long v8, v6, v12

    xor-long/2addr v6, v8

    long-to-int v6, v6

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/Hw;->we:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    ushr-long v10, v8, v12

    xor-long/2addr v8, v10

    long-to-int v7, v8

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/Hw;->J0:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v2, v8, v12

    xor-long/2addr v2, v8

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 25

    sget-object v4, Lcom/google/android/gms/internal/ads/Hw;->j6:Lcom/google/android/gms/internal/ads/Hw;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/Hw;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Rotate 0\u00b0"

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Lcom/google/android/gms/internal/ads/Hw;->DW:Lcom/google/android/gms/internal/ads/Hw;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/Hw;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Rotate 90\u00b0"

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/ads/Hw;->FH:Lcom/google/android/gms/internal/ads/Hw;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/Hw;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Rotate 180\u00b0"

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/ads/Hw;->Hw:Lcom/google/android/gms/internal/ads/Hw;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/Hw;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Rotate 270\u00b0"

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/Hw;->v5:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/Hw;->Zo:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/Hw;->VH:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/Hw;->gn:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/Hw;->u7:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/Hw;->tp:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Hw;->EQ:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Hw;->we:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Hw;->J0:D

    move-wide/from16 v20, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v23, 0x104

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v23, "Matrix{u="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", v="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", w="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", a="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", b="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", c="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", d="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", tx="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", ty="

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "}"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method
