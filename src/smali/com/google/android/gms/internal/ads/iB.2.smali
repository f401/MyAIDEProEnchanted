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
    .registers 22

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iB;->J8:Lcom/google/android/gms/internal/ads/eB;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/iB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iput p3, p0, Lcom/google/android/gms/internal/ads/iB;->DW:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/iB;->FH:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/iB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    iput p6, p0, Lcom/google/android/gms/internal/ads/iB;->v5:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/iB;->Zo:Ljava/lang/Object;

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/iB;->VH:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/iB;->gn:J

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/iB;->u7:J

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/iB;->tp:J

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/iB;->EQ:J

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iB;->we:Ljava/io/IOException;

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/iB;->J0:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/iB;->J8:Lcom/google/android/gms/internal/ads/eB;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;)Lcom/google/android/gms/internal/ads/dB;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/iB;->j6:Lcom/google/android/gms/internal/ads/mD;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/iB;->DW:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/iB;->FH:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/iB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/iB;->v5:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/iB;->Zo:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/iB;->J8:Lcom/google/android/gms/internal/ads/eB;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/iB;->VH:J

    invoke-static {v2, v10, v11}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/iB;->J8:Lcom/google/android/gms/internal/ads/eB;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/iB;->gn:J

    invoke-static {v2, v12, v13}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/iB;->u7:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/iB;->tp:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/iB;->EQ:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/iB;->we:Ljava/io/IOException;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/iB;->J0:Z

    move/from16 v21, v0

    invoke-interface/range {v3 .. v21}, Lcom/google/android/gms/internal/ads/dB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method
