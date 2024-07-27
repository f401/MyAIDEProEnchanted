.class Lcom/sun/tools/javac/code/Types$8;
.super Lcom/sun/tools/javac/code/Types$TypeRelation;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 2

    .line 902
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$TypeRelation;-><init>()V

    return-void
.end method

.method private L(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 916
    move-object v0, p1

    :goto_0
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 917
    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 918
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    .line 923
    :cond_0
    return-object v0

    .line 921
    :cond_1
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    goto :goto_0
.end method

.method private U(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 905
    move-object v0, p1

    :goto_0
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 906
    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 907
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isSuperBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 908
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 912
    :cond_0
    :goto_1
    return-object v0

    .line 908
    :cond_1
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    goto :goto_1

    .line 910
    :cond_2
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    goto :goto_0
.end method


# virtual methods
.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 4

    .line 970
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 902
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$8;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 5

    .line 927
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 928
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2, p1}, Lcom/sun/tools/javac/code/Types;->containedBy(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 930
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 902
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$8;->visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 5

    .line 962
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    .line 963
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 965
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 902
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$8;->visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 6

    .line 949
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 950
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2, p1}, Lcom/sun/tools/javac/code/Types;->containedBy(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 953
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSameWildcard(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    .line 954
    invoke-virtual {v0, p2, p1}, Lcom/sun/tools/javac/code/Types;->isCaptureOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$WildcardType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 955
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Types$8;->L(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p2}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 956
    :cond_1
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isSuperBound()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$8;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Types$8;->U(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 953
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 956
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 902
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$8;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
