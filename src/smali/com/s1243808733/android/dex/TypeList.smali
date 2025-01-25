.class public final Lcom/s1243808733/android/dex/TypeList;
.super Ljava/lang/Object;
.source "TypeList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
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
.method static constructor <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Lcom/s1243808733/android/dex/TypeList;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dex/TypeList;-><init>(Lcom/s1243808733/android/dex/Dex;[S)V

    sput-object v0, Lcom/s1243808733/android/dex/TypeList;->EMPTY:Lcom/s1243808733/android/dex/TypeList;

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
    .registers 6

    const/4 v0, 0x0

    .line 39
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    array-length v2, v1

    if-ge v0, v2, :cond_19

    iget-object v2, p1, Lcom/s1243808733/android/dex/TypeList;->types:[S

    array-length v3, v2

    if-ge v0, v3, :cond_19

    .line 40
    aget-short v1, v1, v0

    aget-short v2, v2, v0

    if-eq v1, v2, :cond_16

    .line 41
    invoke-static {v1, v2}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(SS)I

    move-result p1

    return p1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_19
    array-length v0, v1

    iget-object p1, p1, Lcom/s1243808733/android/dex/TypeList;->types:[S

    array-length p1, p1

    invoke-static {v0, p1}, Lcom/s1243808733/android/dex/util/Unsigned;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 21
    check-cast p1, Lcom/s1243808733/android/dex/TypeList;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/TypeList;->compareTo(Lcom/s1243808733/android/dex/TypeList;)I

    move-result p1

    return p1
.end method

.method public getTypes()[S
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    array-length v1, v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_2c

    .line 52
    iget-object v3, p0, Lcom/s1243808733/android/dex/TypeList;->dex:Lcom/s1243808733/android/dex/Dex;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    aget-short v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_26

    :cond_1e
    iget-object v3, p0, Lcom/s1243808733/android/dex/TypeList;->types:[S

    aget-short v3, v3, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    :goto_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 54
    :cond_2c
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
