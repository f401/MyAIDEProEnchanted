.class abstract Lcom/google/android/gms/internal/ads/pH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/TH;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/pH;->FH()Lcom/google/android/gms/internal/ads/TH;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/pH;->j6:Lcom/google/android/gms/internal/ads/TH;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static FH()Lcom/google/android/gms/internal/ads/TH;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/google/android/gms/internal/ads/iH;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-nez v2, :cond_1b

    const-string v1, "ClientApi class is not an instance of IBinder."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v0

    :cond_1b
    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/UH;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/TH;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception v1

    const-string v1, "Failed to instantiate ClientApi class."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v0
.end method

.method private final Hw()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/pH;->j6:Lcom/google/android/gms/internal/ads/TH;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "ClientApi class cannot be loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v1

    :cond_b
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/pH;->j6(Lcom/google/android/gms/internal/ads/TH;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    const-string v2, "Cannot invoke local loader using ClientApi class."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private final v5()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/pH;->DW()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    const-string v1, "Cannot invoke remote loader."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected abstract DW()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract j6()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final j6(Landroid/content/Context;Z)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_15

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    const v1, 0xbdfcb8

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Zl;->FH(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_15

    const-string p2, "Google Play Services is not available."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    const/4 p2, 0x1

    :cond_15
    const-string v1, "com.google.android.gms.ads.dynamite"

    invoke-static {p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->DW(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-le v2, v1, :cond_22

    const/4 p2, 0x1

    :cond_22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->fD:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    const/4 p2, 0x0

    :cond_39
    if-eqz p2, :cond_46

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pH;->Hw()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_99

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pH;->v5()Ljava/lang/Object;

    move-result-object p1

    goto :goto_99

    :cond_46
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pH;->v5()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4e

    const/4 v1, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    if-eqz v1, :cond_91

    sget-object v3, Lcom/google/android/gms/internal/ads/p;->Wv:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->gn()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v0, 0x0

    :goto_6d
    if-eqz v0, :cond_91

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v2, "dynamite_load"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_missing"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->VH()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    const-string v5, "gmob-apps"

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    :cond_91
    if-nez p2, :cond_98

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pH;->Hw()Ljava/lang/Object;

    move-result-object p1

    goto :goto_99

    :cond_98
    move-object p1, p2

    :cond_99
    :goto_99
    if-nez p1, :cond_9f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/pH;->j6()Ljava/lang/Object;

    move-result-object p1

    :cond_9f
    return-object p1
.end method

.method protected abstract j6(Lcom/google/android/gms/internal/ads/TH;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/TH;",
            ")TT;"
        }
    .end annotation
.end method
