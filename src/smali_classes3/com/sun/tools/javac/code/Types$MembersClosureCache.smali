.class Lcom/sun/tools/javac/code/Types$MembersClosureCache;
.super Lcom/sun/tools/javac/code/Types$SimpleVisitor;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MembersClosureCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/code/Types$SimpleVisitor",
        "<",
        "Lcom/sun/tools/javac/code/Scope$CompoundScope;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private _map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 3

    .line 2157
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$SimpleVisitor;-><init>()V

    .line 2159
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->_map:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Scope$CompoundScope;
    .registers 7

    .line 2184
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 2185
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->_map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;

    .line 2186
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;->matches(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2187
    :cond_0
    new-instance v2, Lcom/sun/tools/javac/code/Scope$CompoundScope;

    invoke-direct {v2, v0}, Lcom/sun/tools/javac/code/Scope$CompoundScope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    .line 2188
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2189
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 2190
    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Scope$CompoundScope;->addSubScope(Lcom/sun/tools/javac/code/Scope;)V

    goto :goto_0

    .line 2193
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Scope$CompoundScope;->addSubScope(Lcom/sun/tools/javac/code/Scope;)V

    .line 2194
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Scope$CompoundScope;->addSubScope(Lcom/sun/tools/javac/code/Scope;)V

    .line 2195
    new-instance v1, Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v1, p0, v3, v2}, Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;-><init>(Lcom/sun/tools/javac/code/Types$MembersClosureCache;ZLcom/sun/tools/javac/code/Scope$CompoundScope;)V

    .line 2196
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->_map:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    :cond_2
    iget-object v0, v1, Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;->compoundScope:Lcom/sun/tools/javac/code/Scope$CompoundScope;

    return-object v0
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2157
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Scope$CompoundScope;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Scope$CompoundScope;
    .registers 4

    .line 2179
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2157
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Scope$CompoundScope;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Scope$CompoundScope;
    .registers 4

    .line 2203
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$TypeVar;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Scope$CompoundScope;

    return-object v0
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2157
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Boolean;)Lcom/sun/tools/javac/code/Scope$CompoundScope;

    move-result-object v0

    return-object v0
.end method
