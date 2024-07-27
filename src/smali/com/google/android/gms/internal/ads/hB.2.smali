.class final Lcom/google/android/gms/internal/ads/hB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:I

.field private final EQ:J

.field private final FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/zzfs;

.field private final VH:J

.field private final Zo:Ljava/lang/Object;

.field private final gn:J

.field private final j6:Lcom/google/android/gms/internal/ads/mD;

.field private final tp:J

.field private final u7:J

.field private final v5:I

.field private final we:Lcom/google/android/gms/internal/ads/eB;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eB;Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V
    .registers 20

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hB;->we:Lcom/google/android/gms/internal/ads/eB;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iput p3, p0, Lcom/google/android/gms/internal/ads/hB;->DW:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/hB;->FH:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/hB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    iput p6, p0, Lcom/google/android/gms/internal/ads/hB;->v5:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/hB;->Zo:Ljava/lang/Object;

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/hB;->VH:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/hB;->gn:J

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/hB;->u7:J

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hB;->tp:J

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/hB;->EQ:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hB;->we:Lcom/google/android/gms/internal/ads/eB;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;)Lcom/google/android/gms/internal/ads/dB;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/hB;->j6:Lcom/google/android/gms/internal/ads/mD;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/hB;->DW:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/hB;->FH:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/hB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/hB;->v5:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/hB;->Zo:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hB;->we:Lcom/google/android/gms/internal/ads/eB;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/hB;->VH:J

    invoke-static {v2, v10, v11}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/hB;->we:Lcom/google/android/gms/internal/ads/eB;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/hB;->gn:J

    invoke-static {v2, v12, v13}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/hB;->u7:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/hB;->tp:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/hB;->EQ:J

    move-wide/from16 v18, v0

    invoke-interface/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/dB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V

    return-void
.end method
