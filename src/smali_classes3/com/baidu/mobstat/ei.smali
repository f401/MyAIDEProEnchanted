.class public Lcom/baidu/mobstat/ei;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/ei;->a:I

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 24
    iput p1, p0, Lcom/baidu/mobstat/ei;->a:I

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/baidu/mobstat/ei;->a:I

    return v0
.end method
