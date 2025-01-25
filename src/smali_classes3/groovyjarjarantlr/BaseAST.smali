.class public abstract Lgroovyjarjarantlr/BaseAST;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/collections/AST;
.implements Ljava/io/Serializable;


# static fields
.field private static DW:[Ljava/lang/String;

.field private static j6:Z


# instance fields
.field protected FH:Lgroovyjarjarantlr/BaseAST;

.field protected Hw:Lgroovyjarjarantlr/BaseAST;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Lgroovyjarjarantlr/collections/AST;)V
    .registers 2

    check-cast p1, Lgroovyjarjarantlr/BaseAST;

    iput-object p1, p0, Lgroovyjarjarantlr/BaseAST;->FH:Lgroovyjarjarantlr/BaseAST;

    return-void
.end method

.method public FH(Lgroovyjarjarantlr/collections/AST;)V
    .registers 2

    check-cast p1, Lgroovyjarjarantlr/BaseAST;

    iput-object p1, p0, Lgroovyjarjarantlr/BaseAST;->Hw:Lgroovyjarjarantlr/BaseAST;

    return-void
.end method

.method public Hw()I
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/BaseAST;->FH:Lgroovyjarjarantlr/BaseAST;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :goto_5
    iget-object v0, v0, Lgroovyjarjarantlr/BaseAST;->Hw:Lgroovyjarjarantlr/BaseAST;

    if-eqz v0, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    return v1

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public Hw(Lgroovyjarjarantlr/collections/AST;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lgroovyjarjarantlr/BaseAST;->FH:Lgroovyjarjarantlr/BaseAST;

    if-eqz v0, :cond_12

    :goto_7
    iget-object v1, v0, Lgroovyjarjarantlr/BaseAST;->Hw:Lgroovyjarjarantlr/BaseAST;

    if-eqz v1, :cond_d

    move-object v0, v1

    goto :goto_7

    :cond_d
    check-cast p1, Lgroovyjarjarantlr/BaseAST;

    iput-object p1, v0, Lgroovyjarjarantlr/BaseAST;->Hw:Lgroovyjarjarantlr/BaseAST;

    goto :goto_16

    :cond_12
    check-cast p1, Lgroovyjarjarantlr/BaseAST;

    iput-object p1, p0, Lgroovyjarjarantlr/BaseAST;->FH:Lgroovyjarjarantlr/BaseAST;

    :goto_16
    return-void
.end method

.method public aM()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstChild()Lgroovyjarjarantlr/collections/AST;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/BaseAST;->FH:Lgroovyjarjarantlr/BaseAST;

    return-object v0
.end method

.method public getNextSibling()Lgroovyjarjarantlr/collections/AST;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/BaseAST;->Hw:Lgroovyjarjarantlr/BaseAST;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j3()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setType(I)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-boolean v1, Lgroovyjarjarantlr/BaseAST;->j6:Z

    if-eqz v1, :cond_5f

    invoke-virtual {p0}, Lgroovyjarjarantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-virtual {p0}, Lgroovyjarjarantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgroovyjarjarantlr/BaseAST;->DW:[Ljava/lang/String;

    invoke-virtual {p0}, Lgroovyjarjarantlr/BaseAST;->getType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-virtual {p0}, Lgroovyjarjarantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgroovyjarjarantlr/BaseAST;->DW:[Ljava/lang/String;

    invoke-virtual {p0}, Lgroovyjarjarantlr/BaseAST;->getType()I

    move-result v3

    aget-object v2, v2, v3

    const-string v3, "\""

    invoke-static {v2, v3, v3}, Lgroovyjarjarantlr/StringUtils;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgroovyjarjarantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lgroovyjarjarantlr/BaseAST;->DW:[Ljava/lang/String;

    invoke-virtual {p0}, Lgroovyjarjarantlr/BaseAST;->getType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5f
    invoke-virtual {p0}, Lgroovyjarjarantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
