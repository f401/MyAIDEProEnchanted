.class final synthetic Lcom/google/android/gms/ads/internal/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/up;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Lcom/google/android/gms/internal/ads/Mo;

.field private final j6:Lcom/google/android/gms/internal/ads/W;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/W;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/t;->j6:Lcom/google/android/gms/internal/ads/W;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/t;->DW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/t;->FH:Lcom/google/android/gms/internal/ads/Mo;

    return-void
.end method


# virtual methods
.method public final j6(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->j6:Lcom/google/android/gms/internal/ads/W;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->DW:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/s;->j6(Lcom/google/android/gms/internal/ads/W;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Mo;Z)V

    return-void
.end method
