.class Lcom/sun/tools/javac/code/Types$1;
.super Lcom/sun/tools/javac/code/Types$MapVisitor;
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
        "Lcom/sun/tools/javac/code/Types$MapVisitor",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$1;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$MapVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 187
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$CapturedType;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$1;->visit(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 175
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$1;->visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 179
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isSuperBound()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 180
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$1;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 182
    :goto_10
    return-object v0

    .line 180
    :cond_11
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    goto :goto_10

    .line 182
    :cond_16
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$1;->visit(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_10
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 175
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$1;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
