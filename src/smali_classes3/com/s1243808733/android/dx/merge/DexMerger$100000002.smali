.class Lcom/s1243808733/android/dx/merge/DexMerger$100000002;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000002;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/merge/DexMerger$100000002;)Lcom/s1243808733/android/dx/merge/DexMerger;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000002;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    return-object v0
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 440
    iget-object v0, p1, Lcom/s1243808733/android/dex/TableOfContents;->typeLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object v0
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/TypeList;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 444
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readTypeList()Lcom/s1243808733/android/dex/TypeList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustTypeList(Lcom/s1243808733/android/dex/TypeList;)Lcom/s1243808733/android/dex/TypeList;

    move-result-object v0

    return-object v0
.end method

.method bridge read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$100000002;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/TypeList;

    move-result-object v0

    return-object v0
.end method

.method updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000002;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000009(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->putTypeListOffset(II)V

    return-void
.end method

.method write(Lcom/s1243808733/android/dex/TypeList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/TypeList;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000002;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000009(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dex/Dex$Section;->writeTypeList(Lcom/s1243808733/android/dex/TypeList;)V

    return-void
.end method

.method bridge write(Ljava/lang/Comparable;)V
    .registers 2

    check-cast p1, Lcom/s1243808733/android/dex/TypeList;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000002;->write(Lcom/s1243808733/android/dex/TypeList;)V

    return-void
.end method
