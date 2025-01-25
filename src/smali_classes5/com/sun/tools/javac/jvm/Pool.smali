.class public Lcom/sun/tools/javac/jvm/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/jvm/Pool$Method;,
        Lcom/sun/tools/javac/jvm/Pool$Variable;
    }
.end annotation


# static fields
.field public static final MAX_ENTRIES:I = 0xffff

.field public static final MAX_STRING_LENGTH:I = 0xffff


# instance fields
.field indices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field pool:[Ljava/lang/Object;

.field pp:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 76
    const/4 v0, 0x1

    const/16 v1, 0x40

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Pool;-><init>(I[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .registers 7

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    .line 65
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    .line 67
    const/4 v0, 0x1

    :goto_10
    if-ge v0, p1, :cond_24

    .line 68
    aget-object v1, p2, v0

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    aget-object v2, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 70
    :cond_24
    return-void
.end method

.method private doublePool()V
    .registers 5

    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 99
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    .line 101
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)I
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 135
    if-nez v0, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b
.end method

.method public numEntries()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    return v0
.end method

.method public put(Ljava/lang/Object;)I
    .registers 6

    .line 109
    instance-of v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-eqz v0, :cond_57

    .line 110
    new-instance v0, Lcom/sun/tools/javac/jvm/Pool$Method;

    check-cast p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/jvm/Pool$Method;-><init>(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    move-object p1, v0

    .line 114
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 115
    if-nez v0, :cond_52

    .line 117
    iget v0, p0, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget v1, p0, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_2b

    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/Pool;->doublePool()V

    .line 120
    :cond_2b
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    aput-object p1, v1, v2

    .line 121
    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_3d

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_52

    .line 122
    :cond_3d
    iget v1, p0, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_47

    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/Pool;->doublePool()V

    .line 123
    :cond_47
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 126
    :cond_52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 111
    :cond_57
    instance-of v0, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    if-eqz v0, :cond_c

    .line 112
    new-instance v0, Lcom/sun/tools/javac/jvm/Pool$Variable;

    check-cast p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/jvm/Pool$Variable;-><init>(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    move-object p1, v0

    goto :goto_c
.end method

.method public reset()V
    .registers 2

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    .line 91
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Pool;->indices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 92
    return-void
.end method
