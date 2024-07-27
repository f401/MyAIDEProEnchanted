.class Lcom/baidu/mobstat/da$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/da$a;->a(Ljava/lang/ref/WeakReference;Lorg/json/JSONObject;Lcom/baidu/mobstat/df;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;

.field final b:Z

.field final c:Lcom/baidu/mobstat/df;

.field final d:Lorg/json/JSONObject;

.field final e:Lcom/baidu/mobstat/da$a;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/da$a;Ljava/lang/ref/WeakReference;ZLcom/baidu/mobstat/df;Lorg/json/JSONObject;)V
    .registers 6

    .line 279
    iput-object p1, p0, Lcom/baidu/mobstat/da$a$1;->e:Lcom/baidu/mobstat/da$a;

    iput-object p2, p0, Lcom/baidu/mobstat/da$a$1;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/baidu/mobstat/da$a$1;->b:Z

    iput-object p4, p0, Lcom/baidu/mobstat/da$a$1;->c:Lcom/baidu/mobstat/df;

    iput-object p5, p0, Lcom/baidu/mobstat/da$a$1;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 285
    invoke-static {}, Lcom/baidu/mobstat/cu;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/da$a$1;->e:Lcom/baidu/mobstat/da$a;

    invoke-static {v0}, Lcom/baidu/mobstat/da$a;->a(Lcom/baidu/mobstat/da$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    const-string v1, "no touch, skip doViewVisit"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 289
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    const-string v1, "no touch, skip doViewVisit"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 305
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/da;->c()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 297
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/mobstat/cu;->a(Z)V

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/da$a$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 301
    if-eqz v0, :cond_1

    .line 302
    iget-boolean v1, p0, Lcom/baidu/mobstat/da$a$1;->b:Z

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cm;->c(Landroid/app/Activity;Z)V

    .line 303
    iget-object v1, p0, Lcom/baidu/mobstat/da$a$1;->c:Lcom/baidu/mobstat/df;

    iget-object v2, p0, Lcom/baidu/mobstat/da$a$1;->d:Lorg/json/JSONObject;

    iget-boolean v3, p0, Lcom/baidu/mobstat/da$a$1;->b:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/df;->a(Landroid/app/Activity;Lorg/json/JSONObject;Z)V

    goto :goto_0
.end method
