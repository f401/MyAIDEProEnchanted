.class Lcom/s1243808733/aide/CloudFunction$100000001$100000000;
.super Ljava/lang/Object;
.source "CloudFunction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/CloudFunction$100000001;

.field private final val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/CloudFunction$100000001;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;->this$0:Lcom/s1243808733/aide/CloudFunction$100000001;

    iput-object p2, p0, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;->val$result:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/CloudFunction$100000001$100000000;)Lcom/s1243808733/aide/CloudFunction$100000001;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;->this$0:Lcom/s1243808733/aide/CloudFunction$100000001;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 60
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;->val$result:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;->this$0:Lcom/s1243808733/aide/CloudFunction$100000001;

    invoke-static {v1}, Lcom/s1243808733/aide/CloudFunction$100000001;->access$0(Lcom/s1243808733/aide/CloudFunction$100000001;)Lcom/s1243808733/aide/CloudFunction;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/CloudFunction;->access$1000008(Lcom/s1243808733/aide/CloudFunction;)V

    .line 90
    new-array v1, v9, [Ljava/lang/Object;

    aput-object v0, v1, v8

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_1
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    const-string v1, "versionCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 67
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "CloudFunctionVersion"

    int-to-long v6, v8

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;->this$0:Lcom/s1243808733/aide/CloudFunction$100000001;

    invoke-static {v1}, Lcom/s1243808733/aide/CloudFunction$100000001;->access$0(Lcom/s1243808733/aide/CloudFunction$100000001;)Lcom/s1243808733/aide/CloudFunction;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/CloudFunction;->access$1000009(Lcom/s1243808733/aide/CloudFunction;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;->this$0:Lcom/s1243808733/aide/CloudFunction$100000001;

    invoke-static {v1}, Lcom/s1243808733/aide/CloudFunction$100000001;->access$0(Lcom/s1243808733/aide/CloudFunction$100000001;)Lcom/s1243808733/aide/CloudFunction;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/CloudFunction;->access$1000009(Lcom/s1243808733/aide/CloudFunction;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 70
    const-string v1, "file"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Lorg/xutils/http/RequestParams;

    invoke-direct {v1, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;->this$0:Lcom/s1243808733/aide/CloudFunction$100000001;

    invoke-static {v0}, Lcom/s1243808733/aide/CloudFunction$100000001;->access$0(Lcom/s1243808733/aide/CloudFunction$100000001;)Lcom/s1243808733/aide/CloudFunction;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/CloudFunction;->access$1000009(Lcom/s1243808733/aide/CloudFunction;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xutils/http/RequestParams;->setSaveFilePath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :try_start_2
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    const-string v4, "java.io.File"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    :try_start_4
    invoke-interface {v0, v1, v4}, Lorg/xutils/HttpManager;->postSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 76
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CloudFunctionVersion"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    iget-object v0, p0, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;->this$0:Lcom/s1243808733/aide/CloudFunction$100000001;

    invoke-static {v0}, Lcom/s1243808733/aide/CloudFunction$100000001;->access$0(Lcom/s1243808733/aide/CloudFunction$100000001;)Lcom/s1243808733/aide/CloudFunction;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/CloudFunction;->access$1000008(Lcom/s1243808733/aide/CloudFunction;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 80
    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;->this$0:Lcom/s1243808733/aide/CloudFunction$100000001;

    invoke-static {v0}, Lcom/s1243808733/aide/CloudFunction$100000001;->access$0(Lcom/s1243808733/aide/CloudFunction$100000001;)Lcom/s1243808733/aide/CloudFunction;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/CloudFunction;->access$1000008(Lcom/s1243808733/aide/CloudFunction;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 74
    :catch_2
    move-exception v0

    :try_start_6
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 85
    :cond_2
    :try_start_7
    iget-object v0, p0, Lcom/s1243808733/aide/CloudFunction$100000001$100000000;->this$0:Lcom/s1243808733/aide/CloudFunction$100000001;

    invoke-static {v0}, Lcom/s1243808733/aide/CloudFunction$100000001;->access$0(Lcom/s1243808733/aide/CloudFunction$100000001;)Lcom/s1243808733/aide/CloudFunction;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/CloudFunction;->access$1000008(Lcom/s1243808733/aide/CloudFunction;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method
