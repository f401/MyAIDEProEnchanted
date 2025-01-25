.class Lcom/sun/tools/javac/code/Types$2;
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

    .line 205
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$2;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$MapVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 214
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$CapturedType;->getLowerBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$2;->visit(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 205
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$2;->visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 209
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$2;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$2;->visit(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 205
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$2;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
