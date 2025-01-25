.class public final Lcom/google/android/gms/internal/ads/Wa;
.super Lcom/google/android/gms/ads/formats/d;


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

.field private final FH:Lcom/google/android/gms/internal/ads/Ja;

.field private final Hw:Lcom/google/android/gms/ads/h;

.field private final j6:Lcom/google/android/gms/internal/ads/Ta;

.field private final v5:Lcom/google/android/gms/ads/formats/a$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ta;)V
    .registers 7

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/d;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Wa;->DW:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/ads/h;

    invoke-direct {v1}, Lcom/google/android/gms/ads/h;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Wa;->Hw:Lcom/google/android/gms/ads/h;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    const/4 v1, 0x0

    :try_start_16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ta;->Hw()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_57

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_45

    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_45

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/Ga;

    if-eqz v4, :cond_3f

    check-cast v3, Lcom/google/android/gms/internal/ads/Ga;

    goto :goto_46

    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/ads/Ia;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/Ia;-><init>(Landroid/os/IBinder;)V

    goto :goto_46

    :cond_45
    move-object v3, v1

    :goto_46
    if-eqz v3, :cond_20

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Wa;->DW:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/Ja;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/Ja;-><init>(Lcom/google/android/gms/internal/ads/Ga;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_52} :catch_53

    goto :goto_20

    :catch_53
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    :try_start_57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ta;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object p1

    if-eqz p1, :cond_69

    new-instance v2, Lcom/google/android/gms/internal/ads/Ja;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/Ja;-><init>(Lcom/google/android/gms/internal/ads/Ga;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_64} :catch_65

    goto :goto_6a

    :catch_65
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_69
    move-object v2, v1

    :goto_6a
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Wa;->FH:Lcom/google/android/gms/internal/ads/Ja;

    :try_start_6c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ta;->rN()Lcom/google/android/gms/internal/ads/Ba;

    move-result-object p1

    if-eqz p1, :cond_85

    new-instance p1, Lcom/google/android/gms/internal/ads/Fa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ta;->rN()Lcom/google/android/gms/internal/ads/Ba;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/Fa;-><init>(Lcom/google/android/gms/internal/ads/Ba;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_7f} :catch_81

    move-object v1, p1

    goto :goto_85

    :catch_81
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_85
    :goto_85
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Wa;->v5:Lcom/google/android/gms/ads/formats/a$a;

    return-void
.end method

.method private final EQ()Labcd/ox;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ta;->et()Labcd/ox;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final DW()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ta;->ro()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final FH()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ta;->gn()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final Hw()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ta;->a8()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final VH()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ta;->kQ()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final Zo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wa;->DW:Ljava/util/List;

    return-object v0
.end method

.method public final gn()Ljava/lang/Double;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ta;->yO()D

    move-result-wide v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_13

    const-wide/high16 v3, -0x4010000000000000L  # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :catch_13
    move-exception v1

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected final synthetic j6()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Wa;->EQ()Labcd/ox;

    move-result-object v0

    return-object v0
.end method

.method public final tp()Lcom/google/android/gms/ads/h;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ta;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wa;->Hw:Lcom/google/android/gms/ads/h;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ta;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->j6(Lcom/google/android/gms/internal/ads/kI;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wa;->Hw:Lcom/google/android/gms/ads/h;

    return-object v0
.end method

.method public final u7()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wa;->j6:Lcom/google/android/gms/internal/ads/Ta;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ta;->wc()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final v5()Lcom/google/android/gms/ads/formats/a$b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wa;->FH:Lcom/google/android/gms/internal/ads/Ja;

    return-object v0
.end method
