.class public final Lcom/google/android/gms/internal/ads/Fa;
.super Lcom/google/android/gms/ads/formats/a$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/internal/ads/Ba;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ba;)V
    .registers 6

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/a$a;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Fa;->DW:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fa;->j6:Lcom/google/android/gms/internal/ads/Ba;

    :try_start_e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ba;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Fa;->FH:Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Fa;->FH:Ljava/lang/String;

    :goto_1b
    :try_start_1b
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ba;->cc()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_48

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_48

    const-string v2, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/Ga;

    if-eqz v3, :cond_42

    check-cast v2, Lcom/google/android/gms/internal/ads/Ga;

    goto :goto_49

    :cond_42
    new-instance v2, Lcom/google/android/gms/internal/ads/Ia;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/Ia;-><init>(Landroid/os/IBinder;)V

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    if-eqz v2, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fa;->DW:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/ads/Ja;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/Ja;-><init>(Lcom/google/android/gms/internal/ads/Ga;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_55} :catch_57

    goto :goto_23

    :cond_56
    return-void

    :catch_57
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
