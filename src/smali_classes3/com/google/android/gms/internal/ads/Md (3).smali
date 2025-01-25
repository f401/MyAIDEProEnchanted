.class final Lcom/google/android/gms/internal/ads/Md;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Wm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Wm<",
        "Lcom/google/android/gms/internal/ads/gd;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Hd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/Hd;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Md;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/gd;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Md;->j6:Lcom/google/android/gms/internal/ads/Hd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gd;->j6()Lcom/google/android/gms/internal/ads/Rd;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Xm;->j6(Ljava/lang/Object;)V

    return-void
.end method
