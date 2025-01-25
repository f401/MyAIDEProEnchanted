.class final Lcom/google/android/gms/internal/ads/FF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/iF;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/DF;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/DF;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/FF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Z)V
    .registers 2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/FF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/DF;->DW(Lcom/google/android/gms/internal/ads/DF;)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/FF;->j6:Lcom/google/android/gms/internal/ads/DF;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/DF;->j6(Lcom/google/android/gms/internal/ads/DF;)V

    return-void
.end method
