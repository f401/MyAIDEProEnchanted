.class final synthetic Lcom/google/android/gms/internal/ads/ym;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/qm;

.field private final FH:Lcom/google/android/gms/internal/ads/Hm;

.field private final j6:Lcom/google/android/gms/internal/ads/Rm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/qm;Lcom/google/android/gms/internal/ads/Hm;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ym;->j6:Lcom/google/android/gms/internal/ads/Rm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ym;->DW:Lcom/google/android/gms/internal/ads/qm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ym;->FH:Lcom/google/android/gms/internal/ads/Hm;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ym;->j6:Lcom/google/android/gms/internal/ads/Rm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ym;->DW:Lcom/google/android/gms/internal/ads/qm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ym;->FH:Lcom/google/android/gms/internal/ads/Hm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/qm;Lcom/google/android/gms/internal/ads/Hm;)V

    return-void
.end method
