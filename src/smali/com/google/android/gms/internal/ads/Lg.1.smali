.class final synthetic Lcom/google/android/gms/internal/ads/Lg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qm;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/internal/ads/Kg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Kg;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lg;->j6:Lcom/google/android/gms/internal/ads/Kg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lg;->DW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lg;->j6:Lcom/google/android/gms/internal/ads/Kg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Lg;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Kg;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0
.end method
