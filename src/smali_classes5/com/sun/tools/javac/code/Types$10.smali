.class Lcom/sun/tools/javac/code/Types$10;
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
.field private cache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/code/Types$TypePair;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 3

    .line 1241
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$10;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$TypeRelation;-><init>()V

    .line 1243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types$10;->cache:Ljava/util/Set;

    return-void
.end method

.method private isCastableRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 6

    .line 1253
    new-instance v1, Lcom/sun/tools/javac/code/Types$TypePair;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$10;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {v1, v0, p1, p2}, Lcom/sun/tools/javac/code/Types$TypePair;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    .line 1254
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$10;->cache:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1256
    :try_start_f
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$10;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1b

    move-result v0

    .line 1258
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$10;->cache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1261
    :goto_1a
    return v0

    .line 1258
    :catchall_1b
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$10;->cache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1259
    throw v0

    .line 1261
    :cond_22
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method private notSoftSubtypeRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 6

    .line 1266
    new-instance v1, Lcom/sun/tools/javac/code/Types$TypePair;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$10;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {v1, v0, p1, p2}, Lcom/sun/tools/javac/code/Types$TypePair;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    .line 1267
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$10;->cache:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1269
    :try_start_f
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$10;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->notSoftSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1b

    move-result v0

    .line 1271
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$10;->cache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1274
    :goto_1a
    return v0

    .line 1271
    :catchall_1b
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$10;->cache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1272
    throw v0

    .line 1274
    :cond_22
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 5

    .line 1246
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_d

    .line 1247
    invoke-virtual {p0, p2, p1}, Lcom/sun/tools/javac/code/Types$10;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1249
    :goto_c
    return-object v0

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$10;->notSoftSubtypeRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0, p2, p1}, Lcom/sun/tools/javac/code/Types$10;->notSoftSubtypeRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1241
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$10;->visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 6

    .line 1280
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isUnbound()Z

    move-result v1

    .line 1281
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1280
    if-eqz v1, :cond_c

    .line 1302
    :cond_b
    :goto_b
    return-object v0

    .line 1283
    :cond_c
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2e

    .line 1284
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1285
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, p2, v0}, Lcom/sun/tools/javac/code/Types$10;->notSoftSubtypeRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b

    .line 1287
    :cond_23
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0, p2}, Lcom/sun/tools/javac/code/Types$10;->notSoftSubtypeRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b

    .line 1290
    :cond_2e
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isUnbound()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1293
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1294
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1295
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$10;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$10;->isCastableRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b

    .line 1296
    :cond_53
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isSuperBound()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1297
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$10;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$10;->notSoftSubtypeRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b

    .line 1298
    :cond_6a
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isSuperBound()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1299
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1300
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$10;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$10;->notSoftSubtypeRecursive(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1241
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$10;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
