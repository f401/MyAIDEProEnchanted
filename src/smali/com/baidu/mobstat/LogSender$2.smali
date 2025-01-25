.class Lcom/baidu/mobstat/LogSender$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/LogSender;->setSendingLogTimer(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/baidu/mobstat/LogSender;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V
    .registers 3

    .line 143
    iput-object p1, p0, Lcom/baidu/mobstat/LogSender$2;->b:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/LogSender$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$2;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v1, p0, Lcom/baidu/mobstat/LogSender$2;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    return-void
.end method
