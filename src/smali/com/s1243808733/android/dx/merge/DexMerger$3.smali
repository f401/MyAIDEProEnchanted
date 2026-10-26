.class Lcom/s1243808733/android/dx/merge/DexMerger$3;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/merge/DexMerger;->mergeTypeLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger",
        "<",
        "Lcom/s1243808733/android/dex/TypeList;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$3;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .locals 1

    .line 440
    iget-object v0, p1, Lcom/s1243808733/android/dex/TableOfContents;->typeLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object v0
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/TypeList;
    .locals 1

    .line 444
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readTypeList()Lcom/s1243808733/android/dex/TypeList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustTypeList(Lcom/s1243808733/android/dex/TypeList;)Lcom/s1243808733/android/dex/TypeList;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .locals 1

    .line 438
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$3;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/TypeList;

    move-result-object v0

    return-object v0
.end method

.method updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$3;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgettypeListOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->putTypeListOffset(II)V

    return-void
.end method

.method write(Lcom/s1243808733/android/dex/TypeList;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$3;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgettypeListOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dex/Dex$Section;->writeTypeList(Lcom/s1243808733/android/dex/TypeList;)V

    return-void
.end method

.method bridge synthetic write(Ljava/lang/Comparable;)V
    .locals 0

    .line 438
    check-cast p1, Lcom/s1243808733/android/dex/TypeList;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$3;->write(Lcom/s1243808733/android/dex/TypeList;)V

    return-void
.end method
