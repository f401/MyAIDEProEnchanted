.class Lcom/sun/tools/javac/util/ListBuffer$1;
.super Ljava/lang/Object;
.source "ListBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TA;>;"
    }
.end annotation


# instance fields
.field elems:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/util/ListBuffer;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 3

    .line 205
    iput-object p1, p0, Lcom/sun/tools/javac/util/ListBuffer$1;->this$0:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer$1;->this$0:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/util/ListBuffer;->elems:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer$1;->elems:Lcom/sun/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer$1;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/util/ListBuffer$1;->this$0:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v1, v1, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer$1;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/util/ListBuffer$1;->this$0:Lcom/sun/tools/javac/util/ListBuffer;

    iget-object v1, v1, Lcom/sun/tools/javac/util/ListBuffer;->last:Lcom/sun/tools/javac/util/List;

    if-eq v0, v1, :cond_13

    .line 213
    iget-object v0, p0, Lcom/sun/tools/javac/util/ListBuffer$1;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 214
    iget-object v1, p0, Lcom/sun/tools/javac/util/ListBuffer$1;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v1, p0, Lcom/sun/tools/javac/util/ListBuffer$1;->elems:Lcom/sun/tools/javac/util/List;

    .line 215
    return-object v0

    .line 212
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
