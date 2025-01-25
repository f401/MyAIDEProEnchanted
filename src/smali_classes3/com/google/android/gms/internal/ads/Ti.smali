.class public final Lcom/google/android/gms/internal/ads/Ti;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/Fe;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ge;

.field private final FH:Lcom/google/android/gms/ads/internal/Y;

.field private final Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Ej;",
            ">;"
        }
    .end annotation
.end field

.field private final VH:Lcom/google/android/gms/internal/ads/Ag;

.field private final Zo:Lcom/google/android/gms/ads/internal/gmsg/i;

.field private final v5:Lcom/google/android/gms/internal/ads/xj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Fe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Fe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ti;->j6:Lcom/google/android/gms/internal/ads/Fe;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/xj;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/internal/ads/Ag;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->Hw:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ti;->DW:Lcom/google/android/gms/internal/ads/Ge;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ti;->v5:Lcom/google/android/gms/internal/ads/xj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ti;->Zo:Lcom/google/android/gms/ads/internal/gmsg/i;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Ti;->VH:Lcom/google/android/gms/internal/ads/Ag;

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final DW()V
    .registers 4

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ti;->Hw:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Ej;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->pause()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_32} :catch_33

    goto :goto_f

    :catch_33
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_3a
    return-void
.end method

.method public final FH()V
    .registers 4

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ti;->Hw:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Ej;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->er()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_32} :catch_33

    goto :goto_f

    :catch_33
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_3a
    return-void
.end method

.method public final Hw()Lcom/google/android/gms/ads/internal/gmsg/i;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->Zo:Lcom/google/android/gms/ads/internal/gmsg/i;

    return-object v0
.end method

.method public final VH()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/pe;->we:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_21
    return-void
.end method

.method public final Zo()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/Y;->cb:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Hw()Lcom/google/android/gms/internal/ads/zg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    new-instance v2, Lcom/google/android/gms/internal/ads/Aj;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    invoke-direct {v2, v3, v1, p0}, Lcom/google/android/gms/internal/ads/Aj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Ti;)V

    const-class v1, Lcom/google/android/gms/internal/ads/Aj;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "AdRenderer: "

    if-eqz v3, :cond_2a

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_2a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2f
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/hl;->FH()Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    return-void
.end method

.method public final gn()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/pe;->J8:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_21
    return-void
.end method

.method public final j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ej;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->Hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Ej;

    if-nez v0, :cond_46

    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ti;->DW:Lcom/google/android/gms/internal/ads/Ge;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v1, Lcom/google/android/gms/internal/ads/Ti;->j6:Lcom/google/android/gms/internal/ads/Fe;

    :cond_16
    new-instance v2, Lcom/google/android/gms/internal/ads/Ej;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/Ge;->rN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Je;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ti;->v5:Lcom/google/android/gms/internal/ads/xj;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/Ej;-><init>(Lcom/google/android/gms/internal/ads/Je;Lcom/google/android/gms/internal/ads/xj;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_29

    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->Hw:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_45

    :catch_27
    move-exception v0

    goto :goto_2c

    :catch_29
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "Fail to instantiate adapter "

    if-eqz v1, :cond_3d

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    :cond_3d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_42
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_45
    move-object v0, v2

    :cond_46
    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzawd;)Lcom/google/android/gms/internal/ads/zzawd;
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qe;->EQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawd;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/qe;->EQ:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/qe;->we:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzawd;-><init>(Ljava/lang/String;I)V

    move-object p1, v0

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_45

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/pe;->J0:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/Y;->SI:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/Y;->KD:Ljava/lang/String;

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ye;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawd;)V

    :cond_45
    return-object p1
.end method

.method public final j6()V
    .registers 4

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ti;->Hw:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Ej;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Je;->destroy()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_32} :catch_33

    goto :goto_f

    :catch_33
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_3a
    return-void
.end method

.method public final j6(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Ej;

    :try_start_16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v1

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Je;->gW(Labcd/ox;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_a

    :catch_22
    move-exception v1

    const-string v2, "Unable to call Adapter.onContextChanged."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_29
    return-void
.end method

.method public final j6(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->FH:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->aM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ti;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ej;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v1

    if-eqz v1, :cond_27

    :try_start_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/Je;->gn(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Je;->showVideo()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27
    return-void
.end method

.method public final v5()Lcom/google/android/gms/internal/ads/Ag;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ti;->VH:Lcom/google/android/gms/internal/ads/Ag;

    return-object v0
.end method
