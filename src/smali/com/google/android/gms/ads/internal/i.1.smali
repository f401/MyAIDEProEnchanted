.class public final Lcom/google/android/gms/ads/internal/i;
.super Lcom/google/android/gms/internal/ads/BH;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/xH;

.field private final EQ:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ob;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Lcom/google/android/gms/internal/ads/Ge;

.field private final Hw:Lcom/google/android/gms/internal/ads/fb;

.field private final J0:Lcom/google/android/gms/internal/ads/zzacp;

.field private final J8:Lcom/google/android/gms/internal/ads/zzafz;

.field private final Mr:Ljava/lang/Object;

.field private final QX:Ljava/lang/String;

.field private final VH:Lcom/google/android/gms/internal/ads/ib;

.field private final Ws:Lcom/google/android/gms/internal/ads/WH;

.field private final XL:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final Zo:Lcom/google/android/gms/internal/ads/cc;

.field private aM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/aa;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Lcom/google/android/gms/internal/ads/rb;

.field private final j3:Lcom/google/android/gms/ads/internal/ta;

.field private final j6:Landroid/content/Context;

.field private final tp:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private final u7:Lcom/google/android/gms/internal/ads/zzwf;

.field private final v5:Lcom/google/android/gms/internal/ads/ub;

.field private final we:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/lb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/xH;Lcom/google/android/gms/internal/ads/fb;Lcom/google/android/gms/internal/ads/ub;Lcom/google/android/gms/internal/ads/cc;Lcom/google/android/gms/internal/ads/ib;Labcd/x;Labcd/x;Lcom/google/android/gms/internal/ads/zzacp;Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/WH;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/rb;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Ge;",
            "Lcom/google/android/gms/internal/ads/zzbbi;",
            "Lcom/google/android/gms/internal/ads/xH;",
            "Lcom/google/android/gms/internal/ads/fb;",
            "Lcom/google/android/gms/internal/ads/ub;",
            "Lcom/google/android/gms/internal/ads/cc;",
            "Lcom/google/android/gms/internal/ads/ib;",
            "Lx",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ob;",
            ">;",
            "Lx",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/lb;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzacp;",
            "Lcom/google/android/gms/internal/ads/zzafz;",
            "Lcom/google/android/gms/internal/ads/WH;",
            "Lcom/google/android/gms/ads/internal/ta;",
            "Lcom/google/android/gms/internal/ads/rb;",
            "Lcom/google/android/gms/internal/ads/zzwf;",
            "Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/BH;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/i;->Mr:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/i;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/i;->QX:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/i;->FH:Lcom/google/android/gms/internal/ads/Ge;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/i;->XL:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/i;->DW:Lcom/google/android/gms/internal/ads/xH;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/i;->VH:Lcom/google/android/gms/internal/ads/ib;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/i;->Hw:Lcom/google/android/gms/internal/ads/fb;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/i;->Zo:Lcom/google/android/gms/internal/ads/cc;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/i;->EQ:Labcd/x;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/i;->we:Labcd/x;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/i;->J0:Lcom/google/android/gms/internal/ads/zzacp;

    iput-object p13, p0, Lcom/google/android/gms/ads/internal/i;->J8:Lcom/google/android/gms/internal/ads/zzafz;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Ws:Lcom/google/android/gms/internal/ads/WH;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/i;->j3:Lcom/google/android/gms/ads/internal/ta;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/i;->gn:Lcom/google/android/gms/internal/ads/rb;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/i;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/i;->tp:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->j6:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/zzwb;I)V
    .registers 10

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->cX:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/i;->J0(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->ya:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Zo:Lcom/google/android/gms/internal/ads/cc;

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/i;->J0(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->j6:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/ads/internal/C;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i;->j3:Lcom/google/android/gms/ads/internal/ta;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwf;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/i;->QX:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/i;->FH:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/i;->XL:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/C;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->Hw:Lcom/google/android/gms/internal/ads/fb;

    const-string v2, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    const-string v2, "setOnUnifiedNativeAdLoadedListener must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->Zo:Lcom/google/android/gms/internal/ads/cc;

    const-string v2, "#008 Must be called on the main UI thread.: setInstreamAdLoadCallback"

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->U2:Lcom/google/android/gms/internal/ads/cc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->VH:Lcom/google/android/gms/internal/ads/ib;

    const-string v2, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->EQ:Labcd/x;

    const-string v2, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->DW:Lcom/google/android/gms/internal/ads/xH;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->DW(Lcom/google/android/gms/internal/ads/xH;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->we:Labcd/x;

    const-string v2, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->Qs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/C;->Zo(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->J0:Lcom/google/android/gms/internal/ads/zzacp;

    const-string v2, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->J8:Lcom/google/android/gms/internal/ads/zzafz;

    const-string v2, "#008 Must be called on the main UI thread.: setInstreamAdConfiguration"

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->yS:Lcom/google/android/gms/internal/ads/zzafz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->Ws:Lcom/google/android/gms/internal/ads/WH;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/WH;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/C;->J8(I)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    goto/16 :goto_0
.end method

.method static synthetic DW(Lcom/google/android/gms/ads/internal/i;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->K3()Z

    move-result v0

    return v0
.end method

.method private final FH(Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 10

    const/4 v7, 0x1

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->cX:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/i;->J0(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/na;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->j6:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i;->j3:Lcom/google/android/gms/ads/internal/ta;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/i;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/i;->QX:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/i;->FH:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/i;->XL:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/na;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->gn:Lcom/google/android/gms/internal/ads/rb;

    const-string v2, "setOnPublisherAdViewLoadedListener must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->BT:Lcom/google/android/gms/internal/ads/rb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->tp:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->FH()Lcom/google/android/gms/internal/ads/QH;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->tp:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->FH()Lcom/google/android/gms/internal/ads/QH;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/QH;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->tp:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->DW()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/na;->Ws(Z)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->Hw:Lcom/google/android/gms/internal/ads/fb;

    const-string v2, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    const-string v2, "setOnUnifiedNativeAdLoadedListener must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->VH:Lcom/google/android/gms/internal/ads/ib;

    const-string v2, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->EQ:Labcd/x;

    const-string v2, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->we:Labcd/x;

    const-string v2, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->J0:Lcom/google/android/gms/internal/ads/zzacp;

    const-string v2, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v1, v2, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->Qs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/na;->Zo(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->DW:Lcom/google/android/gms/internal/ads/xH;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->DW(Lcom/google/android/gms/internal/ads/xH;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->Ws:Lcom/google/android/gms/internal/ads/WH;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/WH;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->OM()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i;->gn:Lcom/google/android/gms/internal/ads/rb;

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/na;->VH(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->OM()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string v2, "ina"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->gn:Lcom/google/android/gms/internal/ads/rb;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string v2, "iba"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/na;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    goto/16 :goto_0
.end method

.method private final J0(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->DW:Lcom/google/android/gms/internal/ads/xH;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xH;->Zo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed calling onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final K3()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Zo:Lcom/google/android/gms/internal/ads/cc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->gn:Lcom/google/android/gms/internal/ads/rb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final OM()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Hw:Lcom/google/android/gms/internal/ads/fb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->VH:Lcom/google/android/gms/internal/ads/ib;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->EQ:Labcd/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/x;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Qs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->VH:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->Hw:Lcom/google/android/gms/internal/ads/fb;

    if-eqz v1, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v1, :cond_2

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->EQ:Labcd/x;

    invoke-virtual {v1}, Labcd/x;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->Zo:Lcom/google/android/gms/internal/ads/cc;

    if-eqz v1, :cond_4

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/i;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Mr:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/i;->FH(Lcom/google/android/gms/internal/ads/zzwb;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/internal/ads/zzwb;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/i;->DW(Lcom/google/android/gms/internal/ads/zzwb;I)V

    return-void
.end method

.method private static j6(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/internal/j;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/j;-><init>(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/internal/ads/zzwb;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/i;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final aX()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i;->Mr:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/aa;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aa;->aX()Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final cb()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i;->Mr:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/aa;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/aa;->cb()Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;I)V
    .registers 5

    if-lez p2, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/k;-><init>(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/internal/ads/zzwb;I)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/i;->j6(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of ads has to be more than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final oy()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i;->Mr:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/aa;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->oy()Z

    move-result v0

    :goto_0
    monitor-exit v2

    :goto_1
    return v0

    :cond_0
    monitor-exit v2

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
