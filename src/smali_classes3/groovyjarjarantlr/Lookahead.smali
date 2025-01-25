.class public Lgroovyjarjarantlr/Lookahead;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field DW:Ljava/lang/String;

.field FH:Lgroovyjarjarantlr/collections/impl/BitSet;

.field Hw:Z

.field j6:Lgroovyjarjarantlr/collections/impl/BitSet;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgroovyjarjarantlr/Lookahead;->Hw:Z

    new-instance v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-direct {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lgroovyjarjarantlr/collections/impl/BitSet;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgroovyjarjarantlr/Lookahead;->Hw:Z

    iput-object p1, p0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    iput-object p1, p0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    return-void
.end method

.method public static j6(I)Lgroovyjarjarantlr/Lookahead;
    .registers 3

    new-instance v0, Lgroovyjarjarantlr/Lookahead;

    invoke-direct {v0}, Lgroovyjarjarantlr/Lookahead;-><init>()V

    iget-object v1, v0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v1, p0}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(I)V

    return-object v0
.end method


# virtual methods
.method public DW()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgroovyjarjarantlr/Lookahead;->Hw:Z

    return-void
.end method

.method public FH()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgroovyjarjarantlr/Lookahead;->Hw:Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/Lookahead;

    iget-object v1, p0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/collections/impl/BitSet;

    iput-object v1, v0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    iget-object v1, p0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    iput-object v1, v0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    iget-object v1, p0, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/collections/impl/BitSet;

    iput-object v1, v0, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_20} :catch_21

    :cond_20
    return-object v0

    :catch_21
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, p1, p2}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lgroovyjarjarantlr/Lookahead;->j6()Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_11

    const-string p2, "+<epsilon>"

    goto :goto_12

    :cond_11
    move-object p2, v0

    :goto_12
    iget-object v1, p0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "; FOLLOW("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    :cond_2f
    move-object v1, v0

    :goto_30
    iget-object v2, p0, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    if-eqz v2, :cond_4d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "; depths="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    const-string v3, ","

    invoke-virtual {v2, v3}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;Lgroovyjarjarantlr/Grammar;)Ljava/lang/String;
    .registers 5

    instance-of v0, p3, Lgroovyjarjarantlr/LexerGrammar;

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/CharFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p2, p3, Lgroovyjarjarantlr/Grammar;->Hw:Lgroovyjarjarantlr/TokenManager;

    invoke-interface {p2}, Lgroovyjarjarantlr/TokenManager;->j6()Lgroovyjarjarantlr/collections/impl/Vector;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgroovyjarjarantlr/Lookahead;->j6(Ljava/lang/String;Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, p1, p2}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Ljava/lang/String;Lgroovyjarjarantlr/collections/impl/Vector;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    const-string v0, ""

    if-eqz p2, :cond_25

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "; FOLLOW("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_26

    :cond_25
    move-object p2, v0

    :goto_26
    iget-object v1, p0, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    if-eqz v1, :cond_43

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "; depths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    const-string v2, ","

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_43
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Lgroovyjarjarantlr/Lookahead;)V
    .registers 4

    iget-object v0, p0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p1, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    iput-object v0, p0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    :cond_8
    invoke-virtual {p1}, Lgroovyjarjarantlr/Lookahead;->j6()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgroovyjarjarantlr/Lookahead;->Hw:Z

    :cond_11
    iget-object v0, p0, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    if-eqz v0, :cond_1d

    iget-object v1, p1, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    if-eqz v1, :cond_29

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    goto :goto_29

    :cond_1d
    iget-object v0, p1, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lgroovyjarjarantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/collections/impl/BitSet;

    iput-object v0, p0, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    :cond_29
    :goto_29
    iget-object v0, p0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    iget-object p1, p1, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Lgroovyjarjarantlr/collections/impl/BitSet;)V

    return-void
.end method

.method public j6()Z
    .registers 2

    iget-boolean v0, p0, Lgroovyjarjarantlr/Lookahead;->Hw:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lgroovyjarjarantlr/Lookahead;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lgroovyjarjarantlr/Lookahead;->j6()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_13

    const-string v2, "+<epsilon>"

    goto :goto_14

    :cond_13
    move-object v2, v3

    :goto_14
    iget-object v4, p0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    if-eqz v4, :cond_31

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "; FOLLOW("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lgroovyjarjarantlr/Lookahead;->DW:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_32

    :cond_31
    move-object v4, v3

    :goto_32
    iget-object v5, p0, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    if-eqz v5, :cond_4d

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "; depths="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lgroovyjarjarantlr/Lookahead;->FH:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v5, v1}, Lgroovyjarjarantlr/collections/impl/BitSet;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4d
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
