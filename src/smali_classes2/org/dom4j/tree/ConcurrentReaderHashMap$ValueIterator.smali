.class public Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;
.super Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/tree/ConcurrentReaderHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ValueIterator"
.end annotation


# instance fields
.field private final this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;


# direct methods
.method protected constructor <init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    iput-object p1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    return-void
.end method


# virtual methods
.method protected returnValueOfNext()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;->currentValue:Ljava/lang/Object;

    return-object v0
.end method
