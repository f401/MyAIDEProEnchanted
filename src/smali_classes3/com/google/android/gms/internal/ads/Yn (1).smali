.class final synthetic Lcom/google/android/gms/internal/ads/Yn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/jD;


# instance fields
.field private final j6:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yn;->j6:[B

    return-void
.end method


# virtual methods
.method public final zzgs()Lcom/google/android/gms/internal/ads/iD;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/hD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yn;->j6:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hD;-><init>([B)V

    return-object v0
.end method
