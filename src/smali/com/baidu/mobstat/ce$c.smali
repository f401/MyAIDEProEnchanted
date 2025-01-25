.class public Lcom/baidu/mobstat/ce$c;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ce;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ce;Ljava/lang/Throwable;)V
    .registers 3

    .line 265
    iput-object p1, p0, Lcom/baidu/mobstat/ce$c;->a:Lcom/baidu/mobstat/ce;

    .line 266
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
