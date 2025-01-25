.class final Lcom/google/android/gms/internal/ads/Id;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Wm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Wm<",
        "Lcom/google/android/gms/internal/ads/Qd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Hd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "Ending javascript session."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/gms/internal/ads/Rd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Rd;->DW()V

    return-void
.end method
