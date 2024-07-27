.class final Lcom/google/android/gms/internal/ads/Yi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Xi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Xi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yi;->j6:Lcom/google/android/gms/internal/ads/Xi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yi;->j6:Lcom/google/android/gms/internal/ads/Xi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Xi;->j6(Lcom/google/android/gms/internal/ads/Xi;I)V

    return-void
.end method
