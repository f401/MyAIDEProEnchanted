.class final Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;
.super Lcom/google/common/collect/Maps$DescendingMap;
.source "AbstractNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DescendingMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$DescendingMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/common/collect/AbstractNavigableMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractNavigableMap;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$DescendingMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractNavigableMap;Lcom/google/common/collect/AbstractNavigableMap$1;)V
    .registers 3

    .line 167
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;-><init>(Lcom/google/common/collect/AbstractNavigableMap;)V

    return-void
.end method


# virtual methods
.method entryIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractNavigableMap;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method forward()Ljava/util/NavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    return-object v0
.end method
