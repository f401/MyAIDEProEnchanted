.class Lorg/codehaus/groovy/antlr/AntlrParserPlugin$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final DW:Lorg/codehaus/groovy/antlr/SourceBuffer;

.field final FH:Lorg/codehaus/groovy/antlr/AntlrParserPlugin;

.field final j6:Lorg/codehaus/groovy/control/SourceUnit;


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin$1;->FH:Lorg/codehaus/groovy/antlr/AntlrParserPlugin;

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin$1;->j6:Lorg/codehaus/groovy/control/SourceUnit;

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/AntlrParserPlugin$1;->DW:Lorg/codehaus/groovy/antlr/SourceBuffer;

    invoke-static {v0, v1, v2}, Lorg/codehaus/groovy/antlr/AntlrParserPlugin;->j6(Lorg/codehaus/groovy/antlr/AntlrParserPlugin;Lorg/codehaus/groovy/control/SourceUnit;Lorg/codehaus/groovy/antlr/SourceBuffer;)V

    const/4 v0, 0x0

    return-object v0
.end method
