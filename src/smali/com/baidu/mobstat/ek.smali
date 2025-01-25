.class public Lcom/baidu/mobstat/ek;
.super Lcom/baidu/mobstat/ej;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ej;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 32
    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 43
    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method
