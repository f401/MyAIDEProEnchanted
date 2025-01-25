.class Lcom/baidu/mobstat/da$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/da$a;->a(Lcom/baidu/mobstat/df;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/df;

.field final b:Lcom/baidu/mobstat/da$a;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/da$a;Lcom/baidu/mobstat/df;)V
    .registers 3

    .line 326
    iput-object p1, p0, Lcom/baidu/mobstat/da$a$2;->b:Lcom/baidu/mobstat/da$a;

    iput-object p2, p0, Lcom/baidu/mobstat/da$a$2;->a:Lcom/baidu/mobstat/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/baidu/mobstat/da$a$2;->a:Lcom/baidu/mobstat/df;

    invoke-virtual {v0}, Lcom/baidu/mobstat/df;->a()V

    return-void
.end method
