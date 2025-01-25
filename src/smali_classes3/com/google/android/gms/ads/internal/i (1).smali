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
            "Lx<",
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
            "Ljava/lang/ref/WeakReference<",
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
            "Lx<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/lb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/xH;Lcom/google/android/gms/internal/ads/fb;Lcom/google/android/gms/internal/ads/ub;Lcom/google/android/gms/internal/ads/cc;Lcom/google/android/gms/internal/ads/ib;Labcd/x;Labcd/x;Lcom/google/android/gms/internal/ads/zzacp;Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/WH;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/rb;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .registers 22
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
            "Lx<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ob;",
            ">;",
            "Lx<",
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

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/BH;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->Mr:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/i;->j6:Landroid/content/Context;

    move-object v2, p2

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->QX:Ljava/lang/String;

    move-object v2, p3

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->FH:Lcom/google/android/gms/internal/ads/Ge;

    move-object v2, p4

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->XL:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object v2, p5

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->DW:Lcom/google/android/gms/internal/ads/xH;

    move-object v2, p9

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->VH:Lcom/google/android/gms/internal/ads/ib;

    move-object v2, p6

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->Hw:Lcom/google/android/gms/internal/ads/fb;

    move-object v2, p7

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    move-object v2, p8

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->Zo:Lcom/google/android/gms/internal/ads/cc;

    move-object v2, p10

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->EQ:Labcd/x;

    move-object v2, p11

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->we:Labcd/x;

    move-object v2, p12

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->J0:Lcom/google/android/gms/internal/ads/zzacp;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->J8:Lcom/google/android/gms/internal/ads/zzafz;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->Ws:Lcom/google/android/gms/internal/ads/WH;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->j3:Lcom/google/android/gms/ads/internal/ta;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->gn:Lcom/google/android/gms/internal/ads/rb;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/i;->tp:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/zzwb;I)V
    .registers 12

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->cX:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v0, :cond_1b

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/i;->J0(I)V

    return-void

    :cond_1b
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->ya:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Zo:Lcom/google/android/gms/internal/ads/cc;

    if-eqz v0, :cond_35

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/i;->J0(I)V

    return-void

    :cond_35
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/i;->j6:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/ads/internal/C;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/i;->j3:Lcom/google/android/gms/ads/internal/ta;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzwf;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/i;->QX:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/i;->FH:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/i;->XL:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/ads/internal/C;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;)V

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

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/ads/internal/i;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->K3()Z

    move-result p0

    return p0
.end method

.method private final FH(Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 10

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->cX:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v0, :cond_1b

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/i;->J0(I)V

    return-void

    :cond_1b
    new-instance v7, Lcom/google/android/gms/ads/internal/na;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->j6:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i;->j3:Lcom/google/android/gms/ads/internal/ta;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/i;->u7:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/i;->QX:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/i;->FH:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/i;->XL:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/na;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->gn:Lcom/google/android/gms/internal/ads/rb;

    const-string v1, "setOnPublisherAdViewLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->BT:Lcom/google/android/gms/internal/ads/rb;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->tp:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->FH()Lcom/google/android/gms/internal/ads/QH;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->tp:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->FH()Lcom/google/android/gms/internal/ads/QH;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/QH;)V

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->tp:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->DW()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/na;->Ws(Z)V

    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Hw:Lcom/google/android/gms/internal/ads/fb;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    const-string v1, "setOnUnifiedNativeAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->VH:Lcom/google/android/gms/internal/ads/ib;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->EQ:Labcd/x;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->lg:Labcd/x;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->we:Labcd/x;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->a8:Labcd/x;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->J0:Lcom/google/android/gms/internal/ads/zzacp;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/Y;->rN:Lcom/google/android/gms/internal/ads/zzacp;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->Qs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/na;->Zo(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->DW:Lcom/google/android/gms/internal/ads/xH;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->DW(Lcom/google/android/gms/internal/ads/xH;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Ws:Lcom/google/android/gms/internal/ads/WH;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/WH;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->OM()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->gn:Lcom/google/android/gms/internal/ads/rb;

    if-eqz v1, :cond_cd

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cd
    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/na;->VH(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->OM()Z

    move-result v0

    if-eqz v0, :cond_dd

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string v1, "ina"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_dd
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->gn:Lcom/google/android/gms/internal/ads/rb;

    if-eqz v0, :cond_e8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string v1, "iba"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_e8
    invoke-virtual {v7, p1}, Lcom/google/android/gms/ads/internal/na;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    return-void
.end method

.method private final J0(I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/i;->DW:Lcom/google/android/gms/internal/ads/xH;

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :try_start_5
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/xH;->Zo(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    const-string v0, "Failed calling onAdFailedToLoad."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method

.method private final K3()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Zo:Lcom/google/android/gms/internal/ads/cc;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->gn:Lcom/google/android/gms/internal/ads/rb;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private final OM()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Hw:Lcom/google/android/gms/internal/ads/fb;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->VH:Lcom/google/android/gms/internal/ads/ib;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->EQ:Labcd/x;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Labcd/x;->size()I

    move-result v0

    if-lez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method private final Qs()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->VH:Lcom/google/android/gms/internal/ads/ib;

    const-string v2, "1"

    if-eqz v1, :cond_e

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->Hw:Lcom/google/android/gms/internal/ads/fb;

    const-string v3, "2"

    if-eqz v1, :cond_17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->v5:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v1, :cond_20

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->EQ:Labcd/x;

    invoke-virtual {v1}, Labcd/x;->size()I

    move-result v1

    if-lez v1, :cond_2d

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->Zo:Lcom/google/android/gms/internal/ads/cc;

    if-eqz v1, :cond_37

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/i;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/i;->Mr:Ljava/lang/Object;

    return-object p0
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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Mr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/aa;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/aa;->aX()Ljava/lang/String;

    move-result-object v2

    :cond_14
    monitor-exit v0

    return-object v2

    :cond_16
    monitor-exit v0

    return-object v2

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final cb()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Mr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/aa;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/aa;->cb()Ljava/lang/String;

    move-result-object v2

    :cond_14
    monitor-exit v0

    return-object v2

    :cond_16
    monitor-exit v0

    return-object v2

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;I)V
    .registers 4

    if-lez p2, :cond_b

    new-instance v0, Lcom/google/android/gms/ads/internal/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/k;-><init>(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/internal/ads/zzwb;I)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/i;->j6(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of ads has to be more than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final oy()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->Mr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->aM:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/aa;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/a;->oy()Z

    move-result v2

    :cond_14
    monitor-exit v0

    return v2

    :cond_16
    monitor-exit v0

    return v2

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
