.class public final Lcom/google/android/gms/internal/ads/zzazc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Ljava/lang/String;

.field private EQ:I

.field private FH:Ljava/lang/String;

.field private Hw:Ljava/lang/String;

.field private J0:F

.field private J8:F

.field private QX:Landroid/os/Handler;

.field private VH:F

.field private Ws:F

.field private XL:Ljava/lang/Runnable;

.field private final Zo:F

.field private gn:F

.field private final j6:Landroid/content/Context;

.field private tp:I

.field private u7:F

.field private v5:Ljava/lang/String;

.field private we:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->tp:I

    new-instance v0, Lcom/google/android/gms/internal/ads/il;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/il;-><init>(Lcom/google/android/gms/internal/ads/zzazc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->XL:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->j6:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->Zo:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->EQ:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ll;->DW()Landroid/os/Looper;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ll;->j6()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->QX:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzazc;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazc;->DW:Ljava/lang/String;

    return-void
.end method

.method private static j6(Ljava/util/List;Ljava/lang/String;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private final j6(IFF)V
    .registers 9

    if-nez p1, :cond_c

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->tp:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzazc;->VH:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzazc;->gn:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzazc;->u7:F

    return-void

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->tp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    return-void

    :cond_12
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_7c

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->gn:F

    cmpl-float p1, p3, p1

    if-lez p1, :cond_1f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzazc;->gn:F

    goto :goto_27

    :cond_1f
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->u7:F

    cmpg-float p1, p3, p1

    if-gez p1, :cond_27

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzazc;->u7:F

    :cond_27
    :goto_27
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->gn:F

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzazc;->u7:F

    sub-float/2addr p1, p3

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzazc;->Zo:F

    const/high16 v4, 0x41f00000  # 30.0f

    mul-float v4, v4, p3

    cmpl-float p1, p1, v4

    if-lez p1, :cond_39

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzazc;->tp:I

    return-void

    :cond_39
    const/4 p1, 0x3

    if-eqz v0, :cond_50

    if-ne v0, v2, :cond_3f

    goto :goto_50

    :cond_3f
    if-eq v0, v3, :cond_43

    if-ne v0, p1, :cond_61

    :cond_43
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazc;->VH:F

    sub-float v1, p2, v1

    const/high16 v4, -0x3db80000  # -50.0f

    mul-float p3, p3, v4

    cmpg-float p3, v1, p3

    if-gtz p3, :cond_61

    goto :goto_5c

    :cond_50
    :goto_50
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazc;->VH:F

    sub-float v1, p2, v1

    const/high16 v4, 0x42480000  # 50.0f

    mul-float p3, p3, v4

    cmpl-float p3, v1, p3

    if-ltz p3, :cond_61

    :goto_5c
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzazc;->VH:F

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->tp:I

    :cond_61
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzazc;->tp:I

    if-eq p3, v3, :cond_73

    if-ne p3, p1, :cond_68

    goto :goto_73

    :cond_68
    if-ne p3, v2, :cond_84

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->VH:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_84

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzazc;->VH:F

    return-void

    :cond_73
    :goto_73
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->VH:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_84

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzazc;->VH:F

    return-void

    :cond_7c
    if-ne p1, v3, :cond_84

    const/4 p1, 0x4

    if-ne v0, p1, :cond_84

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzazc;->j6()V

    :cond_84
    return-void
.end method

.method private final j6(FFFF)Z
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->we:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->EQ:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3a

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->J0:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzazc;->EQ:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3a

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->J8:F

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzazc;->EQ:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3a

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->Ws:F

    sub-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzazc;->EQ:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3a

    const/4 p1, 0x1

    return p1

    :cond_3a
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final synthetic DW()V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Ws()Lcom/google/android/gms/internal/ads/ol;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazc;->j6:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazc;->FH:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazc;->Hw:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzazc;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ol;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->Hw:Ljava/lang/String;

    return-void
.end method

.method final synthetic FH()V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Ws()Lcom/google/android/gms/internal/ads/ol;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazc;->j6:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazc;->FH:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazc;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ol;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final FH(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->DW:Ljava/lang/String;

    return-void
.end method

.method final synthetic Hw()V
    .registers 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->tp:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzazc;->j6()V

    return-void
.end method

.method public final Hw(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->v5:Ljava/lang/String;

    return-void
.end method

.method public final j6()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->j6:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_c

    const-string v0, "Can not create dialog without Activity Context"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Ws()Lcom/google/android/gms/internal/ads/ol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ol;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_18
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_18} :catch_70

    if-nez v0, :cond_1d

    const-string v0, "Creative Preview (Enabled)"

    goto :goto_1f

    :cond_1d
    const-string v0, "Creative Preview"

    :goto_1f
    :try_start_1f
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Ws()Lcom/google/android/gms/internal/ads/ol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ol;->DW()Z

    move-result v1
    :try_end_27
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1f .. :try_end_27} :catch_70

    if-eqz v1, :cond_2c

    const-string v1, "Troubleshooting (Enabled)"

    goto :goto_2e

    :cond_2c
    const-string v1, "Troubleshooting"

    :goto_2e
    :try_start_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Ad Information"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzazc;->j6(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v3

    invoke-static {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzazc;->j6(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzazc;->j6(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzazc;->j6:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Vk;->DW()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v5, "Select a Debug Mode"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v6, Lcom/google/android/gms/internal/ads/jl;

    invoke-direct {v6, p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/jl;-><init>(Lcom/google/android/gms/internal/ads/zzazc;III)V

    invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_6f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2e .. :try_end_6f} :catch_70

    return-void

    :catch_70
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ek;->j6()Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string v1, "Ads"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7e
    return-void
.end method

.method final synthetic j6(IIILandroid/content/DialogInterface;I)V
    .registers 6

    if-ne p5, p1, :cond_9b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->j6:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_e

    const-string p1, "Can not create dialog without Activity Context"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->DW:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_71

    const-string p2, "\\+"

    const-string p3, "%20"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_62

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " = "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n\n"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_71

    goto :goto_73

    :cond_71
    const-string p1, "No debug information"

    :goto_73
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzazc;->j6:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p3, "Ad Information"

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p3, Lcom/google/android/gms/internal/ads/kl;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/ads/kl;-><init>(Lcom/google/android/gms/internal/ads/zzazc;Ljava/lang/String;)V

    const-string p1, "Share"

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "Close"

    sget-object p3, Lcom/google/android/gms/internal/ads/ll;->j6:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_9b
    if-ne p5, p2, :cond_ab

    const-string p1, "Debug mode [Creative Preview] selected."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/ml;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/ml;-><init>(Lcom/google/android/gms/internal/ads/zzazc;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    return-void

    :cond_ab
    if-ne p5, p3, :cond_ba

    const-string p1, "Debug mode [Troubleshooting] selected."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/nl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/nl;-><init>(Lcom/google/android/gms/internal/ads/zzazc;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    :cond_ba
    return-void
.end method

.method public final j6(Landroid/view/MotionEvent;)V
    .registers 12

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->rB:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ac

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-nez v0, :cond_30

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzazc;->tp:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->we:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->J0:F

    return-void

    :cond_30
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzazc;->tp:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_ab

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-nez v4, :cond_61

    if-ne v0, v6, :cond_61

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzazc;->tp:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->J8:F

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->Ws:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->QX:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->XL:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->CN:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_61
    if-ne v4, v6, :cond_ab

    const/4 v4, 0x2

    if-eq v3, v4, :cond_67

    goto :goto_9d

    :cond_67
    if-ne v0, v4, :cond_a0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_6b
    if-ge v0, v2, :cond_87

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v8

    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v9

    invoke-direct {p0, v4, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzazc;->j6(FFFF)Z

    move-result v4

    if-nez v4, :cond_84

    const/4 v3, 0x1

    :cond_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzazc;->j6(FFFF)Z

    move-result p1

    if-nez p1, :cond_9f

    :goto_9d
    const/4 v1, 0x1

    goto :goto_a0

    :cond_9f
    move v1, v3

    :cond_a0
    :goto_a0
    if-eqz v1, :cond_ab

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzazc;->tp:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->QX:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->XL:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_ab
    return-void

    :cond_ac
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v2, 0x0

    :goto_b1
    if-ge v2, v0, :cond_c5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzazc;->j6(IFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    :cond_c5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazc;->j6(IFF)V

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->FH:Ljava/lang/String;

    return-void
.end method

.method final synthetic j6(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzazc;->j6:Landroid/content/Context;

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "Share via"

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
