.class Lcom/baidu/mobstat/eg$a;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/eg;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/eg;I)V
    .registers 3

    .line 32
    iput-object p1, p0, Lcom/baidu/mobstat/eg$a;->a:Lcom/baidu/mobstat/eg;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 33
    iput p2, p0, Lcom/baidu/mobstat/eg$a;->b:I

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/baidu/mobstat/eg$a;->b:I

    return v0
.end method
