.class Lorg/apache/tools/ant/taskdefs/Execute$1;
.super Ljava/io/OutputStream;
.source "Execute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/Execute;->spawn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/taskdefs/Execute;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Execute;)V
    .registers 2

    .line 506
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Execute$1;->this$0:Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    return-void
.end method
