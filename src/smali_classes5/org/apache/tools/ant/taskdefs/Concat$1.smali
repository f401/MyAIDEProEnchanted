.class Lorg/apache/tools/ant/taskdefs/Concat$1;
.super Ljava/lang/Object;
.source "Concat.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Concat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory",
        "<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/taskdefs/Concat;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$1;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getReader(Ljava/lang/Object;)Ljava/io/Reader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Concat$1;->getReader(Lorg/apache/tools/ant/types/Resource;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getReader(Lorg/apache/tools/ant/types/Resource;)Ljava/io/Reader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 579
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$1;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1500(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 580
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 581
    :goto_11
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 579
    return-object v1

    .line 581
    :cond_17
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$1;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Concat;->access$1500(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_11
.end method
