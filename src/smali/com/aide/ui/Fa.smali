.class Lcom/aide/ui/Fa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/Ga;->j6(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Landroid/view/View;

.field final Hw:Lcom/aide/ui/Ga;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/Fa;

    const-wide v2, -0x4174fd3e6bee7840L    # -2.0124589109315033E-7

    const-wide v4, -0x1abb4c3cec6043f5L    # -6.711256410472075E179

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/Ga;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/Fa;->Hw:Lcom/aide/ui/Ga;

    iput-object p2, p0, Lcom/aide/ui/Fa;->FH:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4421283283a4b8b3L
    .end annotation

    const-wide v2, -0x1d193d1c44167b5bL    # -2.684382611252825E168

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Fa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d193d1c44167b5bL    # -2.684382611252825E168

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/Fa;->FH:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Fa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4910ef23005eeae3L
    .end annotation

    const-wide v2, 0x5574059ec0121697L    # 4.484406527455566E103

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Fa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5574059ec0121697L    # 4.484406527455566E103

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Fa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x25231fbedcba150L
    .end annotation

    const-wide v2, 0x4f84705aaed46aa0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Fa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4f84705aaed46aa0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Fa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
