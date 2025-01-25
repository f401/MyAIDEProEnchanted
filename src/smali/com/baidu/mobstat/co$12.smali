.class Lcom/baidu/mobstat/co$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co;->a(Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/co;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/co;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/baidu/mobstat/co$12;->a:Lcom/baidu/mobstat/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/baidu/mobstat/co$12;->a:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->c(Lcom/baidu/mobstat/co;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 336
    :cond_9
    iget-object v0, p0, Lcom/baidu/mobstat/co$12;->a:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->c(Lcom/baidu/mobstat/co;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_18

    return-void

    .line 341
    :cond_18
    invoke-static {v0}, Lcom/baidu/mobstat/de;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/baidu/mobstat/co$12;->a:Lcom/baidu/mobstat/co;

    invoke-static {v1}, Lcom/baidu/mobstat/co;->d(Lcom/baidu/mobstat/co;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/baidu/mobstat/co$12;->a:Lcom/baidu/mobstat/co;

    invoke-static {v1}, Lcom/baidu/mobstat/co;->d(Lcom/baidu/mobstat/co;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 345
    iget-object v0, p0, Lcom/baidu/mobstat/co$12;->a:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->e(Lcom/baidu/mobstat/co;)V

    :cond_39
    return-void
.end method
