.class final Lcom/google/android/gms/internal/ads/cz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:J

.field private final FH:J

.field private final Hw:Lcom/google/android/gms/internal/ads/az;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/az;Ljava/lang/String;JJ)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cz;->Hw:Lcom/google/android/gms/internal/ads/az;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cz;->j6:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/cz;->DW:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/cz;->FH:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cz;->Hw:Lcom/google/android/gms/internal/ads/az;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/az;->j6(Lcom/google/android/gms/internal/ads/az;)Lcom/google/android/gms/internal/ads/_y;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cz;->j6:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/cz;->DW:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/cz;->FH:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/_y;->j6(Ljava/lang/String;JJ)V

    return-void
.end method
