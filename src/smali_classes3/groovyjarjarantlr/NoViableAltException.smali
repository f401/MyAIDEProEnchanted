.class public Lgroovyjarjarantlr/NoViableAltException;
.super Lgroovyjarjarantlr/RecognitionException;


# instance fields
.field public Hw:Lgroovyjarjarantlr/Token;

.field public v5:Lgroovyjarjarantlr/collections/AST;


# direct methods
.method public constructor <init>(Lgroovyjarjarantlr/Token;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Lgroovyjarjarantlr/Token;->aM()I

    move-result v0

    invoke-virtual {p1}, Lgroovyjarjarantlr/Token;->j3()I

    move-result v1

    const-string v2, "NoViableAlt"

    invoke-direct {p0, v2, p2, v0, v1}, Lgroovyjarjarantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object p1, p0, Lgroovyjarjarantlr/NoViableAltException;->Hw:Lgroovyjarjarantlr/Token;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/NoViableAltException;->Hw:Lgroovyjarjarantlr/Token;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unexpected token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgroovyjarjarantlr/NoViableAltException;->Hw:Lgroovyjarjarantlr/Token;

    invoke-virtual {v1}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v1

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    iget-object v0, p0, Lgroovyjarjarantlr/NoViableAltException;->v5:Lgroovyjarjarantlr/collections/AST;

    sget-object v1, Lgroovyjarjarantlr/TreeParser;->j6:Lgroovyjarjarantlr/ASTNULLType;

    if-ne v0, v1, :cond_25

    const-string v0, "unexpected end of subtree"

    return-object v0

    :cond_25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unexpected AST node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgroovyjarjarantlr/NoViableAltException;->v5:Lgroovyjarjarantlr/collections/AST;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14
.end method
