.class Lorg/apache/tools/ant/taskdefs/Length$EachHandler;
.super Lorg/apache/tools/ant/taskdefs/Length$Handler;
.source "Length.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Length;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EachHandler"
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/taskdefs/Length;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V
    .registers 3

    .line 297
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length$EachHandler;->this$0:Lorg/apache/tools/ant/taskdefs/Length;

    .line 298
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Length$Handler;-><init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V

    .line 299
    return-void
.end method


# virtual methods
.method protected handle(Lorg/apache/tools/ant/types/Resource;)V
    .registers 6

    .line 303
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Length$EachHandler;->getPs()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Length$EachHandler;->getPs()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    .line 307
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_28

    .line 308
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Length$EachHandler;->getPs()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    :goto_27
    return-void

    .line 310
    :cond_28
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Length$EachHandler;->getPs()Ljava/io/PrintStream;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintStream;->println(J)V

    goto :goto_27
.end method
