.class public Lcom/baidu/mobstat/ex;
.super Lcom/baidu/mobstat/fa;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ev;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/baidu/mobstat/fa;-><init>()V

    .line 4
    const-string v0, "*"

    iput-object v0, p0, Lcom/baidu/mobstat/ex;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/baidu/mobstat/ex;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 12
    iput-object p1, p0, Lcom/baidu/mobstat/ex;->a:Ljava/lang/String;

    return-void

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "http resource descriptor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
