.class Lcom/sun/tools/javac/code/Types$ImplementationCache;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImplementationCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;
    }
.end annotation


# instance fields
.field private _map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 3

    .line 2084
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2086
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache;->_map:Ljava/util/WeakHashMap;

    return-void
.end method

.method private implementationInternal(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;ZLcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Z",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    const/16 v4, 0xe

    .line 2133
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    :goto_4
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_e

    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v1, v4, :cond_17

    .line 2134
    :cond_e
    :goto_e
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v1, v4, :cond_19

    .line 2135
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_e

    .line 2145
    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0

    .line 2136
    :cond_19
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2137
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2, p4}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    .line 2138
    :goto_25
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v2, :cond_41

    .line 2140
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v2, :cond_3c

    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache;->this$0:Lcom/sun/tools/javac/code/Types;

    .line 2141
    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/sun/tools/javac/code/Symbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2142
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    goto :goto_18

    .line 2139
    :cond_3c
    invoke-virtual {v1, p4}, Lcom/sun/tools/javac/code/Scope$Entry;->next(Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    goto :goto_25

    .line 2133
    :cond_41
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method get(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;ZLcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Z",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    .line 2113
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache;->_map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 2114
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2115
    :goto_10
    if-nez v0, :cond_56

    .line 2116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2117
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache;->_map:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    .line 2115
    :goto_22
    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;

    .line 2120
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->membersClosure(Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Scope$CompoundScope;

    move-result-object v1

    .line 2121
    if-eqz v0, :cond_3d

    .line 2122
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope$CompoundScope;->getMark()I

    move-result v2

    invoke-virtual {v0, p4, p3, v2}, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;->matches(Lcom/sun/tools/javac/util/Filter;ZI)Z

    move-result v2

    if-nez v2, :cond_53

    .line 2121
    :cond_3d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/code/Types$ImplementationCache;->implementationInternal(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;ZLcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    .line 2124
    new-instance v0, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Scope$CompoundScope;->getMark()I

    move-result v5

    move-object v1, p0

    move-object v3, p4

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;-><init>(Lcom/sun/tools/javac/code/Types$ImplementationCache;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/util/Filter;ZI)V

    invoke-interface {v6, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    :goto_50
    return-object v2

    .line 2114
    :cond_51
    const/4 v0, 0x0

    goto :goto_10

    .line 2128
    :cond_53
    iget-object v2, v0, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;->cachedImpl:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    goto :goto_50

    :cond_56
    move-object v6, v0

    goto :goto_22
.end method
