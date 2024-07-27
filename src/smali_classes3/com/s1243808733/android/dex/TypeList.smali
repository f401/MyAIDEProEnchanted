.class public final Lcom/s1243808733/android/dex/TypeList;
.super Ljava/lang/Object;
.source "TypeList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dex/TypeList;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dex/TypeList;


# instance fields
.field private final dex:Lcom/s1243808733/android/dex/Dex;

.field private final types:[S


# direct methods
.method static final constructor <clinit>()V
    .registers 3

    new-instance v1, Lcom/s1243808733/android/dex/TypeList;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dex/Dex;

    sget-object v2, Lcom/s1243808733/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    invoke-direct {v1, v0, v2}, Lcom/s1243808733/android/dex/TypeList;-><init>(Lcom/s1243808733/android/dex/Dex;[S)V

    sput-object v1, Lcom/s1243808733/android/dex/TypeList;->EMPTY:Lcom/s1243808733/android/dex/TypeList;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;[S)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/s1243808733/android/dex/TypeList;->dex:Lcom/s1243808733/android/dex/Dex;

    .line 30
    iput-object p2, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dex/TypeList;)I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 39
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/s1243808733/android/dex/TypeList;->types:[S

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    array-length v0, v0

    iget-object v1, p1, Lcom/s1243808733/android/dex/TypeList;->types:[S

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    :goto_1
    return v0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    aget-short v1, v1, v0

    iget-object v2, p1, Lcom/s1243808733/android/dex/TypeList;->types:[S

    aget-short v2, v2, v0

    if-eq v1, v2, :cond_2

    .line 41
    iget-object v1, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    aget-short v1, v1, v0

    iget-object v2, p1, Lcom/s1243808733/android/dex/TypeList;->types:[S

    aget-short v0, v2, v0

    invoke-static {v1, v0}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(SS)I

    move-result v0

    goto :goto_1

    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dex/TypeList;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/TypeList;->compareTo(Lcom/s1243808733/android/dex/TypeList;)I

    move-result v0

    return v0
.end method

.method public getTypes()[S
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v0, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    array-length v3, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 54
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dex/TypeList;->dex:Lcom/s1243808733/android/dex/Dex;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/android/dex/TypeList;->dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    aget-short v4, v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/Short;

    iget-object v4, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    aget-short v4, v4, v1

    invoke-direct {v0, v4}, Ljava/lang/Short;-><init>(S)V

    goto :goto_1
.end method
