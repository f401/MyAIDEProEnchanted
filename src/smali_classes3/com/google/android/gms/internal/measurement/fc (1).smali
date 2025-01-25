.class public final Lcom/google/android/gms/internal/measurement/fc;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final j6:Lcom/google/android/gms/internal/measurement/fc;


# instance fields
.field private DW:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/fc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/fc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/fc;->j6:Lcom/google/android/gms/internal/measurement/fc;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/fc;->DW:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fc;->DW:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/fc;->DW:Z

    return-void
.end method

.method private static DW(Ljava/lang/Object;)I
    .registers 2

    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    check-cast p0, [B

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/Hb;->j6([B)I

    move-result p0

    return p0

    :cond_b
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/Ib;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static FH()Lcom/google/android/gms/internal/measurement/fc;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/measurement/fc<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/fc;->j6:Lcom/google/android/gms/internal/measurement/fc;

    return-object v0
.end method

.method private final gn()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fc;->DW:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fc;->DW:Z

    return-void
.end method

.method public final clear()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/fc;->gn()V

    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eq p0, p1, :cond_59

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    goto :goto_57

    :cond_15
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_57

    :cond_34
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v4, [B

    if-eqz v5, :cond_51

    instance-of v5, v3, [B

    if-eqz v5, :cond_51

    check-cast v4, [B

    check-cast v3, [B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_55

    :cond_51
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_55
    if-nez v3, :cond_1d

    :goto_57
    const/4 p1, 0x0

    goto :goto_5a

    :cond_59
    const/4 p1, 0x1

    :goto_5a
    if-eqz p1, :cond_5d

    return v0

    :cond_5d
    return v1
.end method

.method public final hashCode()I
    .registers 5

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/fc;->DW(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/fc;->DW(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_9

    :cond_28
    return v1
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/fc;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/fc<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/fc;->gn()V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/fc;->putAll(Ljava/util/Map;)V

    :cond_c
    return-void
.end method

.method public final j6()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fc;->DW:Z

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/fc;->gn()V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Hb;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/Hb;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/fc;->gn()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/Hb;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/Hb;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_20
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/fc;->gn()V

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final v5()Lcom/google/android/gms/internal/measurement/fc;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/fc<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/measurement/fc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/fc;-><init>()V

    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/measurement/fc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/fc;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
