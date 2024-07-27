.class Lcom/sun/tools/javac/code/Types$16;
.super Lcom/sun/tools/javac/code/Types$SimpleVisitor;
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
        "Lcom/sun/tools/javac/code/Types$SimpleVisitor",
        "<",
        "Lcom/sun/tools/javac/code/Type;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 2

    .line 1684
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$16;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$SimpleVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 1699
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$16;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1700
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1701
    new-instance v0, Lcom/sun/tools/javac/code/Type$ErasedClassType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v2, v1}, Lcom/sun/tools/javac/code/Type$ErasedClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1703
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1684
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$16;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 1713
    return-object p1
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1684
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$16;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 1686
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 1689
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$16;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Types;->access$600(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type$Mapping;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$16;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Types;->access$700(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type$Mapping;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1684
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$16;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 1708
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$16;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->access$800(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1684
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$16;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 1694
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$16;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->access$800(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1684
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$16;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
