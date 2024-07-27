.class public Lcom/sun/tools/javac/util/Context;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/Context$Key;
    }
.end annotation


# instance fields
.field private ft:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/util/Context$Key",
            "<*>;",
            "Lcom/sun/tools/javac/util/Context$Factory",
            "<*>;>;"
        }
    .end annotation
.end field

.field private ht:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/util/Context$Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private kt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sun/tools/javac/util/Context$Key",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/Context;->ft:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/Context;->kt:Ljava/util/Map;

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 4

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/Context;->ft:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/Context;->kt:Ljava/util/Map;

    .line 169
    iget-object v1, p1, Lcom/sun/tools/javac/util/Context;->kt:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ft:Ljava/util/Map;

    iget-object v1, p1, Lcom/sun/tools/javac/util/Context;->ft:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 171
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    iget-object v1, p1, Lcom/sun/tools/javac/util/Context;->ft:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 172
    return-void
.end method

.method private static checkState(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .line 221
    if-eqz p0, :cond_0

    .line 223
    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private key(Ljava/lang/Class;)Lcom/sun/tools/javac/util/Context$Key;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/sun/tools/javac/util/Context$Key",
            "<TT;>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->kt:Ljava/util/Map;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Context;->checkState(Ljava/util/Map;)V

    .line 181
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->kt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Context;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Context$Key;

    .line 182
    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/sun/tools/javac/util/Context;->kt:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    return-object v0
.end method

.method private static uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 206
    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    .line 216
    iput-object v0, p0, Lcom/sun/tools/javac/util/Context;->kt:Ljava/util/Map;

    .line 217
    iput-object v0, p0, Lcom/sun/tools/javac/util/Context;->ft:Ljava/util/Map;

    .line 218
    return-void
.end method

.method public dump()V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 211
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 212
    :cond_1
    return-void
.end method

.method public get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/util/Context$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Context;->checkState(Ljava/util/Map;)V

    .line 144
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    instance-of v1, v0, Lcom/sun/tools/javac/util/Context$Factory;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Lcom/sun/tools/javac/util/Context$Factory;

    .line 147
    invoke-interface {v0, p0}, Lcom/sun/tools/javac/util/Context$Factory;->make(Lcom/sun/tools/javac/util/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    instance-of v0, v1, Lcom/sun/tools/javac/util/Context$Factory;

    if-nez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    move-object v0, v1

    .line 158
    :cond_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Context;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "T extends Context.Factory"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/Context;->key(Ljava/lang/Class;)Lcom/sun/tools/javac/util/Context$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/sun/tools/javac/util/Context$Key;Lcom/sun/tools/javac/util/Context$Factory;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/util/Context$Key",
            "<TT;>;",
            "Lcom/sun/tools/javac/util/Context$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Context;->checkState(Ljava/util/Map;)V

    .line 124
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ft:Ljava/util/Map;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Context;->checkState(Ljava/util/Map;)V

    .line 128
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ft:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "duplicate context value"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/util/Context$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .line 133
    instance-of v0, p2, Lcom/sun/tools/javac/util/Context$Factory;

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Context;->checkState(Ljava/util/Map;)V

    .line 136
    iget-object v0, p0, Lcom/sun/tools/javac/util/Context;->ht:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sun/tools/javac/util/Context$Factory;

    if-nez v1, :cond_0

    if-eq v0, p2, :cond_0

    if-nez p2, :cond_1

    .line 139
    :cond_0
    return-void

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "duplicate context value"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "T extends Context.Factory"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public put(Ljava/lang/Class;Lcom/sun/tools/javac/util/Context$Factory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/sun/tools/javac/util/Context$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/Context;->key(Ljava/lang/Class;)Lcom/sun/tools/javac/util/Context$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Lcom/sun/tools/javac/util/Context$Factory;)V

    .line 198
    return-void
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/Context;->key(Ljava/lang/Class;)Lcom/sun/tools/javac/util/Context$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 195
    return-void
.end method
