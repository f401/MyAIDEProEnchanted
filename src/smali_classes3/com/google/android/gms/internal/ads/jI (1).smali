.class public final Lcom/google/android/gms/internal/ads/jI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/f;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/gI;

.field private final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/gI;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jI;->DW:Lcom/google/android/gms/internal/ads/gI;

    :try_start_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gI;->nl()Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_11

    :catch_a
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jI;->j6:Ljava/lang/String;

    return-void
.end method
