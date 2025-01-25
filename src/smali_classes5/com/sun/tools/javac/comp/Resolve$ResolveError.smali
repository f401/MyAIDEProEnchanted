.class abstract Lcom/sun/tools/javac/comp/Resolve$ResolveError;
.super Lcom/sun/tools/javac/code/Symbol;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ResolveError"
.end annotation


# instance fields
.field final debugName:Ljava/lang/String;

.field final this$0:Lcom/sun/tools/javac/comp/Resolve;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Resolve;ILjava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    .line 1847
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$ResolveError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    .line 1848
    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symbol;-><init>(IJLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1849
    iput-object p3, p0, Lcom/sun/tools/javac/comp/Resolve$ResolveError;->debugName:Ljava/lang/String;

    .line 1850
    return-void
.end method


# virtual methods
.method public accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/element/ElementVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1854
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected access(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;
    .registers 5

    .line 1877
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$ResolveError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$ResolveError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    return-object v0
.end method

.method public exists()Z
    .registers 2

    .line 1864
    const/4 v0, 0x0

    return v0
.end method

.method abstract getDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/JCDiagnostic;"
        }
    .end annotation
.end method

.method isOperator(Lcom/sun/tools/javac/util/Name;)Z
    .registers 6

    const/4 v1, 0x0

    .line 1905
    move v0, v1

    .line 1906
    :goto_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1907
    const-string v2, "+-~!*/%&|^<>="

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Name;->getByteAt(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1908
    :cond_17
    if-lez v0, :cond_20

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v2

    if-ne v0, v2, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1859
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$ResolveError;->debugName:Ljava/lang/String;

    return-object v0
.end method
