.class final Lcom/google/android/gms/internal/ads/no;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/mo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/no;->j6:Lcom/google/android/gms/internal/ads/mo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->vy()Lcom/google/android/gms/internal/ads/oo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/no;->j6:Lcom/google/android/gms/internal/ads/mo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/oo;->DW(Lcom/google/android/gms/internal/ads/mo;)V

    return-void
.end method
