.class public final Lcom/google/android/gms/internal/ads/hH;
.super Lcom/google/android/gms/internal/ads/RH;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/doubleclick/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/RH;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hH;->j6:Lcom/google/android/gms/ads/doubleclick/a;

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hH;->j6:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/doubleclick/a;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
