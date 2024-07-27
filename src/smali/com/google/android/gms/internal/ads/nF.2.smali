.class final Lcom/google/android/gms/internal/ads/nF;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/lF;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lF;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nF;->j6:Lcom/google/android/gms/internal/ads/lF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nF;->j6:Lcom/google/android/gms/internal/ads/lF;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lF;->v5:Lcom/google/android/gms/internal/ads/jF;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lF;->DW:Lcom/google/android/gms/internal/ads/dF;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/lF;->FH:Landroid/webkit/WebView;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/lF;->Hw:Z

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/gms/internal/ads/jF;->j6(Lcom/google/android/gms/internal/ads/dF;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
