.class public Lgroovyjarjarantlr/debug/InputBufferReporter;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/debug/InputBufferListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Lgroovyjarjarantlr/debug/InputBufferEvent;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public FH(Lgroovyjarjarantlr/debug/InputBufferEvent;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public Hw(Lgroovyjarjarantlr/debug/InputBufferEvent;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public j6(Lgroovyjarjarantlr/debug/InputBufferEvent;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public j6(Lgroovyjarjarantlr/debug/TraceEvent;)V
    .registers 2

    return-void
.end method
