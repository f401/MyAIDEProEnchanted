.class public final Lcom/google/android/gms/internal/ads/Hb;
.super Lcom/google/android/gms/internal/ads/jb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/formats/e$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/e$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/jb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hb;->j6:Lcom/google/android/gms/ads/formats/e$a;

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Xa;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hb;->j6:Lcom/google/android/gms/ads/formats/e$a;

    new-instance v1, Lcom/google/android/gms/internal/ads/_a;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/_a;-><init>(Lcom/google/android/gms/internal/ads/Xa;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/e$a;->j6(Lcom/google/android/gms/ads/formats/e;)V

    return-void
.end method
