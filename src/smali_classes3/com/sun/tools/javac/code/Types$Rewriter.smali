.class Lcom/sun/tools/javac/code/Types$Rewriter;
.super Lcom/sun/tools/javac/code/Types$UnaryVisitor;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Rewriter"
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
.field high:Z

.field rewriteTypeVars:Z

.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;ZZ)V
    .registers 4

    .line 3609
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;-><init>()V

    .line 3610
    iput-boolean p2, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->high:Z

    .line 3611
    iput-boolean p3, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->rewriteTypeVars:Z

    .line 3612
    return-void
.end method

.method private rewriteAsWildcardType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 3669
    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->high:Z

    if-eqz v0, :cond_0

    .line 3670
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types$Rewriter;->B(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/sun/tools/javac/code/Types;->access$1100(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/code/Type$WildcardType;

    move-result-object v0

    .line 3669
    :goto_0
    return-object v0

    .line 3671
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types$Rewriter;->B(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/sun/tools/javac/code/Types;->access$1200(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/code/Type$WildcardType;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method B(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 3675
    move-object v0, p1

    :cond_0
    :goto_0
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 3676
    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 3677
    iget-boolean v1, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->high:Z

    if-eqz v1, :cond_1

    .line 3678
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->getExtendsBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3680
    :goto_1
    if-nez v0, :cond_0

    .line 3681
    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->high:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 3679
    :cond_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->getSuperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_1

    .line 3681
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 3684
    :cond_3
    return-object v0
.end method

.method public visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 3639
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$CapturedType;->wildcard:Lcom/sun/tools/javac/code/Type$WildcardType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$Rewriter;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3640
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Type;->contains(Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3641
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3640
    :cond_0
    return-object v0
.end method

.method public bridge synthetic visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3604
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Rewriter;->visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 8

    .line 3616
    new-instance v3, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 3617
    const/4 v0, 0x0

    .line 3618
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 3619
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Rewriter;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 3620
    if-eq v0, v1, :cond_2

    .line 3621
    const/4 v0, 0x1

    .line 3623
    :goto_1
    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    move v2, v0

    .line 3624
    goto :goto_0

    .line 3625
    :cond_0
    if-eqz v2, :cond_1

    .line 3626
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 3627
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 3628
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 3626
    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    .line 3630
    :cond_1
    return-object p1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3604
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Rewriter;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 3634
    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->high:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3604
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Rewriter;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 3647
    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->rewriteTypeVars:Z

    if-eqz v0, :cond_0

    .line 3648
    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->high:Z

    if-eqz v0, :cond_2

    .line 3649
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Type;->contains(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3650
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3653
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/sun/tools/javac/code/Types$Rewriter;->rewriteAsWildcardType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    .line 3656
    :cond_0
    return-object p1

    .line 3651
    :cond_1
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Rewriter;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 3652
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3604
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Rewriter;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 3661
    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->high:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->getExtendsBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3663
    :goto_0
    if-nez v0, :cond_0

    .line 3664
    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->high:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 3665
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Rewriter;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$Rewriter;->rewriteAsWildcardType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0

    .line 3662
    :cond_1
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->getSuperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    .line 3664
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Rewriter;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    goto :goto_1
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3604
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Rewriter;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
