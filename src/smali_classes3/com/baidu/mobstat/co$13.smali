.class Lcom/baidu/mobstat/co$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/baidu/mobstat/co;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/co;Ljava/lang/String;)V
    .registers 3

    .line 422
    iput-object p1, p0, Lcom/baidu/mobstat/co$13;->b:Lcom/baidu/mobstat/co;

    iput-object p2, p0, Lcom/baidu/mobstat/co$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 426
    invoke-static {}, Lcom/baidu/mobstat/cn;->a()Lcom/baidu/mobstat/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/co$13;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cn;->a(Ljava/lang/String;)V

    .line 427
    return-void
.end method
