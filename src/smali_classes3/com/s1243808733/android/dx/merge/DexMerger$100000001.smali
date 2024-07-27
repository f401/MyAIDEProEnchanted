.class Lcom/s1243808733/android/dx/merge/DexMerger$100000001;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000001;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/merge/DexMerger$100000001;)Lcom/s1243808733/android/dx/merge/DexMerger;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000001;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    return-object v0
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 416
    iget-object v0, p1, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object v0
.end method

.method bridge read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$100000001;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Integer;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 420
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 421
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 425
    if-ltz p4, :cond_0

    const v0, 0xffff

    if-le p4, v0, :cond_1

    .line 426
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "type ID not in [0, 0xffff]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_1
    iget-object v0, p2, Lcom/s1243808733/android/dx/merge/IndexMap;->typeIds:[S

    int-to-short v1, p4

    aput-short v1, v0, p3

    return-void
.end method

.method bridge write(Ljava/lang/Comparable;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000001;->write(Ljava/lang/Integer;)V

    return-void
.end method

.method write(Ljava/lang/Integer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000001;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000007(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    return-void
.end method
