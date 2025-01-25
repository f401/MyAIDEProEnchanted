.class public final Lcom/s1243808733/android/dx/dex/file/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/dex/file/Statistics$Data;
    }
.end annotation


# instance fields
.field private final dataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/android/dx/dex/file/Statistics$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/dex/file/Item;)V
    .registers 5

    .line 44
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Item;->typeName()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;

    if-nez v1, :cond_19

    .line 48
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    new-instance v2, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;

    invoke-direct {v2, p1, v0}, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;-><init>(Lcom/s1243808733/android/dx/dex/file/Item;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 50
    :cond_19
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;->add(Lcom/s1243808733/android/dx/dex/file/Item;)V

    :goto_1c
    return-void
.end method

.method public addAll(Lcom/s1243808733/android/dx/dex/file/Section;)V
    .registers 3

    .line 60
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/Item;

    .line 62
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/Statistics;->add(Lcom/s1243808733/android/dx/dex/file/Item;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 6

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Statistics:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 96
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;

    .line 97
    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;->-$$Nest$fgetname(Lcom/s1243808733/android/dx/dex/file/Statistics$Data;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 100
    :cond_2a
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;

    .line 101
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 104
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeAnnotation(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 6

    .line 72
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 76
    :cond_9
    const/4 v0, 0x0

    const-string v1, "\nstatistics:\n"

    invoke-interface {p1, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 78
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;

    .line 81
    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;->-$$Nest$fgetname(Lcom/s1243808733/android/dx/dex/file/Statistics$Data;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 84
    :cond_32
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;

    .line 85
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/Statistics$Data;->writeAnnotation(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    goto :goto_3a

    :cond_4a
    return-void
.end method
