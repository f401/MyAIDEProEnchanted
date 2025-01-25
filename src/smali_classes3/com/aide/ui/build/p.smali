.class Lcom/aide/ui/build/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/q;->run()V
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
.field final FH:Lcom/aide/ui/build/q;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xa1c6947f77ec70dL

    const-wide v2, -0x29dda3fecb1328b0L  # -8.421448676798306E106

    const-class v4, Lcom/aide/ui/build/p;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/q;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/p;->FH:Lcom/aide/ui/build/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2f23c736f14b0dbL
    .end annotation

    const-wide v0, -0x8d6a77308ded81dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "EXTRA_TRAINER_ACTION"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/aide/ui/build/p;->FH:Lcom/aide/ui/build/q;

    iget-object v3, v3, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/aide/ui/build/p;->FH:Lcom/aide/ui/build/q;

    iget-object v2, v2, Lcom/aide/ui/build/q;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/p;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method
