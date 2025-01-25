.class public Lcom/aide/uidesigner/ProxyRelativeLayoutParams;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static $ON_ENTER_TOGGLE:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static $ON_THROW_TOGGLE:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private params:Landroid/widget/RelativeLayout$LayoutParams;
    .annotation runtime Labcd/ru;
        field = 0x20abfe3d50d476a3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;

    const-wide v1, -0x566b2433b8d5661L  # -3.674509049099283E282

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x2900faa2b8bb0d00L  # 3.530082694450437E-111

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v3, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method public setAbove(I)V
    .registers 6

    const-wide v0, 0x4e01df4056ced7bL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public setAlignBaseline(I)V
    .registers 6

    const-wide v0, -0x3800314403a55650L  # -6.764719012214751E38

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public setAlignBottom(I)V
    .registers 6

    const-wide v0, -0x1ad2c49c39a61f08L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public setAlignEnd(I)V
    .registers 6

    const-wide v0, 0x23ab133405121440L  # 7.275463185922545E-137

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public setAlignLeft(I)V
    .registers 6

    const-wide v0, -0x20ee75141086f7dcL  # -8.972497961986788E149

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public setAlignParentBottom(Z)V
    .registers 6

    const-wide v0, 0x29360deb0b8e4e00L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public setAlignParentEnd(Z)V
    .registers 6

    const-wide v0, 0x2c073f4b7d3320d4L  # 1.3604510017333556E-96

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public setAlignParentLeft(Z)V
    .registers 6

    const-wide v0, 0x31c69f24b6fa6c58L  # 6.555342035505919E-69

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public setAlignParentRight(Z)V
    .registers 6

    const-wide v0, 0xbb014ff785512a3L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public setAlignParentStart(Z)V
    .registers 6

    const-wide v0, -0x12dc2e54dcab4a3fL  # -5.465740466326021E217

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public setAlignParentTop(Z)V
    .registers 6

    const-wide v0, -0x33e00f43378bc070L  # -5.012325462382455E58

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public setAlignRight(I)V
    .registers 6

    const-wide v0, 0x2bf521f18f7515edL  # 6.183497316902687E-97

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public setAlignStart(I)V
    .registers 6

    const-wide v0, 0x1d58bb4d442f63ebL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x12

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public setAlignTop(I)V
    .registers 6

    const-wide v0, -0x2c71dd4a46622ccL  # -1.5892301000207135E295

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public setBelow(I)V
    .registers 6

    const-wide v0, -0x220fb77991a23dL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public setCenterHorizontal(Z)V
    .registers 6

    const-wide v0, -0x12688df084f52959L  # -8.276319605349654E219

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public setCenterInParent(Z)V
    .registers 6

    const-wide v0, 0x28759f7c0567f228L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public setCenterVertical(Z)V
    .registers 6

    const-wide v0, -0x1e9c969e80f91defL  # -1.3645517597521285E161

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public setEndOf(I)V
    .registers 6

    const-wide v0, 0xa21efcee74dbc00L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public setLeftOf(I)V
    .registers 6

    const-wide v0, -0x10dc9c3d33c55ae0L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public setRightOf(I)V
    .registers 6

    const-wide v0, -0x979180e8cfae5e9L  # -9.016043922785361E262

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public setStartOf(I)V
    .registers 6

    const-wide v0, -0x6d3d15b81e48b2fL  # -4.878663939666241E275

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyRelativeLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method
