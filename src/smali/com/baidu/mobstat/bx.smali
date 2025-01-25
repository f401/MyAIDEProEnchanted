.class Lcom/baidu/mobstat/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Lcom/baidu/mobstat/bx;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/baidu/mobstat/bx;

    invoke-direct {v0}, Lcom/baidu/mobstat/bx;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/bx;->a:Lcom/baidu/mobstat/bx;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/bx;
    .registers 1

    .line 11
    sget-object v0, Lcom/baidu/mobstat/bx;->a:Lcom/baidu/mobstat/bx;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/baidu/mobstat/bx;->c:Landroid/content/Context;

    .line 23
    iget-object p1, p0, Lcom/baidu/mobstat/bx;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez p1, :cond_f

    .line 24
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/bx;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 25
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_f
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 31
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-nez v0, :cond_14

    .line 33
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bx;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/baidu/mobstat/ExceptionAnalysis;->saveCrashInfo(Landroid/content/Context;Ljava/lang/Throwable;Z)V

    .line 36
    :cond_14
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 37
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_21
    return-void
.end method
