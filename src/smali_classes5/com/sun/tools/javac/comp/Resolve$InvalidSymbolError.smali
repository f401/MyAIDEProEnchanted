.class abstract Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;
.super Lcom/sun/tools/javac/comp/Resolve$ResolveError;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "InvalidSymbolError"
.end annotation


# instance fields
.field sym:Lcom/sun/tools/javac/code/Symbol;

.field final this$0:Lcom/sun/tools/javac/comp/Resolve;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Resolve;ILcom/sun/tools/javac/code/Symbol;Ljava/lang/String;)V
    .registers 5

    .line 1921
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    .line 1922
    invoke-direct {p0, p1, p2, p4}, Lcom/sun/tools/javac/comp/Resolve$ResolveError;-><init>(Lcom/sun/tools/javac/comp/Resolve;ILjava/lang/String;)V

    .line 1923
    iput-object p3, p0, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1924
    return-void
.end method


# virtual methods
.method public access(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;
    .registers 5

    .line 1938
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0x41

    if-lt v0, v1, :cond_11

    .line 1939
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/comp/Resolve$ResolveError;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/comp/Resolve$ResolveError;->access(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    .line 1943
    :goto_10
    return-object v0

    .line 1940
    :cond_11
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_30

    .line 1941
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_10

    .line 1943
    :cond_30
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_10
.end method

.method public exists()Z
    .registers 2

    .line 1928
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sun/tools/javac/comp/Resolve$ResolveError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wrongSym="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
