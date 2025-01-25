.class public Lgroovyjarjarantlr/DiagnosticCodeGenerator;
.super Lgroovyjarjarantlr/CodeGenerator;


# instance fields
.field protected tp:Z

.field protected u7:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lgroovyjarjarantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgroovyjarjarantlr/DiagnosticCodeGenerator;->u7:I

    iput-boolean v0, p0, Lgroovyjarjarantlr/DiagnosticCodeGenerator;->tp:Z

    new-instance v0, Lgroovyjarjarantlr/JavaCharFormatter;

    invoke-direct {v0}, Lgroovyjarjarantlr/JavaCharFormatter;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/CodeGenerator;->v5:Lgroovyjarjarantlr/CharFormatter;

    return-void
.end method


# virtual methods
.method public j6(Lgroovyjarjarantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;
    .registers 3

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "***Create an AST from a vector here***"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/ActionTransInfo;)Ljava/lang/String;
    .registers 3

    return-object p1
.end method
