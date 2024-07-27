.class public Lcom/google/android/gms/internal/ads/iH;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/_G;

.field private final FH:Lcom/google/android/gms/internal/ads/wI;

.field private final Hw:Lcom/google/android/gms/internal/ads/Eb;

.field private final VH:Lcom/google/android/gms/internal/ads/dg;

.field private final Zo:Lcom/google/android/gms/internal/ads/Lj;

.field private final gn:Lcom/google/android/gms/internal/ads/Fb;

.field private final j6:Lcom/google/android/gms/internal/ads/aH;

.field private final v5:Lcom/google/android/gms/internal/ads/nj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aH;Lcom/google/android/gms/internal/ads/_G;Lcom/google/android/gms/internal/ads/wI;Lcom/google/android/gms/internal/ads/Eb;Lcom/google/android/gms/internal/ads/nj;Lcom/google/android/gms/internal/ads/Lj;Lcom/google/android/gms/internal/ads/dg;Lcom/google/android/gms/internal/ads/Fb;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iH;->j6:Lcom/google/android/gms/internal/ads/aH;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/iH;->DW:Lcom/google/android/gms/internal/ads/_G;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/iH;->FH:Lcom/google/android/gms/internal/ads/wI;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/iH;->Hw:Lcom/google/android/gms/internal/ads/Eb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/iH;->v5:Lcom/google/android/gms/internal/ads/nj;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/iH;->Zo:Lcom/google/android/gms/internal/ads/Lj;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/iH;->VH:Lcom/google/android/gms/internal/ads/dg;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/iH;->gn:Lcom/google/android/gms/internal/ads/Fb;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/iH;)Lcom/google/android/gms/internal/ads/_G;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->DW:Lcom/google/android/gms/internal/ads/_G;

    return-object v0
.end method

.method private static DW(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->VH()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/iH;)Lcom/google/android/gms/internal/ads/Eb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->Hw:Lcom/google/android/gms/internal/ads/Eb;

    return-object v0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/iH;)Lcom/google/android/gms/internal/ads/dg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->VH:Lcom/google/android/gms/internal/ads/dg;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/iH;)Lcom/google/android/gms/internal/ads/aH;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iH;->j6:Lcom/google/android/gms/internal/ads/aH;

    return-object v0
.end method

.method static synthetic j6(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/iH;->DW(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;)Lcom/google/android/gms/internal/ads/DH;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/nH;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/nH;-><init>(Lcom/google/android/gms/internal/ads/iH;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pH;->j6(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/DH;

    return-object v0
.end method

.method public final j6(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/Ka;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/oH;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/oH;-><init>(Lcom/google/android/gms/internal/ads/iH;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pH;->j6(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Ka;

    return-object v0
.end method

.method public final j6(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/eg;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/ads/kH;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/kH;-><init>(Lcom/google/android/gms/internal/ads/iH;Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "useClientJar flag not found in activity intent extras."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/pH;->j6(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eg;

    return-object v0

    :cond_0
    const-string v3, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
