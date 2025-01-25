.class public abstract Lorg/codehaus/groovy/syntax/CSTNode;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract DW()Lorg/codehaus/groovy/syntax/Token;
.end method

.method public FH()I
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/syntax/CSTNode;->j6(Z)Lorg/codehaus/groovy/syntax/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/syntax/Token;->FH()I

    move-result v0

    return v0
.end method

.method public Hw()I
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/syntax/CSTNode;->j6(Z)Lorg/codehaus/groovy/syntax/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/syntax/Token;->Hw()I

    move-result v0

    return v0
.end method

.method public abstract Zo()I
.end method

.method public j6()I
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/groovy/syntax/CSTNode;->Zo()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    sub-int/2addr v0, v1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public abstract j6(I)Lorg/codehaus/groovy/syntax/CSTNode;
.end method

.method public j6(IZ)Lorg/codehaus/groovy/syntax/CSTNode;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/syntax/CSTNode;->j6(I)Lorg/codehaus/groovy/syntax/CSTNode;

    move-result-object p1

    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    sget-object p1, Lorg/codehaus/groovy/syntax/Token;->j6:Lorg/codehaus/groovy/syntax/Token;

    :cond_a
    return-object p1
.end method

.method public j6(Z)Lorg/codehaus/groovy/syntax/Token;
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/groovy/syntax/CSTNode;->DW()Lorg/codehaus/groovy/syntax/Token;

    move-result-object v0

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    sget-object v0, Lorg/codehaus/groovy/syntax/Token;->j6:Lorg/codehaus/groovy/syntax/Token;

    :cond_a
    return-object v0
.end method

.method public j6(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/groovy/syntax/CSTNode;->j6(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method protected j6(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/groovy/syntax/CSTNode;->v5()Z

    move-result v0

    if-nez v0, :cond_e9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/syntax/CSTNode;->j6(Z)Lorg/codehaus/groovy/syntax/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/groovy/syntax/Token;->u7()I

    move-result v2

    invoke-virtual {v1}, Lorg/codehaus/groovy/syntax/Token;->VH()I

    move-result v3

    invoke-static {v2}, Lorg/codehaus/groovy/syntax/Types;->j6(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eq v3, v2, :cond_2d

    const-string v2, " as "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/codehaus/groovy/syntax/Types;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {p0}, Lorg/codehaus/groovy/syntax/CSTNode;->Hw()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_58

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/groovy/syntax/CSTNode;->Hw()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/groovy/syntax/CSTNode;->FH()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_58
    invoke-virtual {v1}, Lorg/codehaus/groovy/syntax/Token;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ": "

    if-lez v2, :cond_9a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x28

    if-le v2, v4, :cond_8c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x11

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, -0x11

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8c
    const-string v2, " \""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "\" "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a3

    :cond_9a
    invoke-virtual {p0}, Lorg/codehaus/groovy/syntax/CSTNode;->j6()I

    move-result v1

    if-lez v1, :cond_a3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a3
    :goto_a3
    invoke-virtual {p0}, Lorg/codehaus/groovy/syntax/CSTNode;->Zo()I

    move-result v1

    if-le v1, v0, :cond_e9

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    :goto_d1
    if-ge v5, v1, :cond_e6

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v0}, Lorg/codehaus/groovy/syntax/CSTNode;->j6(IZ)Lorg/codehaus/groovy/syntax/CSTNode;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lorg/codehaus/groovy/syntax/CSTNode;->j6(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d1

    :cond_e6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, ")"

    if-lez p2, :cond_f5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f8

    :cond_f5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_f8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lorg/codehaus/groovy/syntax/CSTNode;->j6(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
