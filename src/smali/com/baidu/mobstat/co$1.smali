.class Lcom/baidu/mobstat/co$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;

.field final b:J

.field final c:Lcom/baidu/mobstat/co;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;J)V
    .registers 5

    .line 153
    iput-object p1, p0, Lcom/baidu/mobstat/co$1;->c:Lcom/baidu/mobstat/co;

    iput-object p2, p0, Lcom/baidu/mobstat/co$1;->a:Ljava/lang/ref/WeakReference;

    iput-wide p3, p0, Lcom/baidu/mobstat/co$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/baidu/mobstat/co$1;->c:Lcom/baidu/mobstat/co;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;Z)Z

    .line 158
    iget-object v0, p0, Lcom/baidu/mobstat/co$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_11

    return-void

    .line 163
    :cond_11
    iget-object v1, p0, Lcom/baidu/mobstat/co$1;->c:Lcom/baidu/mobstat/co;

    iget-wide v2, p0, Lcom/baidu/mobstat/co$1;->b:J

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;Landroid/app/Activity;J)V

    return-void
.end method
