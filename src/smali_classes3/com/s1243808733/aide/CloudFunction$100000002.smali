.class Lcom/s1243808733/aide/CloudFunction$100000002;
.super Ljava/lang/Object;
.source "CloudFunction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/CloudFunction;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/CloudFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/CloudFunction$100000002;->this$0:Lcom/s1243808733/aide/CloudFunction;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/CloudFunction$100000002;)Lcom/s1243808733/aide/CloudFunction;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/CloudFunction$100000002;->this$0:Lcom/s1243808733/aide/CloudFunction;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 124
    iget-object v0, p0, Lcom/s1243808733/aide/CloudFunction$100000002;->this$0:Lcom/s1243808733/aide/CloudFunction;

    invoke-static {v0}, Lcom/s1243808733/aide/CloudFunction;->access$1000009(Lcom/s1243808733/aide/CloudFunction;)Ljava/io/File;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, -0x79a5a748

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getApkSignaturesHashCode(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 126
    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->installFunctions([Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    const-string v1, "app"

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :try_start_0
    const-string v1, "com.s1243808733.aide.fun.Main"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v1

    const-string v2, "main"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 134
    iget-object v0, p0, Lcom/s1243808733/aide/CloudFunction$100000002;->this$0:Lcom/s1243808733/aide/CloudFunction;

    const/4 v1, 0x2

    iput v1, v0, Lcom/s1243808733/aide/CloudFunction;->status:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method
