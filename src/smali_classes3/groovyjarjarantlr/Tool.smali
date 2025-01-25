.class public Lgroovyjarjarantlr/Tool;
.super Ljava/lang/Object;


# instance fields
.field protected DW:Z

.field protected EQ:Ljava/lang/String;

.field FH:Z

.field Hw:Z

.field protected J0:Z

.field protected J8:Z

.field transient VH:Ljava/io/Reader;

.field private Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

.field protected Zo:Ljava/lang/String;

.field protected gn:Ljava/lang/String;

.field j6:Lgroovyjarjarantlr/ToolErrorHandler;

.field protected tp:Lgroovyjarjarantlr/NameSpace;

.field protected u7:Z

.field v5:Z

.field protected we:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgroovyjarjarantlr/Tool;->DW:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/Tool;->FH:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/Tool;->Hw:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/Tool;->v5:Z

    const-string v1, "."

    iput-object v1, p0, Lgroovyjarjarantlr/Tool;->Zo:Ljava/lang/String;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lgroovyjarjarantlr/Tool;->VH:Ljava/io/Reader;

    const-string v1, "LITERAL_"

    iput-object v1, p0, Lgroovyjarjarantlr/Tool;->gn:Ljava/lang/String;

    iput-boolean v0, p0, Lgroovyjarjarantlr/Tool;->u7:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lgroovyjarjarantlr/Tool;->tp:Lgroovyjarjarantlr/NameSpace;

    iput-object v1, p0, Lgroovyjarjarantlr/Tool;->EQ:Ljava/lang/String;

    iput-object v1, p0, Lgroovyjarjarantlr/Tool;->we:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lgroovyjarjarantlr/Tool;->J0:Z

    iput-boolean v0, p0, Lgroovyjarjarantlr/Tool;->J8:Z

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-direct {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/Tool;->Ws:Lgroovyjarjarantlr/collections/impl/BitSet;

    new-instance v0, Lgroovyjarjarantlr/DefaultToolErrorHandler;

    invoke-direct {v0, p0}, Lgroovyjarjarantlr/DefaultToolErrorHandler;-><init>(Lgroovyjarjarantlr/Tool;)V

    iput-object v0, p0, Lgroovyjarjarantlr/Tool;->j6:Lgroovyjarjarantlr/ToolErrorHandler;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lgroovyjarjarantlr/Utils;->j6(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lgroovyjarjarantlr/FileLineFormatter;->j6()Lgroovyjarjarantlr/FileLineFormatter;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lgroovyjarjarantlr/FileLineFormatter;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "warning:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public FH(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "panic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/Tool;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgroovyjarjarantlr/Tool;->DW:Z

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgroovyjarjarantlr/Tool;->DW:Z

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lgroovyjarjarantlr/FileLineFormatter;->j6()Lgroovyjarjarantlr/FileLineFormatter;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lgroovyjarjarantlr/FileLineFormatter;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
