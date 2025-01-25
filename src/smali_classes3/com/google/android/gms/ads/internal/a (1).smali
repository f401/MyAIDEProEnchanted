.class public abstract Lcom/google/android/gms/ads/internal/a;
.super Lcom/google/android/gms/internal/ads/JH;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/i;
.implements Lcom/google/android/gms/ads/internal/gmsg/k;
.implements Lcom/google/android/gms/ads/internal/overlay/s;
.implements Lcom/google/android/gms/internal/ads/Ag;
.implements Lcom/google/android/gms/internal/ads/Bh;
.implements Lcom/google/android/gms/internal/ads/vk;
.implements Lcom/google/android/gms/internal/ads/WG;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field protected DW:Lcom/google/android/gms/internal/ads/A;

.field protected EQ:Labcd/ox;

.field private FH:Lcom/google/android/gms/internal/ads/A;

.field protected Hw:Z

.field protected transient VH:Lcom/google/android/gms/internal/ads/zzwb;

.field protected final Zo:Lcom/google/android/gms/ads/internal/Y;

.field protected final gn:Lcom/google/android/gms/internal/ads/rE;

.field protected j6:Lcom/google/android/gms/internal/ads/D;

.field private tp:Z

.field private final u7:Landroid/os/Bundle;

.field protected final v5:Lcom/google/android/gms/ads/internal/M;

.field protected final we:Lcom/google/android/gms/ads/internal/ta;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/Y;Lcom/google/android/gms/ads/internal/M;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/JH;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->u7:Landroid/os/Bundle;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/a;->tp:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    new-instance p2, Lcom/google/android/gms/ads/internal/M;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/M;-><init>(Lcom/google/android/gms/ads/internal/a;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/a;->we:Lcom/google/android/gms/ads/internal/ta;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/content/Context;)Z

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Ck;->j6(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->XL()Lcom/google/android/gms/internal/ads/cd;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/cd;->j6(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/pk;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->EQ()Lcom/google/android/gms/internal/ads/DF;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/DF;->j6(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/pk;->gn()Lcom/google/android/gms/internal/ads/rE;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->gn()Lcom/google/android/gms/internal/ads/fF;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/fF;->j6(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->BT()Lcom/google/android/gms/internal/ads/Vl;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/Vl;->j6(Landroid/content/Context;)V

    return-void
.end method

.method protected static FH(Lcom/google/android/gms/internal/ads/zzwb;)Z
    .registers 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_15

    const-string v0, "gw"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method private static dx(Ljava/lang/String;)J
    .registers 4

    const-string v0, "ufe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_13
    add-int/lit8 v0, v0, 0x4

    :try_start_15
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_1d} :catch_20
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_1e

    return-wide v0

    :catch_1e
    move-exception p0

    goto :goto_21

    :catch_20
    move-exception p0

    :goto_21
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/xH;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setAdListener"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    return-void
.end method

.method DW(Lcom/google/android/gms/internal/ads/kk;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final Ej()Lcom/google/android/gms/internal/ads/zzwf;
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: getAdSize"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzzu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzzu;-><init>(Lcom/google/android/gms/internal/ads/zzwf;)V

    return-object v1
.end method

.method protected final FH(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Vk;->Zo()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    return-void
.end method

.method protected final FH(Lcom/google/android/gms/internal/ads/zzawd;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->ei:Lcom/google/android/gms/internal/ads/jj;

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_e

    :try_start_9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzawd;->DW:I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_33

    goto :goto_11

    :cond_e
    const-string v0, ""

    const/4 p1, 0x1

    :goto_11
    :try_start_11
    new-instance v1, Lcom/google/android/gms/internal/ads/Ui;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/Ui;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->ei:Lcom/google/android/gms/internal/ads/jj;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/jj;->j6(Lcom/google/android/gms/internal/ads/_i;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->nw:Lcom/google/android/gms/internal/ads/cj;

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->nw:Lcom/google/android/gms/internal/ads/cj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->a8:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/cj;->j6(Lcom/google/android/gms/internal/ads/_i;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_32} :catch_33

    :cond_32
    return-void

    :catch_33
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final FH()Z
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: isLoaded"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->VH:Lcom/google/android/gms/internal/ads/Ak;

    if-nez v1, :cond_15

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    if-nez v1, :cond_15

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public final GK()V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread.: recordManualImpression"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-nez v0, :cond_11

    const-string v0, "Ad state was null when trying to ping manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_11
    const-string v0, "Pinging manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/kk;->sh:Z

    if-nez v0, :cond_59

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->VH:Ljava/util/List;

    if-eqz v1, :cond_2e

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v1, :cond_3d

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/pe;->u7:Ljava/util/List;

    if-eqz v1, :cond_3d

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_44

    return-void

    :cond_44
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/kk;->sh:Z

    :cond_59
    return-void
.end method

.method public final HE()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_38

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/kk;->ei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/kk;->cb:Z

    if-nez v1, :cond_38

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Ws()Lcom/google/android/gms/internal/ads/ol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ol;->DW()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_38

    :cond_1d
    const-string v1, "Sending troubleshooting signals to the server."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Ws()Lcom/google/android/gms/internal/ads/ol;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/kk;->ei:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/google/android/gms/internal/ads/ol;->DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/kk;->cb:Z

    :cond_38
    :goto_38
    return-void
.end method

.method protected Hw(Lcom/google/android/gms/internal/ads/zzwb;)Z
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_11

    return v0

    :cond_11
    check-cast p1, Landroid/view/View;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/view/View;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public J0()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-nez v0, :cond_c

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_c
    const-string v0, "Pinging click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->FH()V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->FH:Ljava/util/List;

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/kk;->FH:Ljava/util/List;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/kk;->I:Z

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->J0:Lcom/google/android/gms/internal/ads/tH;

    if-eqz v0, :cond_4a

    :try_start_40
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tH;->J0()V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4a
    return-void
.end method

.method protected J0(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->j6(IZ)V

    return-void
.end method

.method protected K3()V
    .registers 3

    const-string v0, "Ad closing."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    const-string v1, "#007 Could not call remote method."

    if-eqz v0, :cond_15

    :try_start_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xH;->a5()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->ei:Lcom/google/android/gms/internal/ads/jj;

    if-eqz v0, :cond_23

    :try_start_1b
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jj;->x9()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    return-void
.end method

.method protected final Lx()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->ei:Lcom/google/android/gms/internal/ads/jj;

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jj;->Mz()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final OM()V
    .registers 3

    const-string v0, "Ad leaving application."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    const-string v1, "#007 Could not call remote method."

    if-eqz v0, :cond_15

    :try_start_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xH;->Cz()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->ei:Lcom/google/android/gms/internal/ads/jj;

    if-eqz v0, :cond_23

    :try_start_1b
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jj;->ca()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    return-void
.end method

.method public final Of()Lcom/google/android/gms/internal/ads/xH;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    return-object v0
.end method

.method protected final Qs()V
    .registers 3

    const-string v0, "Ad opening."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    const-string v1, "#007 Could not call remote method."

    if-eqz v0, :cond_15

    :try_start_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xH;->Gj()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->ei:Lcom/google/android/gms/internal/ads/jj;

    if-eqz v0, :cond_23

    :try_start_1b
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jj;->Qq()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    return-void
.end method

.method public final Vq()V
    .registers 3

    const-string v0, "Ad impression."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    if-eqz v0, :cond_15

    :try_start_b
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xH;->pN()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public Ws(Z)V
    .registers 2

    const-string p1, "Attempt to call setManualImpressionsEnabled for an unsupported ad type."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method protected XL(Z)V
    .registers 3

    const-string v0, "Ad finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/a;->tp:Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    const-string v0, "#007 Could not call remote method."

    if-eqz p1, :cond_1a

    :try_start_12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/xH;->QO()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->ei:Lcom/google/android/gms/internal/ads/jj;

    if-eqz p1, :cond_28

    :try_start_20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jj;->jw()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->QX:Lcom/google/android/gms/internal/ads/NH;

    if-eqz p1, :cond_36

    :try_start_2e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/NH;->eN()V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_36
    return-void
.end method

.method public final d8()Labcd/ox;
    .registers 2

    const-string v0, "#008 Must be called on the main UI thread.: getAdFrame"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread.: destroy"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/M;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->DW(Lcom/google/android/gms/internal/ads/kk;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/Z;->DW()V

    :cond_1c
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->QX:Lcom/google/android/gms/internal/ads/NH;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->Ws:Lcom/google/android/gms/internal/ads/QH;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->P8:Lcom/google/android/gms/internal/ads/J;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->XL:Lcom/google/android/gms/internal/ads/WH;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/Y;->j6(Z)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/Z;->removeAllViews()V

    :cond_32
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->DW()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->FH()V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/a;->EQ:Labcd/ox;

    return-void
.end method

.method public final e9()Landroid/os/Bundle;
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->tp:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->u7:Landroid/os/Bundle;

    return-object v0

    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public er()V
    .registers 2

    const-string v0, "#008 Must be called on the main UI thread.: resume"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    return-void
.end method

.method protected final fd()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->ei:Lcom/google/android/gms/internal/ads/jj;

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jj;->g3()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected g0()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->XL(Z)V

    return-void
.end method

.method public getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public gn(Z)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hp()Lcom/google/android/gms/internal/ads/QH;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Ws:Lcom/google/android/gms/internal/ads/QH;

    return-object v0
.end method

.method public final j3(Ljava/lang/String;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setUserId"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->SI:Ljava/lang/String;

    return-void
.end method

.method protected final j6(Ljava/util/List;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v1, v2, p2}, Lcom/google/android/gms/internal/ads/dk;->j6(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method protected j6(IZ)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    const-string v0, "#007 Could not call remote method."

    if-eqz p2, :cond_28

    :try_start_20
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/xH;->Zo(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p2

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    :goto_28
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/Y;->ei:Lcom/google/android/gms/internal/ads/jj;

    if-eqz p2, :cond_36

    :try_start_2e
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/jj;->DW(I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p2

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_36
    :goto_36
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/Y;->U2:Lcom/google/android/gms/internal/ads/cc;

    if-eqz p2, :cond_44

    :try_start_3c
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/cc;->EQ(I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_44
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/A;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->br:Lcom/google/android/gms/internal/ads/e;

    new-instance v1, Lcom/google/android/gms/internal/ads/D;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    const-string v3, "load_ad"

    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/D;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    new-instance v0, Lcom/google/android/gms/internal/ads/A;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/ads/A;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/A;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->FH:Lcom/google/android/gms/internal/ads/A;

    if-nez p1, :cond_33

    new-instance p1, Lcom/google/android/gms/internal/ads/A;

    invoke-direct {p1, v1, v2, v3, v3}, Lcom/google/android/gms/internal/ads/A;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/A;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->DW:Lcom/google/android/gms/internal/ads/A;

    return-void

    :cond_33
    new-instance v0, Lcom/google/android/gms/internal/ads/A;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/A;->j6()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/A;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/A;->FH()Lcom/google/android/gms/internal/ads/A;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/A;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/A;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->DW:Lcom/google/android/gms/internal/ads/A;

    return-void
.end method

.method public j6(Lcom/google/android/gms/internal/ads/J;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/NH;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->QX:Lcom/google/android/gms/internal/ads/NH;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/QH;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setAppEventListener"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->Ws:Lcom/google/android/gms/internal/ads/QH;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/WH;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setCorrelationIdProvider"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->XL:Lcom/google/android/gms/internal/ads/WH;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/cj;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setRewardedAdSkuListener"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->nw:Lcom/google/android/gms/internal/ads/cj;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/jj;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setRewardedVideoAdListener"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->ei:Lcom/google/android/gms/internal/ads/jj;

    return-void
.end method

.method public j6(Lcom/google/android/gms/internal/ads/kk;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->FH:Lcom/google/android/gms/internal/ads/A;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "awr"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    iget v1, p1, Lcom/google/android/gms/internal/ads/kk;->Hw:I

    const/4 v3, 0x3

    const/4 v4, -0x2

    if-eq v1, v4, :cond_33

    if-eq v1, v3, :cond_33

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->j6()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->J8()Lcom/google/android/gms/internal/ads/yk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/Y;->j6()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yk;->j6(Ljava/util/HashSet;)V

    :cond_33
    iget v0, p1, Lcom/google/android/gms/internal/ads/kk;->Hw:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3b

    iput-boolean v5, p0, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    return-void

    :cond_3b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->DW(Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "Ad refresh scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :cond_46
    iget v0, p1, Lcom/google/android/gms/internal/ads/kk;->Hw:I

    if-eq v0, v4, :cond_5e

    if-ne v0, v3, :cond_51

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->sG:Lcom/google/android/gms/internal/ads/YF;

    sget-object v1, Lcom/google/android/gms/internal/ads/_F;->v5:Lcom/google/android/gms/internal/ads/_F;

    goto :goto_55

    :cond_51
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->sG:Lcom/google/android/gms/internal/ads/YF;

    sget-object v1, Lcom/google/android/gms/internal/ads/_F;->Hw:Lcom/google/android/gms/internal/ads/_F;

    :goto_55
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/_F;)V

    iget p1, p1, Lcom/google/android/gms/internal/ads/kk;->Hw:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->J0(I)V

    return-void

    :cond_5e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->cn:Lcom/google/android/gms/internal/ads/xk;

    if-nez v1, :cond_6d

    new-instance v1, Lcom/google/android/gms/internal/ads/xk;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/xk;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->cn:Lcom/google/android/gms/internal/ads/xk;

    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Z;->j6()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/kk;->ei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazc;->Hw(Ljava/lang/String;)V

    :cond_7c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->gn:Lcom/google/android/gms/internal/ads/rE;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->j6(Lcom/google/android/gms/internal/ads/kk;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z

    move-result v0

    if-eqz v0, :cond_13d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    if-eqz v1, :cond_bb

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v3, :cond_b2

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/kk;->BT:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/mk;->j6(J)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/kk;->vy:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/mk;->DW(J)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/mk;->DW(Z)V

    :cond_b2
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->we:Lcom/google/android/gms/internal/ads/mk;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/mk;->j6(Z)V

    :cond_bb
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kk;->j6()Z

    move-result v1

    const-string v3, "0"

    const-string v4, "1"

    if-eqz v1, :cond_cd

    move-object v1, v4

    goto :goto_ce

    :cond_cd
    move-object v1, v3

    :goto_ce
    const-string v6, "is_mraid"

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/kk;->Ws:Z

    if-eqz v1, :cond_df

    move-object v1, v4

    goto :goto_e0

    :cond_df
    move-object v1, v3

    :goto_e0
    const-string v6, "is_mediation"

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_10b

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/tp;->j6()Z

    move-result v1

    if-eqz v1, :cond_106

    move-object v3, v4

    :cond_106
    const-string v1, "is_delay_pl"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->DW:Lcom/google/android/gms/internal/ads/A;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ttc"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->FH()Lcom/google/android/gms/internal/ads/s;

    move-result-object v0

    if-eqz v0, :cond_12f

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->FH()Lcom/google/android/gms/internal/ads/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/s;->j6(Lcom/google/android/gms/internal/ads/D;)Z

    :cond_12f
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->HE()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Y;->Hw()Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->g0()V

    :cond_13d
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/kk;->dx:Ljava/util/List;

    if-eqz v0, :cond_14e

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kk;->dx:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/util/List;)V

    :cond_14e
    return-void
.end method

.method public j6(Lcom/google/android/gms/internal/ads/lg;)V
    .registers 2

    const-string p1, "#006 Unexpected call to a deprecated method."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lk;)V
    .registers 10

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_36

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->yS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->yS:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/a;->dx(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    add-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/D;->j6(J)Lcom/google/android/gms/internal/ads/A;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "stc"

    aput-object v5, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasm;->yS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->DW:Lcom/google/android/gms/internal/ads/A;

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "arf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/D;->j6()Lcom/google/android/gms/internal/ads/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->FH:Lcom/google/android/gms/internal/ads/A;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasm;->gW:Ljava/lang/String;

    const-string v2, "gqi"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->VH:Lcom/google/android/gms/internal/ads/Ak;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    new-instance v1, Lcom/google/android/gms/ads/internal/A;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/A;-><init>(Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/lk;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/ZF;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    sget-object v1, Lcom/google/android/gms/internal/ads/_F;->FH:Lcom/google/android/gms/internal/ads/_F;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/_F;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V

    return-void
.end method

.method protected abstract j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;)V
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/qg;Ljava/lang/String;)V
    .registers 3

    const-string p1, "#006 Unexpected call to a deprecated method."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/tH;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setAdClickListener"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->J0:Lcom/google/android/gms/internal/ads/tH;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwf;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread.: setAdSize"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v1, :cond_1c

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v1, :cond_1c

    iget v0, v0, Lcom/google/android/gms/ads/internal/Y;->cb:I

    if-nez v0, :cond_1c

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yp;->j6(Lcom/google/android/gms/internal/ads/zzwf;)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    if-nez v0, :cond_23

    return-void

    :cond_23
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    invoke-virtual {v0, p1}, Landroid/widget/ViewSwitcher;->setMinimumHeight(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->Zo:Lcom/google/android/gms/ads/internal/Z;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->requestLayout()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzyv;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setIconAdOptions"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->gW:Lcom/google/android/gms/internal/ads/zzyv;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzzw;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setVideoOptions"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->er:Lcom/google/android/gms/internal/ads/zzzw;

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->Ws:Lcom/google/android/gms/internal/ads/QH;

    if-eqz v0, :cond_10

    :try_start_6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/QH;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method

.method public final j6(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/mk;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/Y;->j6(Ljava/util/HashSet;)V

    return-void
.end method

.method protected abstract j6(Lcom/google/android/gms/internal/ads/kk;Lcom/google/android/gms/internal/ads/kk;)Z
.end method

.method public j6(Lcom/google/android/gms/internal/ads/zzwb;)Z
    .registers 6

    const-string v0, "#008 Must be called on the main UI thread.: loadAd"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->EQ()Lcom/google/android/gms/internal/ads/DF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/DF;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->u7:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->tp:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwb;->DW()Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object p1

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    const-string v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->DW(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "dv"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string v2, "_newBundle"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/util/i;->DW(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    if-eqz v1, :cond_4c

    new-instance v1, Lcom/google/android/gms/internal/ads/dH;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/dH;-><init>(Lcom/google/android/gms/internal/ads/zzwb;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dH;->j6(Landroid/location/Location;)Lcom/google/android/gms/internal/ads/dH;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dH;->j6()Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object p1

    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/Y;->VH:Lcom/google/android/gms/internal/ads/Ak;

    if-nez v3, :cond_c9

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    if-eqz v1, :cond_57

    goto :goto_c9

    :cond_57
    const-string v0, "Starting ad request."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "SDK version: "

    if-eqz v1, :cond_73

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    :cond_73
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_78
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/A;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/D;->j6()Lcom/google/android/gms/internal/ads/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->DW:Lcom/google/android/gms/internal/ads/A;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->Zo:Z

    if-eqz v0, :cond_8d

    const-string v0, "This request is sent from a test device."

    goto :goto_b8

    :cond_8d
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x47

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Use AdRequest.Builder.addTestDevice(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\") to get test ads on this device."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->v5:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/M;->j6(Lcom/google/android/gms/internal/ads/zzwb;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->j6:Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    return p1

    :cond_c9
    :goto_c9
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->VH:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz v1, :cond_d0

    const-string v1, "Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes."

    goto :goto_d2

    :cond_d0
    const-string v1, "Loading already in progress, saving this object for future refreshes."

    :goto_d2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->VH:Lcom/google/android/gms/internal/ads/zzwb;

    return v0
.end method

.method protected abstract j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/D;)Z
.end method

.method public final nw(Ljava/lang/String;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setCustomData"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/Y;->KD:Ljava/lang/String;

    return-void
.end method

.method public final oy()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    return v0
.end method

.method public pause()V
    .registers 2

    const-string v0, "#008 Must be called on the main UI thread.: pause"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public final stopLoading()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: stopLoading"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/Y;->j6(Z)V

    return-void
.end method

.method public final tv()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->OM()V

    return-void
.end method

.method protected final v5(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dk;->j6(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method public final v5(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->u7:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/a;->tp:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/Y;->QX:Lcom/google/android/gms/internal/ads/NH;

    if-eqz p1, :cond_19

    :try_start_f
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/NH;->eN()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method public final vy()Lcom/google/android/gms/ads/internal/ta;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->we:Lcom/google/android/gms/ads/internal/ta;

    return-object v0
.end method

.method protected final wC()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    const-string v1, "javascript"

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->sy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v1

    :cond_17
    :try_start_17
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "media_type"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_23} :catch_28

    if-nez v0, :cond_27

    const/4 v0, 0x0

    return-object v0

    :cond_27
    return-object v1

    :catch_28
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final ya()V
    .registers 3

    const-string v0, "Ad clicked."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->J8:Lcom/google/android/gms/internal/ads/xH;

    if-eqz v0, :cond_15

    :try_start_b
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xH;->J0()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public ys()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->DW:Ljava/lang/String;

    return-object v0
.end method
