.class public Lcom/google/android/gms/ads/internal/overlay/c;
.super Lcom/google/android/gms/internal/ads/fg;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/v;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final j6:I


# instance fields
.field protected final DW:Landroid/app/Activity;

.field private EQ:Z

.field FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field Hw:Lcom/google/android/gms/internal/ads/Mo;

.field private J0:Z

.field J8:I

.field private Mr:Z

.field private QX:Ljava/lang/Runnable;

.field private U2:Z

.field private VH:Z

.field private final Ws:Ljava/lang/Object;

.field private XL:Z

.field private Zo:Lcom/google/android/gms/ads/internal/overlay/n;

.field private aM:Z

.field private gn:Landroid/widget/FrameLayout;

.field private j3:Z

.field private tp:Z

.field private u7:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private v5:Lcom/google/android/gms/ads/internal/overlay/h;

.field private we:Lcom/google/android/gms/ads/internal/overlay/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/c;->j6:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fg;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->VH:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->tp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->EQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->J0:Z

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->J8:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Ws:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j3:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Mr:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->U2:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    return-void
.end method

.method private final XL(Z)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->LA:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/o;-><init>()V

    const/16 v2, 0x32

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/o;->v5:I

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    move v3, v0

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/o;->j6:I

    if-eqz p1, :cond_25

    const/4 v3, 0x0

    goto :goto_26

    :cond_25
    move v3, v0

    :goto_26
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/o;->DW:I

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/o;->FH:I

    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/o;->Hw:I

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/n;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/n;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/v;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Zo:Lcom/google/android/gms/ads/internal/overlay/n;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_45

    const/16 v1, 0xb

    goto :goto_47

    :cond_45
    const/16 v1, 0x9

    :goto_47
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->VH:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/c;->j6(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Zo:Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final aM(Z)V
    .registers 19

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->aM:Z

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_22d

    invoke-static {}, Lcom/google/android/gms/common/util/o;->tp()Z

    move-result v3

    if-eqz v3, :cond_3e

    sget-object v3, Lcom/google/android/gms/internal/ads/p;->Z3:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result v3

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x1

    :goto_3f
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Ws:Lcom/google/android/gms/ads/internal/zzaq;

    const/4 v5, 0x0

    if-eqz v4, :cond_4c

    iget-boolean v4, v4, Lcom/google/android/gms/ads/internal/zzaq;->DW:Z

    if-eqz v4, :cond_4c

    const/4 v4, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v4, 0x0

    :goto_4d
    iget-boolean v6, v1, Lcom/google/android/gms/ads/internal/overlay/c;->EQ:Z

    if-eqz v6, :cond_53

    if-eqz v4, :cond_73

    :cond_53
    if-eqz v3, :cond_73

    const/16 v3, 0x400

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-static {}, Lcom/google/android/gms/common/util/o;->Zo()Z

    move-result v3

    if-eqz v3, :cond_73

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Ws:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v3, :cond_73

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzaq;->VH:Z

    if-eqz v3, :cond_73

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_73
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    const/4 v4, 0x0

    if-eqz v3, :cond_7f

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v3

    goto :goto_80

    :cond_7f
    move-object v3, v4

    :goto_80
    if-eqz v3, :cond_87

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/tp;->u7()Z

    move-result v3

    goto :goto_88

    :cond_87
    const/4 v3, 0x0

    :goto_88
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/c;->J0:Z

    if-eqz v3, :cond_ca

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->tp:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/Vk;->FH()I

    move-result v7

    if-ne v6, v7, :cond_ac

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v2, :cond_a9

    :goto_a8
    const/4 v5, 0x1

    :cond_a9
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/c;->J0:Z

    goto :goto_ca

    :cond_ac
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->tp:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/Vk;->Hw()I

    move-result v7

    if-ne v6, v7, :cond_ca

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a9

    goto :goto_a8

    :cond_ca
    :goto_ca
    iget-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/c;->J0:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Delay onShow to next orientation change: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->tp:I

    invoke-virtual {v1, v5}, Lcom/google/android/gms/ads/internal/overlay/c;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_f8

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :cond_f8
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->EQ:Z

    if-nez v0, :cond_101

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    const/high16 v5, -0x1000000

    goto :goto_105

    :cond_101
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    sget v5, Lcom/google/android/gms/ads/internal/overlay/c;->j6:I

    :goto_105
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/c;->aM:Z

    if-eqz p1, :cond_1ca

    :try_start_113
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Zo()Lcom/google/android/gms/internal/ads/So;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_128

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    move-object v7, v0

    goto :goto_129

    :cond_128
    move-object v7, v4

    :goto_129
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_139

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->P8()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_13a

    :cond_139
    move-object v8, v4

    :goto_13a
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->J0:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_14e

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->vy()Lcom/google/android/gms/ads/internal/ta;

    move-result-object v0

    move-object v15, v0

    goto :goto_14f

    :cond_14e
    move-object v15, v4

    :goto_14f
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/YF;->j6()Lcom/google/android/gms/internal/ads/YF;

    move-result-object v16

    move v10, v3

    invoke-static/range {v6 .. v16}, Lcom/google/android/gms/internal/ads/So;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_15e} :catch_1bc

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v5

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->QX:Lcom/google/android/gms/ads/internal/gmsg/i;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->v5:Lcom/google/android/gms/ads/internal/gmsg/k;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->u7:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_176

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tp;->FH()Lcom/google/android/gms/ads/internal/ua;

    move-result-object v4

    :cond_176
    move-object v13, v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v5 .. v15}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;ZLcom/google/android/gms/ads/internal/gmsg/F;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/ag;Lcom/google/android/gms/internal/ads/Wj;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/d;

    invoke-direct {v4, v1}, Lcom/google/android/gms/ads/internal/overlay/d;-><init>(Lcom/google/android/gms/ads/internal/overlay/c;)V

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/up;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->we:Ljava/lang/String;

    if-eqz v4, :cond_19a

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/Mo;->loadUrl(Ljava/lang/String;)V

    goto :goto_1aa

    :cond_19a
    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->gn:Ljava/lang/String;

    if-eqz v7, :cond_1b4

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Zo:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/Mo;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1aa
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_1d5

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/ads/internal/overlay/c;)V

    goto :goto_1d5

    :cond_1b4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/f;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/f;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1bc
    move-exception v0

    const-string v2, "Error obtaining webview."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/f;

    const-string v2, "Could not obtain webview for the overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ca
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/Mo;->j6(Landroid/content/Context;)V

    :cond_1d5
    :goto_1d5
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->DW(Lcom/google/android/gms/ads/internal/overlay/c;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_1e9

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->XL()Labcd/ox;

    move-result-object v0

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    invoke-static {v0, v4}, Lcom/google/android/gms/ads/internal/overlay/c;->j6(Labcd/ox;Landroid/view/View;)V

    :cond_1e9
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_200

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_200

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_200
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->EQ:Z

    if-eqz v0, :cond_209

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Sf()V

    :cond_209
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_21e

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->J0:Z

    if-nez v0, :cond_21e

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/c;->v5()V

    :cond_21e
    invoke-direct {v1, v3}, Lcom/google/android/gms/ads/internal/overlay/c;->XL(Z)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->we()Z

    move-result v0

    if-eqz v0, :cond_22c

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/ads/internal/overlay/c;->j6(ZZ)V

    :cond_22c
    return-void

    :cond_22d
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/f;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/f;-><init>(Ljava/lang/String;)V

    goto :goto_236

    :goto_235
    throw v0

    :goto_236
    goto :goto_235
.end method

.method private final hG()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j3:Z

    if-eqz v0, :cond_d

    goto :goto_50

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j3:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_4d

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->J8:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Ws:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1c
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->XL:Z

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->tp()Z

    move-result v1

    if-eqz v1, :cond_48

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/e;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/e;-><init>(Lcom/google/android/gms/ads/internal/overlay/c;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->QX:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->QX:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/p;->e9:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :cond_48
    monitor-exit v0

    goto :goto_4d

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_4a

    throw v1

    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->g0()V

    :cond_50
    :goto_50
    return-void
.end method

.method private static j6(Labcd/ox;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bg;->j6(Labcd/ox;Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method private final v5()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->v5()V

    return-void
.end method


# virtual methods
.method public final An()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->aM:Z

    return-void
.end method

.method public final IS()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->mu:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vk;->DW(Lcom/google/android/gms/internal/ads/Mo;)Z

    return-void

    :cond_25
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public final K3()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->J8:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final Lx()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/g;->DW:Z

    return-void
.end method

.method public final OM()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->VH:Z

    if-eqz v1, :cond_d

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->tp:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->setRequestedOrientation(I)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->gn:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->aM:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->gn:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->gn:Landroid/widget/FrameLayout;

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->u7:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->u7:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->VH:Z

    return-void
.end method

.method public final Qs()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Zo:Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->XL(Z)V

    return-void
.end method

.method public final ct()V
    .registers 1

    return-void
.end method

.method public final ee()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->J8:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final fd()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->J0:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->J0:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->v5()V

    :cond_a
    return-void
.end method

.method final g0()V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Mr:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Mr:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->v5:Lcom/google/android/gms/ads/internal/overlay/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/h;->Hw:Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Mo;->DW(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->v5:Lcom/google/android/gms/ads/internal/overlay/h;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/h;->FH:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->v5:Lcom/google/android/gms/ads/internal/overlay/h;

    iget v4, v3, Lcom/google/android/gms/ads/internal/overlay/h;->j6:I

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/h;->DW:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->v5:Lcom/google/android/gms/ads/internal/overlay/h;

    goto :goto_50

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/Mo;->j6(Landroid/content/Context;)V

    :cond_50
    :goto_50
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_5d

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->FH:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_5d

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->uC()V

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_74

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_74

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->XL()Labcd/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/c;->j6(Labcd/ox;Landroid/view/View;)V

    :cond_74
    return-void
.end method

.method public final j6(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->gn:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->gn:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->gn:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->aM:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->u7:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->VH:Z

    return-void
.end method

.method public final j6(ZZ)V
    .registers 9

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->QO:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Ws:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v0, :cond_22

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzaq;->gn:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    sget-object v3, Lcom/google/android/gms/internal/ads/p;->sM:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_43

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Ws:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v3, :cond_43

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzaq;->u7:Z

    if-eqz v3, :cond_43

    const/4 v3, 0x1

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_5a

    if-eqz v0, :cond_5a

    if-nez v3, :cond_5a

    new-instance p1, Lcom/google/android/gms/internal/ads/_f;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    const-string v5, "useCustomClose"

    invoke-direct {p1, v4, v5}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/_f;->j6(Ljava/lang/String;)V

    :cond_5a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Zo:Lcom/google/android/gms/ads/internal/overlay/n;

    if-eqz p1, :cond_68

    if-nez v3, :cond_64

    if-eqz p2, :cond_65

    if-nez v0, :cond_65

    :cond_64
    const/4 v1, 0x1

    :cond_65
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/n;->j6(Z)V

    :cond_68
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->hG()V

    return-void
.end method

.method public final onPause()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->OM()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->FH:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->onPause()V

    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->mu:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->v5:Lcom/google/android/gms/ads/internal/overlay/h;

    if-nez v0, :cond_36

    :cond_2e
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vk;->j6(Lcom/google/android/gms/internal/ads/Mo;)Z

    :cond_36
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->hG()V

    return-void
.end method

.method public final onResume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->FH:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->onResume()V

    :cond_9
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->mu:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vk;->DW(Lcom/google/android/gms/internal/ads/Mo;)Z

    return-void

    :cond_2e
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method public final sT()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->J8:I

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->UI:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->Ed:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_5d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->St:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->XF:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_5d

    return-void

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final ti()Z
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->J8:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->VH()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    const-string v2, "onbackblocked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1a
    return v0
.end method

.method public tp(Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->tp:Z

    const/4 v2, 0x3

    :try_start_14
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j6(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_d2

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->J0:Lcom/google/android/gms/internal/ads/zzbbi;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbbi;->FH:I

    const v4, 0x7270e0

    if-le v3, v4, :cond_2d

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->J8:I

    :cond_2d
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shouldCallOnOverlayOpened"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->U2:Z

    :cond_43
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Ws:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Ws:Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzaq;->j6:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->EQ:Z

    goto :goto_54

    :cond_52
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->EQ:Z

    :goto_54
    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->EQ:Z

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Ws:Lcom/google/android/gms/ads/internal/zzaq;

    iget v3, v3, Lcom/google/android/gms/ads/internal/zzaq;->Zo:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6a

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/i;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/ads/internal/overlay/i;-><init>(Lcom/google/android/gms/ads/internal/overlay/c;Lcom/google/android/gms/ads/internal/overlay/e;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ak;->v5()Lcom/google/android/gms/internal/ads/Hm;

    :cond_6a
    if-nez p1, :cond_90

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->FH:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz p1, :cond_7d

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->U2:Z

    if-eqz p1, :cond_7d

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->FH:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/m;->ep()V

    :cond_7d
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->EQ:I

    if-eq p1, v1, :cond_90

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->DW:Lcom/google/android/gms/internal/ads/WG;

    if-eqz p1, :cond_90

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->DW:Lcom/google/android/gms/internal/ads/WG;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/WG;->J0()V

    :cond_90
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/g;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->J8:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->J0:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-direct {p1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->we:Lcom/google/android/gms/ads/internal/overlay/g;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->EQ:I

    if-eq p1, v1, :cond_ce

    const/4 v3, 0x2

    if-eq p1, v3, :cond_bf

    if-ne p1, v2, :cond_b7

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/c;->aM(Z)V

    return-void

    :cond_b7
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/f;

    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bf
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/h;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->FH:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-direct {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/h;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->v5:Lcom/google/android/gms/ads/internal/overlay/h;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->aM(Z)V

    return-void

    :cond_ce
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->aM(Z)V

    return-void

    :cond_d2
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/f;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/f;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_da
    .catch Lcom/google/android/gms/ads/internal/overlay/f; {:try_start_14 .. :try_end_da} :catch_da

    :catch_da
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->J8:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final u7(Labcd/ox;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Z3:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/google/android/gms/common/util/o;->tp()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    const/16 v0, 0x400

    const/16 v1, 0x800

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void

    :cond_40
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_52
    return-void
.end method

.method public final u9()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->mu:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->DW:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->v5:Lcom/google/android/gms/ads/internal/overlay/h;

    if-nez v0, :cond_2a

    :cond_22
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vk;->j6(Lcom/google/android/gms/internal/ads/Mo;)Z

    :cond_2a
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->hG()V

    return-void
.end method

.method public final wC()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->Ws:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->XL:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->QX:Ljava/lang/Runnable;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->QX:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->QX:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final we(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->tp:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
