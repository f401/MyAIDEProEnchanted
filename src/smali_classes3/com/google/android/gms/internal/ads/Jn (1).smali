.class public final Lcom/google/android/gms/internal/ads/Jn;
.super Lcom/google/android/gms/internal/ads/zzbdi;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/do;


# annotations
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
    .registers 7

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdi;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Jn;->v5:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Jn;->FH:Lcom/google/android/gms/internal/ads/Dn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Jn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/Jn;->J8:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/Fn;->j6(Lcom/google/android/gms/internal/ads/zzbdi;)V

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

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->EQ:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private final Mr()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Xn;->DW(Z)V

    :cond_8
    return-void
.end method

.method private final QX()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->tp:Ljava/lang/String;

    if-eqz v0, :cond_a6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jn;->gn:Landroid/view/Surface;

    if-nez v1, :cond_f

    goto/16 :goto_a6

    :cond_f
    const-string v1, "cache:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->FH:Lcom/google/android/gms/internal/ads/Dn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Jn;->tp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Dn;->FH(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/po;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Bo;

    if-eqz v1, :cond_2c

    check-cast v0, Lcom/google/android/gms/internal/ads/Bo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Bo;->FH()Lcom/google/android/gms/internal/ads/Xn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    goto :goto_89

    :cond_2c
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Ao;

    if-eqz v1, :cond_58

    check-cast v0, Lcom/google/android/gms/internal/ads/Ao;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ao;->FH()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ao;->v5()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ao;->Hw()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4a

    const-string v0, "Stream cache URL is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_4a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->we()Lcom/google/android/gms/internal/ads/Xn;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Xn;->j6(Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_89

    :cond_58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->tp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Stream cache miss: "

    if-eqz v1, :cond_6b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    :cond_6b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_70
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_74
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

    :goto_89
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

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->XL()V

    :cond_a6
    :goto_a6
    return-void
.end method

.method private final Ws()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->J8()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private final XL()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Ws:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
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

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Jn;->FH()V

    :cond_21
    return-void
.end method

.method private final aM()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->aM:I

    if-lez v0, :cond_a

    iget v1, p0, Lcom/google/android/gms/internal/ads/Jn;->XL:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_c

    :cond_a
    const/high16 v1, 0x3f800000  # 1.0f

    :goto_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->U2:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    iput v1, p0, Lcom/google/android/gms/internal/ads/Jn;->U2:F

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_17
    return-void
.end method

.method private final j3()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Xn;->DW(Z)V

    :cond_8
    return-void
.end method

.method private final j6(FZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Xn;->j6(FZ)V

    return-void

    :cond_8
    const-string p1, "Trying to set volume before player is initalized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method private final j6(Landroid/view/Surface;Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Xn;->j6(Landroid/view/Surface;Z)V

    return-void

    :cond_8
    const-string p1, "Trying to set surface before player is initalized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
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

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Mr()V

    :cond_f
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

    :cond_2d
    return-void
.end method

.method public final DW(I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Ws()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/wy;->j6(J)V

    :cond_10
    return-void
.end method

.method final synthetic DW(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/nn;->j6(II)V

    :cond_7
    return-void
.end method

.method final synthetic DW(ZJ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->FH:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Dn;->j6(ZJ)V

    return-void
.end method

.method final synthetic EQ()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->j6()V

    :cond_7
    return-void
.end method

.method public final FH()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Ws()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->j3()V

    :cond_10
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

    return-void

    :cond_33
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Jn;->QX:Z

    return-void
.end method

.method public final FH(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->FH(I)V

    :cond_b
    return-void
.end method

.method public final Hw()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->J8()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wy;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Jn;->j6(Landroid/view/Surface;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v2, :cond_26

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Xn;->j6(Lcom/google/android/gms/internal/ads/do;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Xn;->FH()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    :cond_26
    iput v1, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->EQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Ws:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->QX:Z

    :cond_2f
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

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->Hw(I)V

    :cond_b
    return-void
.end method

.method final synthetic VH()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->Zo()V

    :cond_7
    return-void
.end method

.method final synthetic VH(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/nn;->onWindowVisibilityChanged(I)V

    :cond_7
    return-void
.end method

.method final synthetic Zo()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->FH()V

    :cond_7
    return-void
.end method

.method public final Zo(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->DW(I)V

    :cond_b
    return-void
.end method

.method public final getCurrentPosition()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Ws()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wy;->iW()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Ws()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wy;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_12
    const/4 v0, 0x0

    return v0
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

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->v5()V

    :cond_7
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

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(FF)V

    :cond_7
    return-void
.end method

.method public final j6(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    if-eq v0, p1, :cond_2e

    iput p1, p0, Lcom/google/android/gms/internal/ads/Jn;->we:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    goto :goto_2e

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    if-eqz p1, :cond_16

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Mr()V

    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jn;->Hw:Lcom/google/android/gms/internal/ads/Fn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Fn;->FH()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Hn;->FH()V

    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ln;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Ln;-><init>(Lcom/google/android/gms/internal/ads/Jn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2e

    :cond_2b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->XL()V

    :cond_2e
    :goto_2e
    return-void
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

    if-eqz v0, :cond_9

    const-string v1, "ExoPlayerAdapter error"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/nn;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter error: "

    if-eqz v0, :cond_55

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5a

    :cond_55
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5a
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/Jn;->EQ:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    if-eqz p2, :cond_69

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Mr()V

    :cond_69
    sget-object p2, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/Mn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/Mn;-><init>(Lcom/google/android/gms/internal/ads/Jn;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j6(ZJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->FH:Lcom/google/android/gms/internal/ads/Dn;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/Tn;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Tn;-><init>(Lcom/google/android/gms/internal/ads/Jn;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 13

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->U2:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    if-nez v2, :cond_28

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v3, v2, v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_20

    div-float/2addr v2, v0

    float-to-int p2, v2

    :cond_20
    cmpg-float v2, v0, v3

    if-gez v2, :cond_28

    int-to-float p1, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    :cond_28
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz v0, :cond_32

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(II)V

    :cond_32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_a0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->j3:I

    if-lez v0, :cond_3e

    if-ne v0, p1, :cond_44

    :cond_3e
    iget v0, p0, Lcom/google/android/gms/internal/ads/Jn;->Mr:I

    if-lez v0, :cond_9c

    if-eq v0, p2, :cond_9c

    :cond_44
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->v5:Z

    if-eqz v0, :cond_9c

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->J8()Z

    move-result v0

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->Hw()Lcom/google/android/gms/internal/ads/wy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wy;->iW()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_9c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wy;->kf()Z

    move-result v2

    if-eqz v2, :cond_65

    goto :goto_9c

    :cond_65
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/Jn;->j6(FZ)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/wy;->j6(Z)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wy;->iW()J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v3

    :cond_78
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->J8()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wy;->iW()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-nez v7, :cond_95

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0xfa

    cmp-long v9, v5, v7

    if-lez v9, :cond_78

    :cond_95
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/wy;->j6(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Jn;->j6()V

    :cond_9c
    :goto_9c
    iput p1, p0, Lcom/google/android/gms/internal/ads/Jn;->j3:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/Jn;->Mr:I

    :cond_a0
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J8:Z

    if-eqz v0, :cond_29

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(Landroid/graphics/SurfaceTexture;II)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbdx;->FH()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    if-eqz p2, :cond_21

    move-object p1, p2

    goto :goto_29

    :cond_21
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbdx;->DW()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    :cond_29
    :goto_29
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Jn;->gn:Landroid/view/Surface;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-nez p1, :cond_38

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->QX()V

    goto :goto_45

    :cond_38
    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/Jn;->j6(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jn;->Zo:Lcom/google/android/gms/internal/ads/Cn;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    if-nez p1, :cond_45

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->j3()V

    :cond_45
    :goto_45
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->aM()V

    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/Pn;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/Pn;-><init>(Lcom/google/android/gms/internal/ads/Jn;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Jn;->DW()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->DW()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    const/4 v1, 0x1

    if-eqz p1, :cond_21

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->Mr()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jn;->gn:Landroid/view/Surface;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1c
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->gn:Landroid/view/Surface;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Jn;->j6(Landroid/view/Surface;Z)V

    :cond_21
    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/Rn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Rn;-><init>(Lcom/google/android/gms/internal/ads/Jn;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jn;->J0:Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdx;->j6(II)V

    :cond_7
    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/Qn;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/Qn;-><init>(Lcom/google/android/gms/internal/ads/Jn;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    if-eqz p1, :cond_7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jn;->tp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jn;->QX()V

    :cond_7
    return-void
.end method

.method final synthetic tp()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->DW()V

    :cond_7
    return-void
.end method

.method final synthetic u7()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->VH:Lcom/google/android/gms/internal/ads/nn;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/nn;->VH()V

    :cond_7
    return-void
.end method

.method public final v5()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Jn;->J8:Z

    if-eqz v0, :cond_7

    const-string v0, " spherical"

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "ExoPlayer/3"

    if-eqz v1, :cond_16

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final v5(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jn;->u7:Lcom/google/android/gms/internal/ads/Xn;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xn;->VH()Lcom/google/android/gms/internal/ads/Wn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Wn;->j6(I)V

    :cond_b
    return-void
.end method
