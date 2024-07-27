.class Lcom/s1243808733/android/dx/merge/DexMerger$100000004;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000004;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/merge/DexMerger$100000004;)Lcom/s1243808733/android/dx/merge/DexMerger;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000004;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    return-object v0
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 485
    iget-object v0, p1, Lcom/s1243808733/android/dex/TableOfContents;->callSiteIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object v0
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/CallSiteId;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 490
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readCallSiteId()Lcom/s1243808733/android/dex/CallSiteId;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjust(Lcom/s1243808733/android/dex/CallSiteId;)Lcom/s1243808733/android/dex/CallSiteId;

    move-result-object v0

    return-object v0
.end method

.method bridge read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$100000004;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/CallSiteId;

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

    .line 495
    iget-object v0, p2, Lcom/s1243808733/android/dx/merge/IndexMap;->callSiteIds:[I

    aput p4, v0, p3

    return-void
.end method

.method write(Lcom/s1243808733/android/dex/CallSiteId;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/CallSiteId;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000004;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000007(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/CallSiteId;->writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method

.method bridge write(Ljava/lang/Comparable;)V
    .registers 2

    check-cast p1, Lcom/s1243808733/android/dex/CallSiteId;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000004;->write(Lcom/s1243808733/android/dex/CallSiteId;)V

    return-void
.end method
