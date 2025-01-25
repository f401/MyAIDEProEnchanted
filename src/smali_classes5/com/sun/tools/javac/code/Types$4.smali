.class Lcom/sun/tools/javac/code/Types$4;
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
        "Lcom/sun/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$4;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$SimpleVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 12

    const/4 v0, 0x0

    .line 281
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, p2, :cond_6

    .line 315
    :goto_5
    return-object p1

    .line 283
    :cond_6
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$4;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 284
    if-nez v1, :cond_14

    move-object p1, v0

    .line 285
    goto :goto_5

    .line 286
    :cond_14
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 287
    new-instance v3, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 289
    :try_start_1e
    iget-object v4, p0, Lcom/sun/tools/javac/code/Types$4;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v1, p1, v2, v3}, Lcom/sun/tools/javac/code/Types;->adapt(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/ListBuffer;Lcom/sun/tools/javac/util/ListBuffer;)V
    :try_end_23
    .catch Lcom/sun/tools/javac/code/Types$AdaptFailure; {:try_start_1e .. :try_end_23} :catch_b9

    .line 292
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$4;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v4, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 294
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$4;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v3, p1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_3d

    move-object p1, v0

    .line 295
    goto :goto_5

    .line 296
    :cond_3d
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 297
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 298
    :goto_49
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 299
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/code/Type;->contains(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Type$ClassType;->contains(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 300
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 298
    :cond_68
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_49

    .line 301
    :cond_6c
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 302
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 304
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$4;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    :goto_7e
    move-object p1, v0

    .line 315
    goto :goto_5

    .line 307
    :cond_80
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 308
    new-instance v4, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    move-object v1, v2

    .line 309
    :goto_8a
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 310
    new-instance v5, Lcom/sun/tools/javac/code/Type$WildcardType;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$4;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    sget-object v7, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$4;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v0, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type$TypeVar;)V

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 309
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_8a

    .line 312
    :cond_ae
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$4;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_7e

    .line 290
    :catch_b9
    move-exception v1

    move-object p1, v0

    .line 291
    goto/16 :goto_5

    :cond_bd
    move-object v0, v3

    goto :goto_7e
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 273
    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$4;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 320
    return-object p1
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 273
    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$4;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 273
    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$4;->visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
