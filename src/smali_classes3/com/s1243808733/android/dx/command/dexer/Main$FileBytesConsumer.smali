.class Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileBytesConsumer"
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/command/dexer/Main;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;)V
    .registers 2

    .line 1750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;)Lcom/s1243808733/android/dx/command/dexer/Main;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    return-object v0
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1724
    instance-of v0, p1, Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing;

    if-eqz v0, :cond_0

    .line 1725
    check-cast p1, Lcom/s1243808733/android/dx/command/dexer/Main$StopProcessing;

    throw p1

    .line 1726
    :cond_0
    instance-of v0, p1, Lcom/s1243808733/android/dx/cf/code/SimException;

    if-eqz v0, :cond_1

    .line 1727
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000026(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "\nEXCEPTION FROM SIMULATION:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000026(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1729
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000026(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    check-cast p1, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/SimException;->getContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1742
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000008(Lcom/s1243808733/android/dx/command/dexer/Main;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    .line 1730
    :cond_1
    instance-of v0, p1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    if-eqz v0, :cond_3

    .line 1731
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000026(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "\nPARSE ERROR:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1732
    check-cast p1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    .line 1733
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000009(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v0

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->debug:Z

    if-eqz v0, :cond_2

    .line 1734
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000026(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 1736
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000026(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->printContext(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 1739
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000026(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v1, "\nUNEXPECTED TOP-LEVEL EXCEPTION:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1740
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000026(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public onProcessArchiveStart(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1747
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000009(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;

    move-result-object v0

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/command/dexer/Main$Arguments;->verbose:Z

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$L1000026(Lcom/s1243808733/android/dx/command/dexer/Main;)Lcom/s1243808733/android/dx/command/dexer/DxContext;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "processing archive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processFileBytes(Ljava/lang/String;J[B)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1719
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$FileBytesConsumer;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/command/dexer/Main;->access$1000038(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;J[B)Z

    move-result v0

    return v0
.end method
