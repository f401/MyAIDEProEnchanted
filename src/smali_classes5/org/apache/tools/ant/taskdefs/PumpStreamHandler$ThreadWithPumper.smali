.class public Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;
.super Ljava/lang/Thread;
.source "PumpStreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ThreadWithPumper"
.end annotation


# instance fields
.field private final pumper:Lorg/apache/tools/ant/taskdefs/StreamPumper;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/StreamPumper;)V
    .registers 2

    .line 308
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 309
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;->pumper:Lorg/apache/tools/ant/taskdefs/StreamPumper;

    .line 310
    return-void
.end method


# virtual methods
.method protected getPumper()Lorg/apache/tools/ant/taskdefs/StreamPumper;
    .registers 2

    .line 312
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;->pumper:Lorg/apache/tools/ant/taskdefs/StreamPumper;

    return-object v0
.end method
