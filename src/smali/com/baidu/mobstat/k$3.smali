.class final enum Lcom/baidu/mobstat/k$3;
.super Lcom/baidu/mobstat/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/k;-><init>(Ljava/lang/String;IILcom/baidu/mobstat/k$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/baidu/mobstat/j;
    .registers 3

    .line 36
    new-instance v0, Lcom/baidu/mobstat/q;

    invoke-direct {v0, p1}, Lcom/baidu/mobstat/q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
