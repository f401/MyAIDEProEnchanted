.class Lcom/baidu/mobstat/co$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/co$2;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/co$2;)V
    .registers 2

    .line 685
    iput-object p1, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 688
    iget-object v0, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-object v0, v0, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    iget-object v1, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-object v1, v1, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    invoke-static {v1}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;Ljava/util/List;)V

    .line 690
    iget-object v0, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-object v0, v0, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->f(Lcom/baidu/mobstat/co;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 691
    iget-object v0, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-object v0, v0, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    iget-object v1, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-object v1, v1, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    invoke-static {v1}, Lcom/baidu/mobstat/co;->c(Lcom/baidu/mobstat/co;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-wide v2, v2, Lcom/baidu/mobstat/co$2;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;Ljava/lang/ref/WeakReference;J)V

    .line 692
    iget-object v0, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-object v0, v0, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;Z)Z

    .line 695
    :cond_34
    iget-object v0, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-object v0, v0, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    iget-object v1, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-object v1, v1, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    invoke-static {v1}, Lcom/baidu/mobstat/co;->g(Lcom/baidu/mobstat/co;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-wide v2, v2, Lcom/baidu/mobstat/co$2;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;Ljava/util/HashMap;J)V

    .line 697
    iget-object v0, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-object v0, v0, Lcom/baidu/mobstat/co$2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 699
    iget-object v2, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-object v2, v2, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    iget-object v3, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-object v3, v3, Lcom/baidu/mobstat/co$2;->d:Landroid/app/Activity;

    iget-object v4, p0, Lcom/baidu/mobstat/co$2$1;->a:Lcom/baidu/mobstat/co$2;

    iget-wide v4, v4, Lcom/baidu/mobstat/co$2;->b:J

    invoke-static {v2, v1, v3, v4, v5}, Lcom/baidu/mobstat/co;->b(Lcom/baidu/mobstat/co;Landroid/view/View;Landroid/app/Activity;J)V

    goto :goto_4f

    :cond_6b
    return-void
.end method
