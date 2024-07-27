.class final Lcom/google/android/gms/internal/ads/fB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/zzfs;

.field private final VH:J

.field private final Zo:Ljava/lang/Object;

.field private final gn:J

.field private final j6:Lcom/google/android/gms/internal/ads/mD;

.field private final tp:Lcom/google/android/gms/internal/ads/eB;

.field private final u7:J

.field private final v5:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eB;Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJ)V
    .registers 14

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fB;->tp:Lcom/google/android/gms/internal/ads/eB;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iput p3, p0, Lcom/google/android/gms/internal/ads/fB;->DW:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/fB;->FH:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/fB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    iput p6, p0, Lcom/google/android/gms/internal/ads/fB;->v5:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/fB;->Zo:Ljava/lang/Object;

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/fB;->VH:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/fB;->gn:J

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/fB;->u7:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fB;->tp:Lcom/google/android/gms/internal/ads/eB;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;)Lcom/google/android/gms/internal/ads/dB;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v3, p0, Lcom/google/android/gms/internal/ads/fB;->DW:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/fB;->FH:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fB;->Hw:Lcom/google/android/gms/internal/ads/zzfs;

    iget v6, p0, Lcom/google/android/gms/internal/ads/fB;->v5:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/fB;->Zo:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fB;->tp:Lcom/google/android/gms/internal/ads/eB;

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/fB;->VH:J

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;J)J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fB;->tp:Lcom/google/android/gms/internal/ads/eB;

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/fB;->gn:J

    invoke-static {v0, v10, v11}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;J)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/fB;->u7:J

    invoke-interface/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/dB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJ)V

    return-void
.end method
