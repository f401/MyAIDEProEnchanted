.class Lcom/baidu/mobstat/ch$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/cf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ch;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ch;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/baidu/mobstat/ch$2;->a:Lcom/baidu/mobstat/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 187
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 188
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    const-string v1, "onGesture"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 191
    :cond_13
    iget-object v0, p0, Lcom/baidu/mobstat/ch$2;->a:Lcom/baidu/mobstat/ch;

    invoke-static {v0}, Lcom/baidu/mobstat/ch;->d(Lcom/baidu/mobstat/ch;)V

    return-void
.end method
