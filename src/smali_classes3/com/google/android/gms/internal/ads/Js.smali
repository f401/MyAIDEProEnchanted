.class public final Lcom/google/android/gms/internal/ads/Js;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ys;

.field private final j6:Lcom/google/android/gms/internal/ads/Ys;


# direct methods
.method public constructor <init>([B[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ys;->j6([B)Lcom/google/android/gms/internal/ads/Ys;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Js;->j6:Lcom/google/android/gms/internal/ads/Ys;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Ys;->j6([B)Lcom/google/android/gms/internal/ads/Ys;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Js;->DW:Lcom/google/android/gms/internal/ads/Ys;

    return-void
.end method


# virtual methods
.method public final DW()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Js;->DW:Lcom/google/android/gms/internal/ads/Ys;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ys;->j6()[B

    move-result-object v0

    return-object v0
.end method

.method public final j6()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Js;->j6:Lcom/google/android/gms/internal/ads/Ys;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ys;->j6()[B

    move-result-object v0

    return-object v0
.end method
