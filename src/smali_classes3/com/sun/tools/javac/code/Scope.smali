.class public Lcom/sun/tools/javac/code/Scope;
.super Ljava/lang/Object;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/Scope$CompoundScope;,
        Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;,
        Lcom/sun/tools/javac/code/Scope$DelegatedScope;,
        Lcom/sun/tools/javac/code/Scope$Entry;,
        Lcom/sun/tools/javac/code/Scope$ErrorScope;,
        Lcom/sun/tools/javac/code/Scope$ImportScope;,
        Lcom/sun/tools/javac/code/Scope$ImportScope$ImportEntry;,
        Lcom/sun/tools/javac/code/Scope$ScopeListener;,
        Lcom/sun/tools/javac/code/Scope$StarImportScope;
    }
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x10

.field public static final emptyScope:Lcom/sun/tools/javac/code/Scope;

.field static final noFilter:Lcom/sun/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private static final sentinel:Lcom/sun/tools/javac/code/Scope$Entry;


# instance fields
.field public elems:Lcom/sun/tools/javac/code/Scope$Entry;

.field hashMask:I

.field listeners:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Scope$ScopeListener;",
            ">;"
        }
    .end annotation
.end field

.field nelems:I

.field public next:Lcom/sun/tools/javac/code/Scope;

.field public owner:Lcom/sun/tools/javac/code/Symbol;

.field private shared:I

.field table:[Lcom/sun/tools/javac/code/Scope$Entry;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/sun/tools/javac/code/Scope$Entry;-><init>(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope;)V

    sput-object v0, Lcom/sun/tools/javac/code/Scope;->sentinel:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 90
    new-instance v0, Lcom/sun/tools/javac/code/Scope;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-direct {v0, v2, v2, v1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;)V

    sput-object v0, Lcom/sun/tools/javac/code/Scope;->emptyScope:Lcom/sun/tools/javac/code/Scope;

    .line 303
    new-instance v0, Lcom/sun/tools/javac/code/Scope$1;

    invoke-direct {v0}, Lcom/sun/tools/javac/code/Scope$1;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/code/Scope;->noFilter:Lcom/sun/tools/javac/util/Filter;

    return-void
.end method

.method private constructor <init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;)V
    .registers 6

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v0, p0, Lcom/sun/tools/javac/code/Scope;->nelems:I

    .line 77
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/code/Scope;->listeners:Lcom/sun/tools/javac/util/List;

    .line 96
    iput-object p1, p0, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    .line 97
    sget-object v1, Lcom/sun/tools/javac/code/Scope;->emptyScope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 98
    iput-object p2, p0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 99
    iput-object p3, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    .line 100
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/code/Scope;->hashMask:I

    .line 101
    return-void
.end method

.method private constructor <init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;I)V
    .registers 5

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;)V

    .line 106
    iput p4, p0, Lcom/sun/tools/javac/code/Scope;->nelems:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$1;)V
    .registers 5

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 4

    .line 113
    const/4 v0, 0x0

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-direct {p0, v0, p1, v1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;)V

    .line 114
    return-void
.end method

.method private dble()V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    iget v0, p0, Lcom/sun/tools/javac/code/Scope;->shared:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 171
    iget-object v4, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    .line 172
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v3, p0

    .line 173
    :goto_1
    if-eqz v3, :cond_4

    .line 174
    iget-object v0, v3, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    if-ne v0, v4, :cond_1

    .line 175
    if-eq v3, p0, :cond_0

    iget v0, v3, Lcom/sun/tools/javac/code/Scope;->shared:I

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 176
    iput-object v5, v3, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    .line 177
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, Lcom/sun/tools/javac/code/Scope;->hashMask:I

    .line 173
    :cond_1
    iget-object v0, v3, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    move-object v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 170
    goto :goto_0

    :cond_3
    move v0, v2

    .line 175
    goto :goto_2

    .line 181
    :cond_4
    array-length v1, v4

    move v0, v2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 182
    aget-object v2, v4, v1

    .line 183
    if-eqz v2, :cond_5

    sget-object v3, Lcom/sun/tools/javac/code/Scope;->sentinel:Lcom/sun/tools/javac/code/Scope$Entry;

    if-eq v2, v3, :cond_5

    .line 184
    iget-object v3, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v5, v2, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v5}, Lcom/sun/tools/javac/code/Scope;->getIndex(Lcom/sun/tools/javac/util/Name;)I

    move-result v5

    aput-object v2, v3, v5

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 190
    :cond_6
    iput v0, p0, Lcom/sun/tools/javac/code/Scope;->nelems:I

    .line 191
    return-void
.end method


# virtual methods
.method public addScopeListener(Lcom/sun/tools/javac/code/Scope$ScopeListener;)V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->listeners:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope;->listeners:Lcom/sun/tools/javac/util/List;

    .line 241
    return-void
.end method

.method public dup()Lcom/sun/tools/javac/code/Scope;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Scope;->dup(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    return-object v0
.end method

.method public dup(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Scope;
    .registers 5

    .line 131
    new-instance v0, Lcom/sun/tools/javac/code/Scope;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    iget v2, p0, Lcom/sun/tools/javac/code/Scope;->nelems:I

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;I)V

    .line 132
    iget v1, p0, Lcom/sun/tools/javac/code/Scope;->shared:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/code/Scope;->shared:I

    .line 135
    return-object v0
.end method

.method public dupUnshared()Lcom/sun/tools/javac/code/Scope;
    .registers 5

    .line 143
    new-instance v1, Lcom/sun/tools/javac/code/Scope;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/code/Scope$Entry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/Scope$Entry;

    iget v3, p0, Lcom/sun/tools/javac/code/Scope;->nelems:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;I)V

    return-object v1
.end method

.method public enter(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 3

    .line 196
    iget v0, p0, Lcom/sun/tools/javac/code/Scope;->shared:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 197
    invoke-virtual {p0, p1, p0}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 198
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V
    .registers 3

    .line 201
    invoke-virtual {p0, p1, p2, p2}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)V

    .line 202
    return-void
.end method

.method public enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)V
    .registers 11

    .line 210
    iget v0, p0, Lcom/sun/tools/javac/code/Scope;->shared:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 211
    iget v0, p0, Lcom/sun/tools/javac/code/Scope;->nelems:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/sun/tools/javac/code/Scope;->hashMask:I

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Scope;->dble()V

    .line 213
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Scope;->getIndex(Lcom/sun/tools/javac/util/Name;)I

    move-result v6

    .line 214
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    aget-object v2, v0, v6

    .line 215
    if-nez v2, :cond_1

    .line 216
    sget-object v2, Lcom/sun/tools/javac/code/Scope;->sentinel:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 217
    iget v0, p0, Lcom/sun/tools/javac/code/Scope;->nelems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/code/Scope;->nelems:I

    .line 219
    :cond_1
    iget-object v3, p0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/code/Scope;->makeEntry(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    aput-object v0, v1, v6

    .line 221
    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 224
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->listeners:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Scope$ScopeListener;

    invoke-interface {v0, p1, p0}, Lcom/sun/tools/javac/code/Scope$ScopeListener;->symbolAdded(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 224
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1

    .line 210
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :cond_3
    return-void
.end method

.method public enterIfAbsent(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5

    .line 285
    iget v0, p0, Lcom/sun/tools/javac/code/Scope;->shared:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 286
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 287
    :goto_1
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-ne v1, p0, :cond_1

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    iget v2, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_1

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eq v0, p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 289
    :cond_2
    return-void
.end method

.method public getElements()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/sun/tools/javac/code/Scope;->noFilter:Lcom/sun/tools/javac/util/Filter;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Scope;->getElements(Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getElements(Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Lcom/sun/tools/javac/code/Scope$2;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/code/Scope$2;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/util/Filter;)V

    return-object v0
.end method

.method public getElementsByName(Lcom/sun/tools/javac/util/Name;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/sun/tools/javac/code/Scope;->noFilter:Lcom/sun/tools/javac/util/Filter;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/code/Scope;->getElementsByName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 418
    new-instance v0, Lcom/sun/tools/javac/code/Scope$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/tools/javac/code/Scope$3;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)V

    return-object v0
.end method

.method getIndex(Lcom/sun/tools/javac/util/Name;)I
    .registers 8

    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 343
    iget v3, p0, Lcom/sun/tools/javac/code/Scope;->hashMask:I

    and-int v1, v2, v3

    .line 346
    const/4 v0, -0x1

    .line 349
    :goto_0
    iget-object v4, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    aget-object v4, v4, v1

    .line 350
    if-nez v4, :cond_0

    .line 351
    if-ltz v0, :cond_3

    .line 358
    :goto_1
    return v0

    .line 352
    :cond_0
    sget-object v5, Lcom/sun/tools/javac/code/Scope;->sentinel:Lcom/sun/tools/javac/code/Scope$Entry;

    if-ne v4, v5, :cond_2

    .line 355
    if-gez v0, :cond_1

    move v0, v1

    .line 359
    :cond_1
    shr-int/lit8 v4, v2, 0x10

    add-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x1

    sub-int v4, v3, v4

    add-int/2addr v1, v4

    iget v4, p0, Lcom/sun/tools/javac/code/Scope;->hashMask:I

    and-int/2addr v1, v4

    .line 360
    goto :goto_0

    .line 357
    :cond_2
    iget-object v4, v4, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    if-ne v4, p1, :cond_1

    move v0, v1

    .line 358
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public includes(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 4

    .line 295
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 296
    :goto_0
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-ne v1, p0, :cond_1

    .line 298
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    .line 300
    :goto_1
    return v0

    .line 297
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->next()Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public leave()Lcom/sun/tools/javac/code/Scope;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    iget v0, p0, Lcom/sun/tools/javac/code/Scope;->shared:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 151
    iget-object v3, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    iget-object v4, v0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    if-eq v3, v4, :cond_1

    .line 164
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 150
    goto :goto_0

    .line 152
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Scope;->getIndex(Lcom/sun/tools/javac/util/Name;)I

    move-result v3

    .line 154
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    aget-object v0, v0, v3

    .line 155
    iget-object v4, p0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_3
    iget-object v4, p0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v0, v4}, Lcom/sun/tools/javac/util/Assert;->check(ZLjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v4, p0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-static {v4}, Lcom/sun/tools/javac/code/Scope$Entry;->access$000(Lcom/sun/tools/javac/code/Scope$Entry;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v4

    aput-object v4, v0, v3

    .line 157
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_2

    :cond_2
    move v0, v2

    .line 155
    goto :goto_3

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    iget v0, v0, Lcom/sun/tools/javac/code/Scope;->shared:I

    if-lez v0, :cond_4

    :goto_4
    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 160
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    iget v1, v0, Lcom/sun/tools/javac/code/Scope;->shared:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/sun/tools/javac/code/Scope;->shared:I

    .line 161
    iget v1, p0, Lcom/sun/tools/javac/code/Scope;->nelems:I

    iput v1, v0, Lcom/sun/tools/javac/code/Scope;->nelems:I

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;
    .registers 3

    .line 316
    sget-object v0, Lcom/sun/tools/javac/code/Scope;->noFilter:Lcom/sun/tools/javac/util/Filter;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Scope$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)",
            "Lcom/sun/tools/javac/code/Scope$Entry;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Scope;->getIndex(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    aget-object v0, v0, v1

    .line 320
    if-eqz v0, :cond_0

    sget-object v1, Lcom/sun/tools/javac/code/Scope;->sentinel:Lcom/sun/tools/javac/code/Scope$Entry;

    if-ne v0, v1, :cond_2

    .line 321
    :cond_0
    sget-object v0, Lcom/sun/tools/javac/code/Scope;->sentinel:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 324
    :cond_1
    return-object v0

    .line 322
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    if-ne v1, p1, :cond_3

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-interface {p2, v1}, Lcom/sun/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    :cond_3
    invoke-static {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->access$000(Lcom/sun/tools/javac/code/Scope$Entry;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method makeEntry(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/code/Scope$Entry;
    .registers 7

    .line 230
    new-instance v0, Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sun/tools/javac/code/Scope$Entry;-><init>(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope;)V

    return-object v0
.end method

.method public remove(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 6

    .line 247
    iget v0, p0, Lcom/sun/tools/javac/code/Scope;->shared:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 248
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    .line 249
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-nez v0, :cond_2

    .line 280
    :cond_0
    return-void

    .line 247
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Scope;->getIndex(Lcom/sun/tools/javac/util/Name;)I

    move-result v2

    .line 253
    iget-object v3, p0, Lcom/sun/tools/javac/code/Scope;->table:[Lcom/sun/tools/javac/code/Scope$Entry;

    aget-object v0, v3, v2

    .line 254
    if-ne v0, v1, :cond_4

    .line 255
    invoke-static {v1}, Lcom/sun/tools/javac/code/Scope$Entry;->access$000(Lcom/sun/tools/javac/code/Scope$Entry;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    aput-object v0, v3, v2

    .line 259
    :goto_1
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 266
    if-ne v0, v1, :cond_6

    .line 267
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 271
    :goto_2
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope;->listeners:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Scope$ScopeListener;

    invoke-interface {v0, p1, p0}, Lcom/sun/tools/javac/code/Scope$ScopeListener;->symbolRemoved(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V

    .line 277
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_3

    .line 261
    :cond_3
    invoke-static {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->access$000(Lcom/sun/tools/javac/code/Scope$Entry;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    .line 257
    :cond_4
    invoke-static {v0}, Lcom/sun/tools/javac/code/Scope$Entry;->access$000(Lcom/sun/tools/javac/code/Scope$Entry;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    if-ne v2, v1, :cond_3

    .line 258
    invoke-static {v1}, Lcom/sun/tools/javac/code/Scope$Entry;->access$000(Lcom/sun/tools/javac/code/Scope$Entry;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sun/tools/javac/code/Scope$Entry;->access$002(Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;)Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_1

    .line 273
    :cond_5
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 269
    :cond_6
    iget-object v2, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    if-ne v2, v1, :cond_5

    .line 270
    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    const-string v0, "Scope["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    .line 442
    :goto_0
    if-eqz v1, :cond_3

    .line 443
    if-eq v1, p0, :cond_0

    const-string v0, " | "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_0
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    :goto_1
    if-eqz v0, :cond_2

    .line 445
    iget-object v3, v1, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    if-eq v0, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_1
    iget-object v3, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_1

    .line 442
    :cond_2
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    move-object v1, v0

    goto :goto_0

    .line 449
    :cond_3
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
