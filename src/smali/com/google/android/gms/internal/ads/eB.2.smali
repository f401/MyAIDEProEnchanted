.class public final Lcom/google/android/gms/internal/ads/eB;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/dB;

.field private final FH:J

.field private final j6:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/eB;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;J)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eB;->j6:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eB;->DW:Lcom/google/android/gms/internal/ads/dB;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/eB;->FH:J

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private final DW(J)J
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/uy;->j6(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eB;->FH:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/eB;J)J
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/eB;->DW(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/eB;)Lcom/google/android/gms/internal/ads/dB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eB;->DW:Lcom/google/android/gms/internal/ads/dB;

    return-object v0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V
    .registers 38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eB;->DW:Lcom/google/android/gms/internal/ads/dB;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eB;->j6:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v2, Lcom/google/android/gms/internal/ads/hB;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/internal/ads/hB;-><init>(Lcom/google/android/gms/internal/ads/eB;Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/mD;IJJJ)V
    .registers 28

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-virtual/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/eB;->DW(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public final j6(J)Lcom/google/android/gms/internal/ads/eB;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/eB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eB;->j6:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eB;->DW:Lcom/google/android/gms/internal/ads/dB;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/eB;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;J)V

    return-object v0
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;J)V
    .registers 16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eB;->DW:Lcom/google/android/gms/internal/ads/dB;

    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/eB;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/jB;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/jB;-><init>(Lcom/google/android/gms/internal/ads/eB;ILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;J)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJ)V
    .registers 28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eB;->DW:Lcom/google/android/gms/internal/ads/dB;

    if-eqz v0, :cond_0

    iget-object v14, p0, Lcom/google/android/gms/internal/ads/eB;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/fB;

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/fB;-><init>(Lcom/google/android/gms/internal/ads/eB;Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJ)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V
    .registers 38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eB;->DW:Lcom/google/android/gms/internal/ads/dB;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eB;->j6:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v2, Lcom/google/android/gms/internal/ads/gB;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/internal/ads/gB;-><init>(Lcom/google/android/gms/internal/ads/eB;Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .registers 42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eB;->DW:Lcom/google/android/gms/internal/ads/dB;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eB;->j6:Landroid/os/Handler;

    move-object/from16 v22, v0

    new-instance v2, Lcom/google/android/gms/internal/ads/iB;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move-object/from16 v20, p17

    move/from16 v21, p18

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/ads/iB;-><init>(Lcom/google/android/gms/internal/ads/eB;Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mD;IJ)V
    .registers 20

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v12, p3

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mD;IJJJ)V
    .registers 28

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-virtual/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mD;IJJJLjava/io/IOException;Z)V
    .registers 32

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    move-object/from16 v18, p9

    move/from16 v19, p10

    invoke-virtual/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method
