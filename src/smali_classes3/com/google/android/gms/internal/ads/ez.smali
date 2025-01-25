.class final Lcom/google/android/gms/internal/ads/ez;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:J

.field private final FH:J

.field private final Hw:Lcom/google/android/gms/internal/ads/az;

.field private final j6:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/az;IJJ)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ez;->Hw:Lcom/google/android/gms/internal/ads/az;

    iput p2, p0, Lcom/google/android/gms/internal/ads/ez;->j6:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/ez;->DW:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/ez;->FH:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ez;->Hw:Lcom/google/android/gms/internal/ads/az;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/az;->j6(Lcom/google/android/gms/internal/ads/az;)Lcom/google/android/gms/internal/ads/_y;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/ez;->j6:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/ez;->DW:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/ez;->FH:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/_y;->j6(IJJ)V

    return-void
.end method
