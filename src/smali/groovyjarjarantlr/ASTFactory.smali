.class public Lgroovyjarjarantlr/ASTFactory;
.super Ljava/lang/Object;


# static fields
.field static j6:Ljava/lang/Class;


# instance fields
.field protected DW:Ljava/lang/String;

.field protected FH:Ljava/lang/Class;

.field protected Hw:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/ASTFactory;->DW:Ljava/lang/String;

    iput-object v0, p0, Lgroovyjarjarantlr/ASTFactory;->FH:Ljava/lang/Class;

    iput-object v0, p0, Lgroovyjarjarantlr/ASTFactory;->Hw:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/ASTFactory;->DW:Ljava/lang/String;

    iput-object v0, p0, Lgroovyjarjarantlr/ASTFactory;->FH:Ljava/lang/Class;

    iput-object v0, p0, Lgroovyjarjarantlr/ASTFactory;->Hw:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/ASTFactory;->j6(Ljava/util/Hashtable;)V

    return-void
.end method

.method static synthetic j6(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public DW(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 5

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/ASTFactory;->FH(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/ASTFactory;->FH(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v2

    invoke-interface {v0, v2}, Lgroovyjarjarantlr/collections/AST;->FH(Lgroovyjarjarantlr/collections/AST;)V

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public DW(I)Ljava/lang/Class;
    .registers 4

    iget-object v0, p0, Lgroovyjarjarantlr/ASTFactory;->Hw:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lgroovyjarjarantlr/ASTFactory;->FH:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-object v0, Lgroovyjarjarantlr/ASTFactory;->j6:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "groovyjarjarantlr.CommonAST"

    invoke-static {v0}, Lgroovyjarjarantlr/ASTFactory;->j6(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lgroovyjarjarantlr/ASTFactory;->j6:Ljava/lang/Class;

    goto :goto_0
.end method

.method public DW(Lgroovyjarjarantlr/ASTPair;Lgroovyjarjarantlr/collections/AST;)V
    .registers 4

    if-eqz p2, :cond_0

    iget-object v0, p1, Lgroovyjarjarantlr/ASTPair;->j6:Lgroovyjarjarantlr/collections/AST;

    invoke-interface {p2, v0}, Lgroovyjarjarantlr/collections/AST;->Hw(Lgroovyjarjarantlr/collections/AST;)V

    iget-object v0, p1, Lgroovyjarjarantlr/ASTPair;->j6:Lgroovyjarjarantlr/collections/AST;

    iput-object v0, p1, Lgroovyjarjarantlr/ASTPair;->DW:Lgroovyjarjarantlr/collections/AST;

    invoke-virtual {p1}, Lgroovyjarjarantlr/ASTPair;->j6()V

    iput-object p2, p1, Lgroovyjarjarantlr/ASTPair;->j6:Lgroovyjarjarantlr/collections/AST;

    :cond_0
    return-void
.end method

.method public DW(Ljava/lang/Class;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgroovyjarjarantlr/ASTFactory;->FH:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/ASTFactory;->DW:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public DW(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public FH(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 4

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/ASTFactory;->j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ASTFactory;->DW(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    invoke-interface {v0, v1}, Lgroovyjarjarantlr/collections/AST;->DW(Lgroovyjarjarantlr/collections/AST;)V

    :cond_0
    return-object v0
.end method

.method public j6(I)Lgroovyjarjarantlr/collections/AST;
    .registers 4

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/ASTFactory;->DW(I)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ASTFactory;->j6(Ljava/lang/Class;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lgroovyjarjarantlr/collections/AST;->j6(ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public j6(ILjava/lang/String;)Lgroovyjarjarantlr/collections/AST;
    .registers 4

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/ASTFactory;->j6(I)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lgroovyjarjarantlr/collections/AST;->j6(ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public j6(Lgroovyjarjarantlr/Token;)Lgroovyjarjarantlr/collections/AST;
    .registers 3

    invoke-virtual {p1}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ASTFactory;->j6(I)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lgroovyjarjarantlr/collections/AST;->j6(Lgroovyjarjarantlr/Token;)V

    :cond_0
    return-object v0
.end method

.method public j6(Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ASTFactory;->j6(Ljava/lang/Class;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-interface {v0, p1}, Lgroovyjarjarantlr/collections/AST;->j6(Lgroovyjarjarantlr/collections/AST;)V

    goto :goto_0
.end method

.method public j6(Lgroovyjarjarantlr/collections/impl/ASTArray;)Lgroovyjarjarantlr/collections/AST;
    .registers 3

    iget-object v0, p1, Lgroovyjarjarantlr/collections/impl/ASTArray;->DW:[Lgroovyjarjarantlr/collections/AST;

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ASTFactory;->j6([Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    return-object v0
.end method

.method protected j6(Ljava/lang/Class;)Lgroovyjarjarantlr/collections/AST;
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/collections/AST;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Can\'t create AST Node "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ASTFactory;->DW(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6([Lgroovyjarjarantlr/collections/AST;)Lgroovyjarjarantlr/collections/AST;
    .registers 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lgroovyjarjarantlr/collections/AST;->DW(Lgroovyjarjarantlr/collections/AST;)V

    :cond_3
    const/4 v1, 0x1

    move v3, v1

    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    aget-object v1, p1, v3

    if-nez v1, :cond_5

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    aget-object v1, p1, v3

    move-object v0, v1

    move-object v2, v1

    :goto_1
    invoke-interface {v2}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_6
    if-nez v2, :cond_7

    aget-object v1, p1, v3

    invoke-interface {v0, v1}, Lgroovyjarjarantlr/collections/AST;->DW(Lgroovyjarjarantlr/collections/AST;)V

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_7
    aget-object v1, p1, v3

    invoke-interface {v2, v1}, Lgroovyjarjarantlr/collections/AST;->FH(Lgroovyjarjarantlr/collections/AST;)V

    invoke-interface {v2}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    move-object v2, v1

    goto :goto_1
.end method

.method public j6(Lgroovyjarjarantlr/ASTPair;Lgroovyjarjarantlr/collections/AST;)V
    .registers 5

    if-eqz p2, :cond_0

    iget-object v0, p1, Lgroovyjarjarantlr/ASTPair;->j6:Lgroovyjarjarantlr/collections/AST;

    if-nez v0, :cond_1

    iput-object p2, p1, Lgroovyjarjarantlr/ASTPair;->j6:Lgroovyjarjarantlr/collections/AST;

    :goto_0
    iput-object p2, p1, Lgroovyjarjarantlr/ASTPair;->DW:Lgroovyjarjarantlr/collections/AST;

    invoke-virtual {p1}, Lgroovyjarjarantlr/ASTPair;->j6()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p1, Lgroovyjarjarantlr/ASTPair;->DW:Lgroovyjarjarantlr/collections/AST;

    if-nez v1, :cond_2

    invoke-interface {v0, p2}, Lgroovyjarjarantlr/collections/AST;->DW(Lgroovyjarjarantlr/collections/AST;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1, p2}, Lgroovyjarjarantlr/collections/AST;->FH(Lgroovyjarjarantlr/collections/AST;)V

    goto :goto_0
.end method

.method public j6(Ljava/util/Hashtable;)V
    .registers 2

    iput-object p1, p0, Lgroovyjarjarantlr/ASTFactory;->Hw:Ljava/util/Hashtable;

    return-void
.end method
