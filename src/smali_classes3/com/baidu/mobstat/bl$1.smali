.class Lcom/baidu/mobstat/bl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/bl;->a(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/mobstat/aq;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/bl;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bl;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/bl$1;->a:Lcom/baidu/mobstat/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/aq;Lcom/baidu/mobstat/aq;)I
    .registers 5

    iget v0, p2, Lcom/baidu/mobstat/aq;->b:I

    iget v1, p1, Lcom/baidu/mobstat/aq;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v1, p1, Lcom/baidu/mobstat/aq;->d:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lcom/baidu/mobstat/aq;->d:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p1, Lcom/baidu/mobstat/aq;->d:Z

    if-eqz v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, p2, Lcom/baidu/mobstat/aq;->d:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/baidu/mobstat/aq;

    check-cast p2, Lcom/baidu/mobstat/aq;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/bl$1;->a(Lcom/baidu/mobstat/aq;Lcom/baidu/mobstat/aq;)I

    move-result v0

    return v0
.end method
