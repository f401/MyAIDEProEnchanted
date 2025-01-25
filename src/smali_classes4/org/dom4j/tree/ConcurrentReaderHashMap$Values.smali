.class Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;
.super Ljava/util/AbstractCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/tree/ConcurrentReaderHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation


# instance fields
.field private final this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;


# direct methods
.method private constructor <init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    return-void
.end method

.method constructor <init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;Lorg/dom4j/tree/ConcurrentReaderHashMap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-virtual {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;

    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {v0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-virtual {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->size()I

    move-result v0

    return v0
.end method
