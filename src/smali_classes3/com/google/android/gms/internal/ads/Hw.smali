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
    .registers 39

    new-instance v19, Lcom/google/android/gms/internal/ads/Hw;

    move-object/from16 v0, v19

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L  # 1.0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/google/android/gms/internal/ads/Hw;-><init>(DDDDDDDDD)V

    sput-object v19, Lcom/google/android/gms/internal/ads/Hw;->j6:Lcom/google/android/gms/internal/ads/Hw;

    new-instance v0, Lcom/google/android/gms/internal/ads/Hw;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    const-wide/high16 v23, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v25, -0x4010000000000000L  # -1.0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/high16 v33, 0x3ff0000000000000L  # 1.0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    invoke-direct/range {v20 .. v38}, Lcom/google/android/gms/internal/ads/Hw;-><init>(DDDDDDDDD)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Hw;->DW:Lcom/google/android/gms/internal/ads/Hw;

    new-instance v0, Lcom/google/android/gms/internal/ads/Hw;

    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L  # -1.0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L  # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/Hw;-><init>(DDDDDDDDD)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Hw;->FH:Lcom/google/android/gms/internal/ads/Hw;

    new-instance v0, Lcom/google/android/gms/internal/ads/Hw;

    move-object/from16 v20, v0

    const-wide/high16 v23, -0x4010000000000000L  # -1.0

    const-wide/high16 v25, 0x3ff0000000000000L  # 1.0

    invoke-direct/range {v20 .. v38}, Lcom/google/android/gms/internal/ads/Hw;-><init>(DDDDDDDDD)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Hw;->Hw:Lcom/google/android/gms/internal/ads/Hw;

    return-void
.end method

.method private constructor <init>(DDDDDDDDD)V
    .registers 22

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/Hw;->v5:D

    move-wide v1, p11

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/Hw;->Zo:D

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/Hw;->VH:D

    move-wide v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/Hw;->gn:D

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/Hw;->u7:D

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/Hw;->tp:D

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/Hw;->EQ:D

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/Hw;->we:D

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/Hw;->J0:D

    return-void
.end method

.method public static j6(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/Hw;
    .registers 21

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v1

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v3

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->v5(Ljava/nio/ByteBuffer;)D

    move-result-wide v9

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v5

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v7

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->v5(Ljava/nio/ByteBuffer;)D

    move-result-wide v11

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v15

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->Hw(Ljava/nio/ByteBuffer;)D

    move-result-wide v17

    new-instance v19, Lcom/google/android/gms/internal/ads/Hw;

    move-object/from16 v0, v19

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fm;->v5(Ljava/nio/ByteBuffer;)D

    move-result-wide v13

    invoke-direct/range {v0 .. v18}, Lcom/google/android/gms/internal/ads/Hw;-><init>(DDDDDDDDD)V

    return-object v19
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_76

    const-class v2, Lcom/google/android/gms/internal/ads/Hw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_76

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/Hw;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->gn:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->gn:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_1d

    return v1

    :cond_1d
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->u7:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->u7:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_28

    return v1

    :cond_28
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->tp:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->tp:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_33

    return v1

    :cond_33
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->EQ:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->EQ:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3e

    return v1

    :cond_3e
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->we:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->we:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_49

    return v1

    :cond_49
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->J0:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->J0:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_54

    return v1

    :cond_54
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->v5:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->v5:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_5f

    return v1

    :cond_5f
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->Zo:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->Zo:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_6a

    return v1

    :cond_6a
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Hw;->VH:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Hw;->VH:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_75

    return v1

    :cond_75
    return v0

    :cond_76
    :goto_76
    return v1
.end method

.method public final hashCode()I
    .registers 14

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Hw;->v5:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Hw;->Zo:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Hw;->VH:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/Hw;->gn:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    long-to-int v3, v5

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/Hw;->u7:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    long-to-int v6, v5

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/Hw;->tp:D

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    ushr-long v9, v7, v2

    xor-long/2addr v7, v9

    long-to-int v5, v7

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/Hw;->EQ:D

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    ushr-long v9, v7, v2

    xor-long/2addr v7, v9

    long-to-int v8, v7

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/Hw;->we:D

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    ushr-long v11, v9, v2

    xor-long/2addr v9, v11

    long-to-int v7, v9

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/Hw;->J0:D

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v7

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v2, v9, v2

    xor-long/2addr v2, v9

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 22

    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/gms/internal/ads/Hw;->j6:Lcom/google/android/gms/internal/ads/Hw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Hw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Rotate 0°"

    return-object v1

    :cond_d
    sget-object v1, Lcom/google/android/gms/internal/ads/Hw;->DW:Lcom/google/android/gms/internal/ads/Hw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Hw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "Rotate 90°"

    return-object v1

    :cond_18
    sget-object v1, Lcom/google/android/gms/internal/ads/Hw;->FH:Lcom/google/android/gms/internal/ads/Hw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Hw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "Rotate 180°"

    return-object v1

    :cond_23
    sget-object v1, Lcom/google/android/gms/internal/ads/Hw;->Hw:Lcom/google/android/gms/internal/ads/Hw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Hw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "Rotate 270°"

    return-object v1

    :cond_2e
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/Hw;->v5:D

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/Hw;->Zo:D

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/Hw;->VH:D

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/Hw;->gn:D

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/Hw;->u7:D

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/Hw;->tp:D

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/Hw;->EQ:D

    move-wide v15, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/Hw;->we:D

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/Hw;->J0:D

    new-instance v0, Ljava/lang/StringBuilder;

    move-wide/from16 v19, v15

    const/16 v15, 0x104

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Matrix{u="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", tx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
