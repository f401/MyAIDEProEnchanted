.class public Lcom/s1243808733/aide/dependencies/ArtifactMapping;
.super Ljava/lang/Object;
.source "ArtifactMapping.java"


# static fields
.field public static final DATAS:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 9
    invoke-static {}, Lcom/s1243808733/aide/dependencies/Migration;->get()Lcom/s1243808733/aide/dependencies/Migration;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/Migration;->getMigrateDependency()Ljava/util/Map;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    sput-object v1, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 13
    :goto_29
    array-length v4, v1

    if-ge v3, v4, :cond_44

    .line 14
    sget-object v4, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    aget-object v5, v4, v3

    aget-object v6, v1, v3

    aput-object v6, v5, v2

    .line 15
    aget-object v4, v4, v3

    aget-object v5, v4, v2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
