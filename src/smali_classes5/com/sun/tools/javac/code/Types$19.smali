.class Lcom/sun/tools/javac/code/Types$19;
.super Lcom/sun/tools/javac/code/Types$UnaryVisitor;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
        "<",
        "Lcom/sun/tools/javac/code/Type;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 2

    .line 1804
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$19;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 1853
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$19;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$19;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1854
    :cond_18
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$19;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Types;->access$900(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1856
    :goto_1e
    return-object v0

    :cond_1f
    new-instance v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$19;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto :goto_1e
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1804
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$19;->visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    .line 1814
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    if-nez v0, :cond_3e

    .line 1815
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1817
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1818
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 1819
    :cond_1a
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    if-nez v1, :cond_3e

    .line 1820
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$19;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->classBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1821
    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1822
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->hasErasedSupertypes()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1823
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$19;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->erasureRecursive(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 1832
    :cond_3e
    :goto_3e
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    return-object v0

    .line 1824
    :cond_41
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1825
    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$19;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v0, v2, v1}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    goto :goto_3e

    .line 1828
    :cond_50
    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    goto :goto_3e
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1804
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$19;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 1861
    return-object p1
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1804
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$19;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 1809
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1804
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$19;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 1843
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_18

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 1844
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1845
    :cond_18
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 1847
    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$19;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_1a
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1804
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$19;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
