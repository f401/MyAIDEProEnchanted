.class Labcd/Nj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj$c;->call()Ljava/lang/Void;
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
.field final FH:Labcd/Kj$c;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xa9ebdf3cdd29105L

    const-wide v2, 0x15a6b5846e61c8e0L

    const-class v4, Labcd/Nj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj$c;)V
    .registers 2

    iput-object p1, p0, Labcd/Nj;->FH:Labcd/Kj$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x140d9f0216a64c40L
    .end annotation

    const-wide v0, 0x385a764d350fd670L

    :try_start_5
    sget-boolean v2, Labcd/Nj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nj;->FH:Labcd/Kj$c;

    iget-object v2, v2, Labcd/Kj$c;->v5:Labcd/Kj;

    invoke-static {v2}, Labcd/Kj;->j6(Labcd/Kj;)V

    const-string v2, "NDK installed"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Nj;->FH:Labcd/Kj$c;

    invoke-static {v2}, Labcd/Kj$c;->j6(Labcd/Kj$c;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Labcd/Mj;

    invoke-direct {v3, p0}, Labcd/Mj;-><init>(Labcd/Nj;)V

    const-string v4, "NDK Support package can be uninstalled"

    const-string v5, "The NDK has been integrated into AIDE and the AIDE NDK Support package can now be safely uninstalled. Open Play Store to uninstall?"

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v3, v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/Nj;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method
