.class Lcom/blankj/utilcode/util/CrashUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/CrashUtils;->getUncaughtExceptionHandler(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)Ljava/lang/Thread$UncaughtExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$dirPath:Ljava/lang/String;

.field final val$onCrashListener:Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/blankj/utilcode/util/CrashUtils$1;->val$onCrashListener:Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;

    iput-object p2, p0, Lcom/blankj/utilcode/util/CrashUtils$1;->val$dirPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd-HH_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/blankj/utilcode/util/CrashUtils$1;)V

    iget-object v2, p0, Lcom/blankj/utilcode/util/CrashUtils$1;->val$onCrashListener:Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;

    if-eqz v2, :cond_1d

    invoke-interface {v2, v1}, Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;->onCrash(Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;)V

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/blankj/utilcode/util/CrashUtils$1;->val$dirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/UtilsBridge;->writeFileFromString(Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/blankj/utilcode/util/CrashUtils;->access$100()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/blankj/utilcode/util/CrashUtils;->access$100()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_48
    return-void
.end method
