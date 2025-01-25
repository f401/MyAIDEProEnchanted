.class Lcom/ndk/GradleNdk$100000004$100000003;
.super Ljava/lang/Object;
.source "GradleNdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/ndk/GradleNdk$100000004;

.field private final val$ac:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ndk/GradleNdk$100000004;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ndk/GradleNdk$100000004$100000003;->this$0:Lcom/ndk/GradleNdk$100000004;

    iput-object p2, p0, Lcom/ndk/GradleNdk$100000004$100000003;->val$ac:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lcom/ndk/GradleNdk$100000004$100000003;)Lcom/ndk/GradleNdk$100000004;
    .registers 1

    iget-object p0, p0, Lcom/ndk/GradleNdk$100000004$100000003;->this$0:Lcom/ndk/GradleNdk$100000004;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 195
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "安装完成"

    goto :goto_b

    :cond_9
    const-string v0, "Installation completed"

    .line 197
    :goto_b
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "安装失败"

    goto :goto_16

    :cond_14
    const-string v1, "Installation failed"

    .line 199
    :goto_16
    iget-object v2, p0, Lcom/ndk/GradleNdk$100000004$100000003;->val$ac:Landroid/app/Activity;

    invoke-static {}, Lcom/ndk/GradleNdk;->getNdkStatus()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v0, v1

    :goto_20
    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/cn.aide.pro/files/Gradle_NDK_24.0.8215888.tar.xz"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
