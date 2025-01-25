.class public final Lcom/google/android/gms/internal/ads/Cs;
.super Lcom/google/android/gms/internal/ads/ft;


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ft;-><init>([B)V

    return-void
.end method


# virtual methods
.method final j6([BI)Lcom/google/android/gms/internal/ads/et;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/Bs;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Bs;-><init>([BI)V

    return-object v0
.end method

.method public final bridge synthetic j6([B[B)[B
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ft;->j6([B[B)[B

    move-result-object p1

    return-object p1
.end method
