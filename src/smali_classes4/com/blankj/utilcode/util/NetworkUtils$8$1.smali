.class Lcom/blankj/utilcode/util/NetworkUtils$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/NetworkUtils$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/NetworkUtils$8;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/NetworkUtils$8;)V
    .registers 2

    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$8$1;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->access$100()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/Utils$Consumer;

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->access$300()Lcom/blankj/utilcode/util/NetworkUtils$WifiScanResults;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/blankj/utilcode/util/Utils$Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_8

    :cond_1c
    return-void
.end method
