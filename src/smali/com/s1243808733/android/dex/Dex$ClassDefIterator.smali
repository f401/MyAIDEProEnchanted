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
        "Ljava/util/Iterator<",
        "Lcom/s1243808733/android/dex/ClassDef;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private final in:Lcom/s1243808733/android/dex/Dex$Section;

.field final this$0:Lcom/s1243808733/android/dex/Dex;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dex/Dex;)V
    .registers 3

    .line 789
    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    invoke-static {p1}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$fgettableOfContents(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->in:Lcom/s1243808733/android/dex/Dex$Section;

    .line 791
    const/4 p1, 0x0

    iput p1, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Dex$ClassDefIterator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;-><init>(Lcom/s1243808733/android/dex/Dex;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 795
    iget v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->count:I

    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-static {v1}, Lcom/s1243808733/android/dex/Dex;->-$$Nest$fgettableOfContents(Lcom/s1243808733/android/dex/Dex;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v1

    iget-object v1, v1, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public next()Lcom/s1243808733/android/dex/ClassDef;
    .registers 2

    .line 799
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 802
    iget v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->count:I

    .line 803
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->in:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->readClassDef()Lcom/s1243808733/android/dex/ClassDef;

    move-result-object v0

    return-object v0

    .line 800
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 789
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$ClassDefIterator;->next()Lcom/s1243808733/android/dex/ClassDef;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 807
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
