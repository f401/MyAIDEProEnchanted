.class Lcom/s1243808733/android/dx/merge/DexMerger$100000005;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000005;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/merge/DexMerger$100000005;)Lcom/s1243808733/android/dx/merge/DexMerger;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000005;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    return-object v0
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 509
    iget-object v0, p1, Lcom/s1243808733/android/dex/TableOfContents;->methodHandles:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object v0
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/MethodHandle;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 514
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readMethodHandle()Lcom/s1243808733/android/dex/MethodHandle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjust(Lcom/s1243808733/android/dex/MethodHandle;)Lcom/s1243808733/android/dex/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method bridge read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$100000005;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 519
    iget-object v0, p2, Lcom/s1243808733/android/dx/merge/IndexMap;->methodHandleIds:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p2, Lcom/s1243808733/android/dx/merge/IndexMap;->methodHandleIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method write(Lcom/s1243808733/android/dex/MethodHandle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/MethodHandle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000005;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000007(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/MethodHandle;->writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method

.method bridge write(Ljava/lang/Comparable;)V
    .registers 2

    check-cast p1, Lcom/s1243808733/android/dex/MethodHandle;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000005;->write(Lcom/s1243808733/android/dex/MethodHandle;)V

    return-void
.end method
