.class Lcom/baidu/mobstat/cr$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Lcom/baidu/mobstat/cj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/baidu/mobstat/cj;

.field final c:Lcom/baidu/mobstat/cr;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Lcom/baidu/mobstat/cj;)V
    .registers 4

    .line 705
    iput-object p1, p0, Lcom/baidu/mobstat/cr$4;->c:Lcom/baidu/mobstat/cr;

    iput-object p2, p0, Lcom/baidu/mobstat/cr$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/cr$4;->b:Lcom/baidu/mobstat/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 708
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/BDStatCore;->getSessionStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    return-void

    .line 713
    :cond_f
    iget-object v0, p0, Lcom/baidu/mobstat/cr$4;->c:Lcom/baidu/mobstat/cr;

    iget-object v1, p0, Lcom/baidu/mobstat/cr$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/cr$4;->b:Lcom/baidu/mobstat/cj;

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/cr;->a(Lcom/baidu/mobstat/cr;Landroid/content/Context;Lcom/baidu/mobstat/cj;)V

    return-void
.end method
