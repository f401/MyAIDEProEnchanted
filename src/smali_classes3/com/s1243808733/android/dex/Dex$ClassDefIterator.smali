.class final Lcom/s1243808733/android/dex/Dex$ClassDefIterator;
.super Ljava/lang/Object;
.source "Dex.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClassDefIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/s1243808733/android/dex/ClassDef;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private final in:Lcom/s1243808733/android/dex/Dex$Section;

.field private final this$0:Lcom/s1243808733/android/dex/Dex;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;)V
    .registers 4

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->this$0:Lcom/s1243808733/android/dex/Dex;

    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->this$0:Lcom/s1243808733/android/dex/Dex;

    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v1}, Lcom/s1243808733/android/dex/Dex;->access$L1000005(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v1

    iget-object v1, v1, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->in:Lcom/s1243808733/android/dex/Dex$Section;

    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->count:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dex/Dex$ClassDefIterator;)Lcom/s1243808733/android/dex/Dex;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->this$0:Lcom/s1243808733/android/dex/Dex;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 795
    iget v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->count:I

    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v1}, Lcom/s1243808733/android/dex/Dex;->access$L1000005(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v1

    iget-object v1, v1, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Lcom/s1243808733/android/dex/ClassDef;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 799
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 802
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->count:I

    .line 803
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->in:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->readClassDef()Lcom/s1243808733/android/dex/ClassDef;

    move-result-object v0

    return-object v0
.end method

.method public bridge next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->next()Lcom/s1243808733/android/dex/ClassDef;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 807
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
