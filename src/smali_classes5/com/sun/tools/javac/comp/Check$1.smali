.class Lcom/sun/tools/javac/comp/Check$1;
.super Lcom/sun/tools/javac/code/Types$UnaryVisitor;
.source "Check.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Check;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Check;)V
    .registers 2

    .line 836
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check$1;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    .line 846
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$CapturedType;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20

    .line 847
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$CapturedType;->getLowerBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_20
    const/4 v0, 0x1

    .line 846
    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 847
    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public bridge synthetic visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 836
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check$1;->visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    .line 838
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 836
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check$1;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    .line 842
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$TypeVar;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 836
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check$1;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    .line 851
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Check$1;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 836
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check$1;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
