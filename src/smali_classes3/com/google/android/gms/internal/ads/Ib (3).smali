.class public final Lcom/google/android/gms/internal/ads/Ib;
.super Lcom/google/android/gms/internal/ads/mb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/formats/f$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/f$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ib;->j6:Lcom/google/android/gms/ads/formats/f$a;

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ib;->j6:Lcom/google/android/gms/ads/formats/f$a;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/eb;->j6(Lcom/google/android/gms/internal/ads/ab;)Lcom/google/android/gms/internal/ads/eb;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/formats/f$a;->j6(Lcom/google/android/gms/ads/formats/f;Ljava/lang/String;)V

    return-void
.end method
