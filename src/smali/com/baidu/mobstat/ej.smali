.class public Lcom/baidu/mobstat/ej;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    iput p1, p0, Lcom/baidu/mobstat/ej;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    iput p1, p0, Lcom/baidu/mobstat/ej;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    .line 45
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 46
    iput p1, p0, Lcom/baidu/mobstat/ej;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/baidu/mobstat/ej;->a:I

    return v0
.end method
