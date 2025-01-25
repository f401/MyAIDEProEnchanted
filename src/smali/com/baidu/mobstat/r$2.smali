.class Lcom/baidu/mobstat/r$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/r;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/baidu/mobstat/r;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/r;Ljava/lang/String;)V
    .registers 3

    .line 133
    iput-object p1, p0, Lcom/baidu/mobstat/r$2;->b:Lcom/baidu/mobstat/r;

    iput-object p2, p0, Lcom/baidu/mobstat/r$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 137
    iget-object p1, p0, Lcom/baidu/mobstat/r$2;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
