.class final Lcom/google/android/gms/internal/ads/iB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:I

.field private final EQ:J

.field private final FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/zzfs;

.field private final J0:Z

.field private final J8:Lcom/google/android/gms/internal/ads/eB;

.field private final VH:J

.field private final Zo:Ljava/lang/Object;

.field private final gn:J

.field private final j6:Lcom/google/android/gms/internal/ads/mD;

.field private final tp:J

.field private final u7:J

.field private final v5:I

.field private final we:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eB;Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .registers 23

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/iB;->J8:Lcom/google/android/gms/internal/ads/eB;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/iB;->j6:Lcom/google/android/gms/internal/ads/mD;

    move v1, p3

    iput v1, v0, Lcom/google/android/gms/internal/ads/iB;->DW:I

    move v1, p4

    iput v1, v0, Lcom/google/android/gms/internal/ads/iB;->FH:I

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/iB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    move v1, p6

    iput v1, v0, Lcom/google/android/gms/internal/ads/iB;->v5:I

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/iB;->Zo:Ljava/lang/Object;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/iB;->VH:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/iB;->gn:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/iB;->u7:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/iB;->tp:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/iB;->EQ:J

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/iB;->we:Ljava/io/IOException;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/iB;->J0:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/iB;->J8:Lcom/google/android/gms/internal/ads/eB;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;)Lcom/google/android/gms/internal/ads/dB;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/iB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v4, v0, Lcom/google/android/gms/internal/ads/iB;->DW:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/iB;->FH:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/iB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    iget v7, v0, Lcom/google/android/gms/internal/ads/iB;->v5:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/iB;->Zo:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/iB;->J8:Lcom/google/android/gms/internal/ads/eB;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/iB;->VH:J

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/iB;->J8:Lcom/google/android/gms/internal/ads/eB;

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/iB;->gn:J

    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;J)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/iB;->u7:J

    move-object/from16 v21, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/iB;->tp:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/iB;->EQ:J

    move-wide/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/iB;->we:Ljava/io/IOException;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/iB;->J0:Z

    move/from16 v20, v1

    move-object/from16 v2, v21

    invoke-interface/range {v2 .. v20}, Lcom/google/android/gms/internal/ads/dB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method
