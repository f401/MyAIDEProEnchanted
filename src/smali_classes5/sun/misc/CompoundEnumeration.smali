.class public Lsun/misc/CompoundEnumeration;
.super Ljava/lang/Object;
.source "CompoundEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private enums:[Ljava/util/Enumeration;

.field private index:I


# direct methods
.method public constructor <init>([Ljava/util/Enumeration;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    .line 40
    iput-object p1, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    .line 41
    return-void
.end method

.method private next()Z
    .registers 4

    .line 44
    :goto_0
    iget v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    iget-object v1, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 45
    aget-object v2, v1, v0

    if-eqz v2, :cond_15

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 46
    const/4 v0, 0x1

    .line 50
    :goto_14
    return v0

    .line 48
    :cond_15
    iget v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    goto :goto_0

    .line 50
    :cond_1c
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 54
    invoke-direct {p0}, Lsun/misc/CompoundEnumeration;->next()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lsun/misc/CompoundEnumeration;->next()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
