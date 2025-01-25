.class final Lcom/google/android/gms/internal/ads/yl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qm<",
        "Ljava/lang/Throwable;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Cl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazs;Lcom/google/android/gms/internal/ads/Cl;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yl;->j6:Lcom/google/android/gms/internal/ads/Cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 4

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Error occurred while dispatching http response in getter."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    const-string v1, "HttpGetter.deliverResponse.1"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yl;->j6:Lcom/google/android/gms/internal/ads/Cl;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Cl;->j6()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p1

    return-object p1
.end method
