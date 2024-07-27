.class final Lcom/google/android/gms/internal/ads/Gf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Up;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Up",
        "<",
        "Lcom/google/android/gms/internal/ads/Wp;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Me;

.field private final FH:Lcom/google/android/gms/internal/ads/Df;

.field private final j6:Lcom/google/android/gms/internal/ads/wf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Df;Lcom/google/android/gms/internal/ads/wf;Lcom/google/android/gms/internal/ads/Me;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gf;->FH:Lcom/google/android/gms/internal/ads/Df;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Gf;->j6:Lcom/google/android/gms/internal/ads/wf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Gf;->DW:Lcom/google/android/gms/internal/ads/Me;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gf;->j6:Lcom/google/android/gms/internal/ads/wf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/wf;->v5(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
