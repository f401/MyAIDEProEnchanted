.class final Lcom/google/android/gms/internal/ads/Ef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Up;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Up<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Me;

.field private final j6:Lcom/google/android/gms/internal/ads/pf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/pf;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ef;->j6:Lcom/google/android/gms/internal/ads/pf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ef;->DW:Lcom/google/android/gms/internal/ads/Me;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ef;->j6:Lcom/google/android/gms/internal/ads/pf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/pf;->v5(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
