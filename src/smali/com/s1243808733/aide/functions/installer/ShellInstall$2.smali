.class Lcom/s1243808733/aide/functions/installer/ShellInstall$2;
.super Ljava/lang/Object;
.source "ShellInstall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/functions/installer/ShellInstall;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/functions/installer/ShellInstall;

.field final val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/functions/installer/ShellInstall;Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/s1243808733/aide/functions/installer/ShellInstall$2;->this$0:Lcom/s1243808733/aide/functions/installer/ShellInstall;

    iput-object p2, p0, Lcom/s1243808733/aide/functions/installer/ShellInstall$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 130
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "运行出现问题"

    goto :goto_f

    :cond_d
    const-string v1, "Run Problem"

    .line 132
    :goto_f
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "静默安装失败："

    goto :goto_1a

    :cond_18
    const-string v2, "Silent installation failed:"

    .line 133
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/s1243808733/aide/functions/installer/ShellInstall$2;->val$e:Ljava/lang/Exception;

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
