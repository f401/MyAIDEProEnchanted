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
    .registers 6

    const-class v0, Labcd/Nj;

    const-wide v2, -0xa9ebdf3cdd29105L

    const-wide v4, 0x15a6b5846e61c8e0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x140d9f0216a64c40L
    .end annotation

    const-wide v6, 0x385a764d350fd670L

    :try_start_0
    sget-boolean v0, Labcd/Nj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x385a764d350fd670L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Nj;->FH:Labcd/Kj$c;

    iget-object v0, v0, Labcd/Kj$c;->v5:Labcd/Kj;

    invoke-static {v0}, Labcd/Kj;->j6(Labcd/Kj;)V

    const-string v0, "NDK installed"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Nj;->FH:Labcd/Kj$c;

    invoke-static {v0}, Labcd/Kj$c;->j6(Labcd/Kj$c;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Labcd/Mj;

    invoke-direct {v1, p0}, Labcd/Mj;-><init>(Labcd/Nj;)V

    const-string v2, "NDK Support package can be uninstalled"

    const-string v3, "The NDK has been integrated into AIDE and the AIDE NDK Support package can now be safely uninstalled. Open Play Store to uninstall?"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Nj;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
