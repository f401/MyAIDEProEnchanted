.class final Lcom/google/android/gms/internal/ads/Jd;
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


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Hd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Hd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jd;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)V
    .registers 2

    const-string p1, "Releasing engine reference."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jd;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Hd;->j6(Lcom/google/android/gms/internal/ads/Hd;)Lcom/google/android/gms/internal/ads/Ld;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ld;->Hw()V

    return-void
.end method
