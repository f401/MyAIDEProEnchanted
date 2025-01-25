.class Lcom/s1243808733/android/dx/util/ListIntSet$1;
.super Ljava/lang/Object;
.source "ListIntSet.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/util/ListIntSet;->iterator()Lcom/s1243808733/android/dx/util/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private idx:I

.field final this$0:Lcom/s1243808733/android/dx/util/ListIntSet;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/util/ListIntSet;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/s1243808733/android/dx/util/ListIntSet$1;->this$0:Lcom/s1243808733/android/dx/util/ListIntSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 p1, 0x0

    iput p1, p0, Lcom/s1243808733/android/dx/util/ListIntSet$1;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 121
    iget v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet$1;->idx:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ListIntSet$1;->this$0:Lcom/s1243808733/android/dx/util/ListIntSet;

    iget-object v1, v1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public next()I
    .registers 4

    .line 127
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/ListIntSet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet$1;->this$0:Lcom/s1243808733/android/dx/util/ListIntSet;

    iget-object v0, v0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    iget v1, p0, Lcom/s1243808733/android/dx/util/ListIntSet$1;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/s1243808733/android/dx/util/ListIntSet$1;->idx:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    return v0

    .line 128
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
