.class public Lcom/s1243808733/aide/dependencies/ArtifactMapping;
.super Ljava/lang/Object;
.source "ArtifactMapping.java"


# static fields
.field public static final DATAS:[[Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 7

    const/4 v3, 0x0

    .line 9
    invoke-static {}, Lcom/s1243808733/aide/dependencies/Migration;->get()Lcom/s1243808733/aide/dependencies/Migration;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/Migration;->getMigrateDependency()Ljava/util/Map;

    move-result-object v4

    .line 11
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    .line 12
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v2, v3

    .line 13
    :goto_0
    array-length v1, v0

    if-lt v2, v1, :cond_0

    return-void

    .line 14
    :cond_0
    sget-object v1, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    aget-object v1, v1, v2

    aget-object v5, v0, v2

    aput-object v5, v1, v3

    .line 15
    sget-object v1, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    aget-object v5, v1, v2

    const/4 v6, 0x1

    sget-object v1, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v5, v6

    .line 13
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
