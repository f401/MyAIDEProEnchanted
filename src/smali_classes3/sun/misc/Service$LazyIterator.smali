.class Lsun/misc/Service$LazyIterator;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyIterator"
.end annotation


# instance fields
.field configs:Ljava/util/Enumeration;

.field loader:Ljava/lang/ClassLoader;

.field nextName:Ljava/lang/String;

.field pending:Ljava/util/Iterator;

.field returned:Ljava/util/Set;

.field service:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 5

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object v1, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    .line 247
    iput-object v1, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    .line 248
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->returned:Ljava/util/Set;

    .line 249
    iput-object v1, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    .line 252
    iput-object p1, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    .line 253
    iput-object p2, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Lsun/misc/Service$1;)V
    .registers 4

    .line 242
    invoke-direct {p0, p1, p2}, Lsun/misc/Service$LazyIterator;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    const/4 v1, 0x1

    .line 257
    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    .line 278
    :goto_0
    return v0

    .line 260
    :cond_0
    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    if-nez v0, :cond_1

    .line 262
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "META-INF/services/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_3

    .line 264
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_1
    :goto_1
    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 272
    :cond_2
    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_5

    .line 273
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    :cond_3
    :try_start_1
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lsun/misc/Service;->access$000(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_4
    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    move v0, v1

    .line 278
    goto :goto_0

    .line 275
    :cond_5
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iget-object v3, p0, Lsun/misc/Service$LazyIterator;->returned:Ljava/util/Set;

    invoke-static {v2, v0, v3}, Lsun/misc/Service;->access$100(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0}, Lsun/misc/Service$LazyIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    .line 288
    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    iget-object v3, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be instantiated: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lsun/misc/Service;->access$200(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 289
    :catch_1
    move-exception v1

    .line 290
    iget-object v1, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsun/misc/Service;->access$000(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
