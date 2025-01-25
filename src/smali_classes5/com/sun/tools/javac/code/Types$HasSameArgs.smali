.class Lcom/sun/tools/javac/code/Types$HasSameArgs;
.super Lcom/sun/tools/javac/code/Types$TypeRelation;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HasSameArgs"
.end annotation


# instance fields
.field strict:Z

.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Types;Z)V
    .registers 3

    .line 2239
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$HasSameArgs;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$TypeRelation;-><init>()V

    .line 2240
    iput-boolean p2, p0, Lcom/sun/tools/javac/code/Types$HasSameArgs;->strict:Z

    .line 2241
    return-void
.end method


# virtual methods
.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 4

    .line 2265
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2235
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$HasSameArgs;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 9

    const/4 v1, 0x0

    .line 2255
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1e

    .line 2256
    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types$HasSameArgs;->strict:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2259
    :goto_10
    return-object v0

    .line 2256
    :cond_11
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ForAll;->asMethodType()Lcom/sun/tools/javac/code/Type$MethodType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Types$HasSameArgs;->visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c

    .line 2258
    :cond_1e
    check-cast p2, Lcom/sun/tools/javac/code/Type$ForAll;

    .line 2259
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$HasSameArgs;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->hasSameBounds(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type$ForAll;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$HasSameArgs;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    iget-object v4, p2, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    iget-object v5, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    .line 2260
    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/code/Types$HasSameArgs;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v1, 0x1

    .line 2259
    :cond_43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_10
.end method

.method public bridge synthetic visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2235
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$HasSameArgs;->visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 6

    .line 2249
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$HasSameArgs;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    .line 2250
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->containsTypeEquivalent(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 2249
    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2250
    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public bridge synthetic visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2235
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$HasSameArgs;->visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 4

    .line 2244
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2235
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$HasSameArgs;->visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
