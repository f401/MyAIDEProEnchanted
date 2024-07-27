.class Lcom/baidu/mobstat/co$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co;->a(Landroid/view/View;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;

.field final b:Ljava/lang/ref/WeakReference;

.field final c:Landroid/view/View;

.field final d:J

.field final e:Lcom/baidu/mobstat/co;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/view/View;J)V
    .registers 8

    .line 296
    iput-object p1, p0, Lcom/baidu/mobstat/co$11;->e:Lcom/baidu/mobstat/co;

    iput-object p2, p0, Lcom/baidu/mobstat/co$11;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/baidu/mobstat/co$11;->b:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/baidu/mobstat/co$11;->c:Landroid/view/View;

    iput-wide p5, p0, Lcom/baidu/mobstat/co$11;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 299
    iget-object v0, p0, Lcom/baidu/mobstat/co$11;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 300
    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/co$11;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 305
    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/baidu/mobstat/co$11;->e:Lcom/baidu/mobstat/co;

    iget-object v2, p0, Lcom/baidu/mobstat/co$11;->c:Landroid/view/View;

    iget-wide v4, p0, Lcom/baidu/mobstat/co$11;->d:J

    invoke-static {v1, v2, v0, v4, v5}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;Landroid/view/View;Landroid/app/Activity;J)V

    goto :goto_0
.end method
