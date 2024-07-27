.class Lcom/baidu/mobstat/LogSender$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/LogSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/LogSender;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 265
    iput-object p1, p0, Lcom/baidu/mobstat/LogSender$a;->a:Lcom/baidu/mobstat/LogSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/baidu/mobstat/LogSender$a;->b:Landroid/content/Context;

    .line 267
    iput-object p3, p0, Lcom/baidu/mobstat/LogSender$a;->d:Ljava/lang/String;

    .line 268
    iput-object p4, p0, Lcom/baidu/mobstat/LogSender$a;->c:Ljava/lang/String;

    .line 269
    iput-boolean p5, p0, Lcom/baidu/mobstat/LogSender$a;->e:Z

    .line 270
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5

    .line 274
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$a;->a:Lcom/baidu/mobstat/LogSender;

    iget-object v1, p0, Lcom/baidu/mobstat/LogSender$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$a;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/baidu/mobstat/LogSender$a;->e:Z

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/LogSender$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 276
    const/4 v0, 0x1

    .line 283
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/LogSender$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    goto :goto_0
.end method
