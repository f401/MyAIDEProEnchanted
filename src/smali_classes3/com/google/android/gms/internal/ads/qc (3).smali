.class final Lcom/google/android/gms/internal/ads/qc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Gc;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pc;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qc;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qc;->DW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Hc;)V
    .registers 4

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Hc;->FH:Lcom/google/android/gms/internal/ads/QH;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qc;->j6:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qc;->DW:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/QH;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
