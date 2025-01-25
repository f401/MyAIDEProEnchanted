.class public final Lcom/google/android/gms/internal/ads/Jb;
.super Lcom/google/android/gms/internal/ads/pb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/formats/f$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/f$b;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jb;->j6:Lcom/google/android/gms/ads/formats/f$b;

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/ab;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jb;->j6:Lcom/google/android/gms/ads/formats/f$b;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/eb;->j6(Lcom/google/android/gms/internal/ads/ab;)Lcom/google/android/gms/internal/ads/eb;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/f$b;->j6(Lcom/google/android/gms/ads/formats/f;)V

    return-void
.end method
