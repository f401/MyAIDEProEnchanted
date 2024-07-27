.class Lcom/s1243808733/android/dx/merge/DexMerger$100000008;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000008;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/merge/DexMerger$100000008;)Lcom/s1243808733/android/dx/merge/DexMerger;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000008;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    return-object v0
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 579
    iget-object v0, p1, Lcom/s1243808733/android/dex/TableOfContents;->annotations:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object v0
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/Annotation;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 583
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readAnnotation()Lcom/s1243808733/android/dex/Annotation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjust(Lcom/s1243808733/android/dex/Annotation;)Lcom/s1243808733/android/dex/Annotation;

    move-result-object v0

    return-object v0
.end method

.method bridge read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$100000008;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/Annotation;

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

    .line 587
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000008;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000018(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->putAnnotationOffset(II)V

    return-void
.end method

.method write(Lcom/s1243808733/android/dex/Annotation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Annotation;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$100000008;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000018(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Annotation;->writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method

.method bridge write(Ljava/lang/Comparable;)V
    .registers 2

    check-cast p1, Lcom/s1243808733/android/dex/Annotation;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000008;->write(Lcom/s1243808733/android/dex/Annotation;)V

    return-void
.end method
