.class final Lcom/google/android/gms/internal/ads/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Zo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Zo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ap;->j6:Lcom/google/android/gms/internal/ads/Zo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ap;->j6:Lcom/google/android/gms/internal/ads/Zo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Zo;->DW(Lcom/google/android/gms/internal/ads/Zo;)V

    return-void
.end method
