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
    .locals 0
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
    .locals 4

    .line 130
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    .line 131
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8fd0\u884c\u51fa\u73b0\u95ee\u9898"

    .line 132
    :goto_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u9759\u9ed8\u5b89\u88c5\u5931\u8d25\uff1a"

    .line 133
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/aide/functions/installer/ShellInstall$2;->val$e:Ljava/lang/Exception;

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    const-string v0, "Run Problem"

    goto :goto_0

    .line 132
    :cond_1
    const-string v1, "Silent installation failed:"

    goto :goto_1
.end method
