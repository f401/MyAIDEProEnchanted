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
    .registers 21

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/hB;->we:Lcom/google/android/gms/internal/ads/eB;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/hB;->j6:Lcom/google/android/gms/internal/ads/mD;

    move v1, p3

    iput v1, v0, Lcom/google/android/gms/internal/ads/hB;->DW:I

    move v1, p4

    iput v1, v0, Lcom/google/android/gms/internal/ads/hB;->FH:I

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/hB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    move v1, p6

    iput v1, v0, Lcom/google/android/gms/internal/ads/hB;->v5:I

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/hB;->Zo:Ljava/lang/Object;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/hB;->VH:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/hB;->gn:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/hB;->u7:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/hB;->tp:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/hB;->EQ:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hB;->we:Lcom/google/android/gms/internal/ads/eB;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;)Lcom/google/android/gms/internal/ads/dB;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v4, v0, Lcom/google/android/gms/internal/ads/hB;->DW:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/hB;->FH:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/hB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    iget v7, v0, Lcom/google/android/gms/internal/ads/hB;->v5:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/hB;->Zo:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hB;->we:Lcom/google/android/gms/internal/ads/eB;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/hB;->VH:J

    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/hB;->we:Lcom/google/android/gms/internal/ads/eB;

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/hB;->gn:J

    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;J)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/hB;->u7:J

    move-object/from16 v19, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/hB;->tp:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/hB;->EQ:J

    move-wide/from16 v17, v1

    move-object/from16 v2, v19

    invoke-interface/range {v2 .. v18}, Lcom/google/android/gms/internal/ads/dB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V

    return-void
.end method
