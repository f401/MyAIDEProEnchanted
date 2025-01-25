.class public final Lokhttp3/Headers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Headers$Builder;
    }
.end annotation


# instance fields
.field private final namesAndValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lokhttp3/Headers$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    return-void
.end method

.method static checkName(Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_e
    if-ge v0, v2, :cond_4e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_1f

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected char %#04x at %d in header name: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    return-void
.end method

.method static checkValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_8
    if-ge v0, v2, :cond_5b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_16

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1d

    :cond_16
    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected char %#04x at %d in %s value: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object p1, v5, v0

    const/4 v0, 0x3

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value for name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " == null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5b
    return-void
.end method

.method private static get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_3
    if-ltz v0, :cond_15

    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, 0x1

    aget-object v0, p0, v0

    :goto_11
    return-object v0

    :cond_12
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static of(Ljava/util/Map;)Lokhttp3/Headers;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    if-eqz p0, :cond_5e

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lokhttp3/Headers;->checkName(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lokhttp3/Headers;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    aput-object v0, v3, v1

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_14

    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v0, Lokhttp3/Headers;

    invoke-direct {v0, v3}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_5e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "headers == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs of([Ljava/lang/String;)Lokhttp3/Headers;
    .registers 5

    const/4 v2, 0x0

    if-eqz p0, :cond_47

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3f

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v1, v2

    :goto_f
    array-length v3, v0

    if-ge v1, v3, :cond_27

    aget-object v3, v0, v1

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    :goto_27
    array-length v1, v0

    if-ge v2, v1, :cond_39

    aget-object v1, v0, v2

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v0, v3

    invoke-static {v1}, Lokhttp3/Headers;->checkName(Ljava/lang/String;)V

    invoke-static {v3, v1}, Lokhttp3/Headers;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_27

    :cond_39
    new-instance v1, Lokhttp3/Headers;

    invoke-direct {v1, v0}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    return-object v1

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected alternating header names and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "namesAndValues == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public byteCount()J
    .registers 7

    iget-object v2, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    array-length v3, v2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_17

    iget-object v4, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lokhttp3/Headers;

    if-eqz v0, :cond_12

    check-cast p1, Lokhttp3/Headers;

    iget-object v0, p1, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0, p1}, Lokhttp3/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getInstant(Ljava/lang/String;)Ljava/time/Instant;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public name(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_18

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lokhttp3/Headers$Builder;
    .registers 4

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iget-object v1, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toMultimap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_35

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_35
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_27

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public values(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_24

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1a
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    if-eqz v0, :cond_2b

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2a
.end method
