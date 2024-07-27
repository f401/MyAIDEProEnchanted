.class Lcom/baidu/mobstat/BDStatCore$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onStat(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 953
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$15;->c:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$15;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/BDStatCore$15;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 957
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$15;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$15;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/LogSender;->sendEmptyLogData(Landroid/content/Context;Ljava/lang/String;)V

    .line 958
    return-void
.end method
