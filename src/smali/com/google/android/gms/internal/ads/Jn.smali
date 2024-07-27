.class public final Lcom/google/android/gms/internal/ads/Jn;
.super Lcom/google/android/gms/internal/ads/zzbdi;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/do;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private EQ:Z

.field private final FH:Lcom/google/android/gms/internal/ads/Dn;

.field private final Hw:Lcom/google/android/gms/internal/ads/Fn;

.field private J0:Lcom/google/android/gms/internal/ads/zzbdx;

.field private final J8:Z

.field private Mr:I

.field private QX:Z

.field private U2:F

.field private VH:Lcom/google/android/gms/internal/ads/nn;

.field private Ws:Z

.field private XL:I

.field private final Zo:Lcom/google/android/gms/internal/ads/Cn;

.field private aM:I

.field private gn:Landroid/view/Surface;

.field private j3:I

.field private tp:Ljava/lang/String;

.field private u7:Lcom/google/android/gms/internal/ads/Xn;

.field private final v5:Z

.field private we:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/Dn;ZZLcom/google/android/gms/internal/ads/Cn;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdi;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Jn;->v5:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Jn;->FH:Lcom/google/android/gms/internal/ads/Dn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Jn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/Jn;->J8:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Fn;->j6(Lcom/google/android/gms/internal/ads/zzbdi;)V

    return-void
.end method

.method private final J0()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jn;->FH:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Dn;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jn;->FH:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Dn;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final J8()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->EQ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Mr()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Xn;->DW(Z)V

    :cond_0
    return-void
.end method

.method private final QX()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->tp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jn;->gn:Landroid/view/Surface;

    if-eqz v1, :cond_0

    const-string v1, "cache:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->FH:Lcom/google/android/gms/internal/ads/Dn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jn;->tp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Dn;->FH(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/po;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Bo;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/ads/Bo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Bo;->FH()Lcom/google/android/gms/internal/ads/Xn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Xn;->j6(Lcom/google/android/gms/internal/ads/do;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->gn:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Jn;->j6(Landroid/view/Surface;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wy;->Q6()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->XL()V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Ao;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/android/gms/internal/ads/Ao;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ao;->FH()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ao;->v5()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ao;->Hw()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Stream cache URL is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->we()Lcom/google/android/gms/internal/ads/Xn;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Xn;->j6(Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->tp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Stream cache miss: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/String;

    const-string v1, "Stream cache miss: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->we()Lcom/google/android/gms/internal/ads/Xn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->J0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jn;->tp:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Xn;->j6(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private final Ws()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->J8()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final XL()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Ws:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Ws:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Kn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Kn;-><init>(Lcom/google/android/gms/internal/ads/Jn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Jn;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fn;->Hw()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->QX:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Jn;->FH()V

    goto :goto_0
.end method

.method private final aM()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->aM:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Jn;->XL:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/Jn;->U2:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Jn;->U2:F

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private final j3()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Xn;->DW(Z)V

    :cond_0
    return-void
.end method

.method private final j6(FZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Xn;->j6(FZ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Trying to set volume before player is initalized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final j6(Landroid/view/Surface;Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Xn;->j6(Landroid/view/Surface;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Trying to set surface before player is initalized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final we()Lcom/google/android/gms/internal/ads/Xn;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/Xn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jn;->FH:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Dn;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Xn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Cn;)V

    return-object v0
.end method


# virtual methods
.method public final DW()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Ws()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Mr()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/wy;->j6(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fn;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hn;->FH()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/On;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/On;-><init>(Lcom/google/android/gms/internal/ads/Jn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final DW(I)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Ws()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/wy;->j6(J)V

    :cond_0
    return-void
.end method

.method final synthetic DW(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/nn;->j6(II)V

    :cond_0
    return-void
.end method

.method final synthetic DW(ZJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->FH:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Dn;->j6(ZJ)V

    return-void
.end method

.method final synthetic EQ()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->j6()V

    :cond_0
    return-void
.end method

.method public final FH()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Ws()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->j3()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/wy;->j6(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fn;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hn;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->j6:Lcom/google/android/gms/internal/ads/xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xn;->j6()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Nn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Nn;-><init>(Lcom/google/android/gms/internal/ads/Jn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Jn;->QX:Z

    goto :goto_0
.end method

.method public final FH(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->FH(I)V

    :cond_0
    return-void
.end method

.method public final Hw()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->J8()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wy;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/Jn;->j6(Landroid/view/Surface;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Xn;->j6(Lcom/google/android/gms/internal/ads/do;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->FH()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    :cond_0
    iput v3, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Jn;->EQ:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Jn;->Ws:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Jn;->QX:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fn;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hn;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fn;->j6()V

    return-void
.end method

.method public final Hw(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->Hw(I)V

    :cond_0
    return-void
.end method

.method final synthetic VH()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->Zo()V

    :cond_0
    return-void
.end method

.method final synthetic VH(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/nn;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method final synthetic Zo()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->FH()V

    :cond_0
    return-void
.end method

.method public final Zo(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->DW(I)V

    :cond_0
    return-void
.end method

.method public final getCurrentPosition()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Ws()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wy;->iW()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDuration()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Ws()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wy;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getVideoHeight()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->aM:I

    return v0
.end method

.method public final getVideoWidth()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->XL:I

    return v0
.end method

.method final synthetic gn()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->v5()V

    :cond_0
    return-void
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hn;->j6()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Jn;->j6(FZ)V

    return-void
.end method

.method public final j6(FF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(FF)V

    :cond_0
    return-void
.end method

.method public final j6(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Mr()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fn;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hn;->FH()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Ln;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Ln;-><init>(Lcom/google/android/gms/internal/ads/Jn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->XL()V

    goto :goto_0
.end method

.method public final j6(II)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/Jn;->XL:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/Jn;->aM:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->aM()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/nn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    return-void
.end method

.method final synthetic j6(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter error"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/nn;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ExoPlayerAdapter error: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->EQ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Mr()V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/Mn;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/Mn;-><init>(Lcom/google/android/gms/internal/ads/Jn;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v2, "ExoPlayerAdapter error: "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j6(ZJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->FH:Lcom/google/android/gms/internal/ads/Dn;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/Tn;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Tn;-><init>(Lcom/google/android/gms/internal/ads/Jn;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 15

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/Jn;->U2:F

    cmpl-float v3, v2, v9

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    if-nez v3, :cond_1

    int-to-float v3, v1

    int-to-float v4, v0

    div-float v4, v3, v4

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    div-float v0, v3, v2

    float-to-int v0, v0

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/Jn;->U2:F

    cmpg-float v3, v2, v4

    if-gez v3, :cond_1

    int-to-float v1, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(II)V

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/google/android/gms/internal/ads/Jn;->j3:I

    if-lez v2, :cond_3

    if-ne v2, v1, :cond_4

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/ads/Jn;->Mr:I

    if-lez v2, :cond_5

    if-eq v2, v0, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Jn;->v5:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->J8()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wy;->iW()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wy;->kf()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/Jn;->j3:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Mr:I

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0, v9, v8}, Lcom/google/android/gms/internal/ads/Jn;->j6(FZ)V

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/ads/wy;->j6(Z)V

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wy;->iW()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v6

    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->J8()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wy;->iW()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-nez v3, :cond_9

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0xfa

    cmp-long v3, v8, v10

    if-lez v3, :cond_8

    :cond_9
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/wy;->j6(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Jn;->j6()V

    goto :goto_0
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J8:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->FH()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p1, v0

    :cond_0
    :goto_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->gn:Landroid/view/Surface;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->QX()V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->aM()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Pn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Pn;-><init>(Lcom/google/android/gms/internal/ads/Jn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->DW()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->gn:Landroid/view/Surface;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Jn;->j6(Landroid/view/Surface;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->j3()V

    goto :goto_1
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Jn;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->DW()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Mr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->gn:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Jn;->gn:Landroid/view/Surface;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/Jn;->j6(Landroid/view/Surface;Z)V

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Rn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Rn;-><init>(Lcom/google/android/gms/internal/ads/Jn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(II)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Qn;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/Qn;-><init>(Lcom/google/android/gms/internal/ads/Jn;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Fn;->DW(Lcom/google/android/gms/internal/ads/zzbdi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdi;->j6:Lcom/google/android/gms/internal/ads/xn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/xn;->j6(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/nn;)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Sn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/Sn;-><init>(Lcom/google/android/gms/internal/ads/Jn;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jn;->tp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->QX()V

    :cond_0
    return-void
.end method

.method final synthetic tp()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->DW()V

    :cond_0
    return-void
.end method

.method final synthetic u7()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->VH()V

    :cond_0
    return-void
.end method

.method public final v5()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J8:Z

    if-eqz v0, :cond_0

    const-string v0, " spherical"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ExoPlayer/3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "ExoPlayer/3"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final v5(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->j6(I)V

    :cond_0
    return-void
.end method
