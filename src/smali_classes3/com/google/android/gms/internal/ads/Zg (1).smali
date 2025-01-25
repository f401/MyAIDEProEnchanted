.class final synthetic Lcom/google/android/gms/internal/ads/Zg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/up;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Rm;

.field private final FH:Lcom/google/android/gms/internal/ads/Mo;

.field private final j6:Lcom/google/android/gms/internal/ads/Ug;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ug;Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zg;->j6:Lcom/google/android/gms/internal/ads/Ug;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zg;->DW:Lcom/google/android/gms/internal/ads/Rm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Zg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    return-void
.end method


# virtual methods
.method public final j6(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zg;->j6:Lcom/google/android/gms/internal/ads/Ug;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zg;->DW:Lcom/google/android/gms/internal/ads/Rm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/Ug;->DW(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Mo;Z)V

    return-void
.end method
