.class Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/Maps$EntryTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->createAsMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Maps$EntryTransformer",
        "<TK;",
        "Ljava/util/Collection",
        "<TV1;>;",
        "Ljava/util/Collection",
        "<TV2;>;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;)V
    .registers 2

    .line 1360
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$1;->this$0:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1360
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$1;->transformEntry(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public transformEntry(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV1;>;)",
            "Ljava/util/Collection",
            "<TV2;>;"
        }
    .end annotation

    .line 1363
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$1;->this$0:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
