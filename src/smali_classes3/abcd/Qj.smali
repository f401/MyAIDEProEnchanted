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
    .registers 5

    const-wide v0, 0x51a88981548e24d0L

    const-wide v2, 0x4359da47efa21ddL

    const-class v4, Labcd/Qj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x29393a6010cbd730L  # -1.0696189025151426E110

    :try_start_5
    sget-boolean v2, Labcd/Qj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    iget-object v2, v2, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-static {v2}, Labcd/Kj;->DW(Labcd/Kj;)Labcd/Kj$d;

    move-result-object v2

    iget-object v3, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    if-ne v2, v3, :cond_80

    iget-object v2, v3, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-static {v2}, Labcd/Kj;->j6(Labcd/Kj;)V

    iget-object v2, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    iget-object v2, v2, Labcd/Kj$d;->Hw:Labcd/Kj;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/Kj;->j6(Labcd/Kj;Labcd/Kj$d;)Labcd/Kj$d;

    iget-object v2, p0, Labcd/Qj;->FH:Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/net/UnknownHostException;
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_81

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3

    if-eqz v3, :cond_36

    const-string v3, "下载错误"

    goto :goto_38

    .line 99
    :cond_36
    const-string v3, "Download error"

    .line 0
    :goto_38
    if-eqz v2, :cond_71

    :try_start_3a
    iget-object v2, p0, Labcd/Qj;->FH:Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_71

    iget-object v2, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    invoke-static {v2}, Labcd/Kj$d;->j6(Labcd/Kj$d;)Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Labcd/Qj;->FH:Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v5}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    :cond_71
    iget-object v2, p0, Labcd/Qj;->Hw:Labcd/Kj$d;

    invoke-static {v2}, Labcd/Kj$d;->j6(Labcd/Kj$d;)Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Labcd/Qj;->FH:Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_3a .. :try_end_80} :catchall_81

    :cond_80
    :goto_80
    return-void

    .line 99
    :catchall_81
    move-exception v2

    sget-boolean v3, Labcd/Qj;->DW:Z

    if-eqz v3, :cond_89

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_89
    throw v2
.end method
