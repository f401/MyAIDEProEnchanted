.class Lcom/baidu/mobstat/dw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/dx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/dw;->a(Landroid/content/Context;Lcom/baidu/mobstat/dv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/dv;

.field final b:Lcom/baidu/mobstat/dw;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dw;Lcom/baidu/mobstat/dv;)V
    .registers 3

    .line 26
    iput-object p1, p0, Lcom/baidu/mobstat/dw$1;->b:Lcom/baidu/mobstat/dw;

    iput-object p2, p0, Lcom/baidu/mobstat/dw$1;->a:Lcom/baidu/mobstat/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 30
    invoke-static {p1}, Lcom/baidu/mobstat/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lcom/baidu/mobstat/dw$1;->a:Lcom/baidu/mobstat/dv;

    if-eqz p1, :cond_14

    .line 33
    invoke-static {}, Lcom/baidu/mobstat/dw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/baidu/mobstat/dv;->a(Ljava/lang/String;)V

    :cond_14
    return-void
.end method
