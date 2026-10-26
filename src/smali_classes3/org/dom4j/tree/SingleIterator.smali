.class public Lorg/dom4j/tree/SingleIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private first:Z

.field private object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/tree/SingleIterator;->first:Z

    iput-object p1, p0, Lorg/dom4j/tree/SingleIterator;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lorg/dom4j/tree/SingleIterator;->first:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/dom4j/tree/SingleIterator;->object:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/dom4j/tree/SingleIterator;->object:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/dom4j/tree/SingleIterator;->first:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported by this iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
