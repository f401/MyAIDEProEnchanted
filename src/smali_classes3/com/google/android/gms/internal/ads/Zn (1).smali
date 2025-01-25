.class final synthetic Lcom/google/android/gms/internal/ads/Zn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/jD;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/internal/ads/Xn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Xn;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zn;->j6:Lcom/google/android/gms/internal/ads/Xn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zn;->DW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzgs()Lcom/google/android/gms/internal/ads/iD;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zn;->j6:Lcom/google/android/gms/internal/ads/Xn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zn;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Xn;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/iD;

    move-result-object v0

    return-object v0
.end method
