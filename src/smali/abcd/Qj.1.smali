.class Labcd/Qj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj$d;->done()V
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
.field final FH:Ljava/util/concurrent/ExecutionException;

.field final Hw:Labcd/Kj$d;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Qj;

    const-wide v2, 0x51a88981548e24d0L

    const-wide v4, 0x4359da47efa21ddL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj$d;Ljava/util/concurrent/ExecutionException;)V
    .registers 3

    iput-object p1, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    iput-object p2, p0, Labcd/Qj;->FH:Ljava/util/concurrent/ExecutionException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xa67b0fd4cac07d0L
    .end annotation

    const-wide v4, -0x29393a6010cbd730L    # -1.0696189025151426E110

    :try_start_0
    sget-boolean v0, Labcd/Qj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29393a6010cbd730L    # -1.0696189025151426E110

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    iget-object v0, v0, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-static {v0}, Labcd/Kj;->DW(Labcd/Kj;)Labcd/Kj$d;

    move-result-object v0

    iget-object v1, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    iget-object v0, v0, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-static {v0}, Labcd/Kj;->j6(Labcd/Kj;)V

    iget-object v0, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    iget-object v0, v0, Labcd/Kj$d;->Hw:Labcd/Kj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/Kj;->j6(Labcd/Kj;Labcd/Kj$d;)Labcd/Kj$d;

    iget-object v0, p0, Labcd/Qj;->FH:Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/net/UnknownHostException;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u4e0b\u8f7d\u9519\u8bef"

    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Labcd/Qj;->FH:Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    invoke-static {v1}, Labcd/Kj$d;->j6(Labcd/Kj$d;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Qj;->FH:Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    invoke-static {v1}, Labcd/Kj$d;->j6(Labcd/Kj$d;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Labcd/Qj;->FH:Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qj;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    const-string v0, "Download error"

    goto :goto_0
.end method
