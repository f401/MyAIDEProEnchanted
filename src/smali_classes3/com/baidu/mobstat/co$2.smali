.class Lcom/baidu/mobstat/co$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co;->c(Landroid/app/Activity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;

.field final b:J

.field final c:Ljava/util/ArrayList;

.field final d:Landroid/app/Activity;

.field final e:Lcom/baidu/mobstat/co;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/co;Ljava/util/ArrayList;JLjava/util/ArrayList;Landroid/app/Activity;)V
    .registers 8

    .line 678
    iput-object p1, p0, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    iput-object p2, p0, Lcom/baidu/mobstat/co$2;->a:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/baidu/mobstat/co$2;->b:J

    iput-object p5, p0, Lcom/baidu/mobstat/co$2;->c:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/baidu/mobstat/co$2;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 681
    iget-object v0, p0, Lcom/baidu/mobstat/co$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 682
    iget-object v2, p0, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    iget-object v3, p0, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    invoke-static {v3}, Lcom/baidu/mobstat/co;->b(Lcom/baidu/mobstat/co;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    invoke-static {v4}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;)Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;Ljava/util/List;)V

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/co$2;->e:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->h(Lcom/baidu/mobstat/co;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobstat/co$2$1;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/co$2$1;-><init>(Lcom/baidu/mobstat/co$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 704
    return-void
.end method
