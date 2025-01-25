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
    .registers 5

    const-wide v0, 0x311b54d969e8e8bL  # 6.93168838371535E-294

    const-wide v2, -0x5799f2f1a8c752dL

    const-class v4, Lcom/aide/ui/trainer/c;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0xac370fc9f24621fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/c;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public onTick(J)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x842e196ea538f7L
    .end annotation

    const-wide v0, 0x5c7ff20c6bfc2228L  # 3.7150764721752942E137

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/c;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v2, p0, Lcom/aide/ui/trainer/c;->FH:Lcom/aide/ui/trainer/e;

    invoke-static {v2}, Lcom/aide/ui/trainer/e;->j6(Lcom/aide/ui/trainer/e;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_1d

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_26

    :cond_1d
    iget-object v2, p0, Lcom/aide/ui/trainer/c;->FH:Lcom/aide/ui/trainer/e;

    invoke-static {v2}, Lcom/aide/ui/trainer/e;->j6(Lcom/aide/ui/trainer/e;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    :goto_26
    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/c;->DW:Z

    if-eqz v3, :cond_34

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method
