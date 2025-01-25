.class Lgroovyjarjarantlr/SimpleTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/TokenManager;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected DW:Lgroovyjarjarantlr/collections/impl/Vector;

.field private FH:Ljava/util/Hashtable;

.field protected Hw:Lgroovyjarjarantlr/Tool;

.field protected j6:I

.field protected v5:Ljava/lang/String;


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/SimpleTokenManager;->j6:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public DW(Ljava/lang/String;)Lgroovyjarjarantlr/TokenSymbol;
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/SimpleTokenManager;->FH:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgroovyjarjarantlr/TokenSymbol;

    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/SimpleTokenManager;

    iget-object v1, p0, Lgroovyjarjarantlr/SimpleTokenManager;->DW:Lgroovyjarjarantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lgroovyjarjarantlr/collections/impl/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovyjarjarantlr/collections/impl/Vector;

    iput-object v1, v0, Lgroovyjarjarantlr/SimpleTokenManager;->DW:Lgroovyjarjarantlr/collections/impl/Vector;

    iget-object v1, p0, Lgroovyjarjarantlr/SimpleTokenManager;->FH:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Lgroovyjarjarantlr/SimpleTokenManager;->FH:Ljava/util/Hashtable;

    iget v1, p0, Lgroovyjarjarantlr/SimpleTokenManager;->j6:I

    iput v1, v0, Lgroovyjarjarantlr/SimpleTokenManager;->j6:I

    iget-object v1, p0, Lgroovyjarjarantlr/SimpleTokenManager;->Hw:Lgroovyjarjarantlr/Tool;

    iput-object v1, v0, Lgroovyjarjarantlr/SimpleTokenManager;->Hw:Lgroovyjarjarantlr/Tool;

    iget-object v1, p0, Lgroovyjarjarantlr/SimpleTokenManager;->v5:Ljava/lang/String;

    iput-object v1, v0, Lgroovyjarjarantlr/SimpleTokenManager;->v5:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_26} :catch_27

    return-object v0

    :catch_27
    move-exception v0

    iget-object v0, p0, Lgroovyjarjarantlr/SimpleTokenManager;->Hw:Lgroovyjarjarantlr/Tool;

    const-string v1, "cannot clone token manager"

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/Tool;->FH(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6()Lgroovyjarjarantlr/collections/impl/Vector;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/SimpleTokenManager;->DW:Lgroovyjarjarantlr/collections/impl/Vector;

    return-object v0
.end method

.method public j6(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/SimpleTokenManager;->FH:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
