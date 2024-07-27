.class Lcom/aide/ui/trainer/c;
.super Landroid/os/CountDownTimer;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
.field final FH:Lcom/aide/ui/trainer/e;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/trainer/c;

    const-wide v2, 0x311b54d969e8e8bL    # 6.93168838371535E-294

    const-wide v4, -0x5799f2f1a8c752dL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/trainer/e;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/aide/ui/trainer/c;->FH:Lcom/aide/ui/trainer/e;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x15e61b5475beeea8L
    .end annotation

    const-wide v2, 0xac370fc9f24621fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xac370fc9f24621fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onTick(J)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x842e196ea538f7L
    .end annotation

    const-wide v4, 0x5c7ff20c6bfc2228L    # 3.7150764721752942E137

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/c;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x5c7ff20c6bfc2228L    # 3.7150764721752942E137

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/c;->FH:Lcom/aide/ui/trainer/e;

    invoke-static {v0}, Lcom/aide/ui/trainer/e;->j6(Lcom/aide/ui/trainer/e;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/trainer/c;->FH:Lcom/aide/ui/trainer/e;

    invoke-static {v0}, Lcom/aide/ui/trainer/e;->j6(Lcom/aide/ui/trainer/e;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/c;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
