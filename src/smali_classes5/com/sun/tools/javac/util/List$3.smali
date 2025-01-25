.class Lcom/sun/tools/javac/util/List$3;
.super Ljava/lang/Object;
.source "List.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;
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

.field final this$0:Lcom/sun/tools/javac/util/List;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/List;)V
    .registers 3

    .line 394
    iput-object p1, p0, Lcom/sun/tools/javac/util/List$3;->this$0:Lcom/sun/tools/javac/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iget-object v0, p0, Lcom/sun/tools/javac/util/List$3;->this$0:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/util/List$3;->elems:Lcom/sun/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/sun/tools/javac/util/List$3;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/sun/tools/javac/util/List$3;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_11

    .line 402
    iget-object v0, p0, Lcom/sun/tools/javac/util/List$3;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 403
    iget-object v1, p0, Lcom/sun/tools/javac/util/List$3;->elems:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v1, p0, Lcom/sun/tools/javac/util/List$3;->elems:Lcom/sun/tools/javac/util/List;

    .line 404
    return-object v0

    .line 401
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 407
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
