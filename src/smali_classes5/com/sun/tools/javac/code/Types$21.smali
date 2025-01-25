.class Lcom/sun/tools/javac/code/Types$21;
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

    .line 2018
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$21;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    .line 2026
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$21;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->classBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2027
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    if-eq v1, v0, :cond_1c

    .line 2028
    new-instance v0, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object p1, v0

    .line 2030
    :cond_1c
    return-object p1
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2018
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$21;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 2040
    return-object p1
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2018
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$21;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 2021
    return-object p1
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2018
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$21;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 2035
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$21;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->classBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2018
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$21;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
