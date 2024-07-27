.class final Lcom/google/android/gms/internal/ads/jB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/zzfs;

.field private final FH:I

.field private final Hw:Ljava/lang/Object;

.field private final Zo:Lcom/google/android/gms/internal/ads/eB;

.field private final j6:I

.field private final v5:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eB;ILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;J)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iput p2, p0, Lcom/google/android/gms/internal/ads/jB;->j6:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jB;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    iput p4, p0, Lcom/google/android/gms/internal/ads/jB;->FH:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/jB;->Hw:Ljava/lang/Object;

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/jB;->v5:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;)Lcom/google/android/gms/internal/ads/dB;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/jB;->j6:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jB;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    iget v4, p0, Lcom/google/android/gms/internal/ads/jB;->FH:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/jB;->Hw:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/jB;->v5:J

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/eB;J)J

    move-result-wide v6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dB;->j6(ILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;J)V

    return-void
.end method
