.class public Lcom/baidu/mobstat/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/mobstat/i;->a:J

    .line 12
    if-nez p4, :cond_0

    .line 13
    const-string p4, ""

    .line 16
    :cond_0
    iput-wide p1, p0, Lcom/baidu/mobstat/i;->a:J

    .line 17
    iput-object p3, p0, Lcom/baidu/mobstat/i;->b:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/baidu/mobstat/i;->c:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/baidu/mobstat/i;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/baidu/mobstat/i;->c:Ljava/lang/String;

    return-object v0
.end method
