.class public Lcom/baidu/mobstat/ey;
.super Lcom/baidu/mobstat/fa;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/fc;


# instance fields
.field private a:S

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/baidu/mobstat/fa;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/baidu/mobstat/ey;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/baidu/mobstat/ey;->b:Ljava/lang/String;

    return-void
.end method

.method public a(S)V
    .registers 2

    .line 25
    iput-short p1, p0, Lcom/baidu/mobstat/ey;->a:S

    return-void
.end method
