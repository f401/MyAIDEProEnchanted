.class Lcom/s1243808733/android/dx/merge/DexMerger$9;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/merge/DexMerger;->mergeAnnotations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger<",
        "Lcom/s1243808733/android/dex/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 3

    .line 577
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$9;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 2

    .line 579
    iget-object p1, p1, Lcom/s1243808733/android/dex/TableOfContents;->annotations:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object p1
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/Annotation;
    .registers 4

    .line 583
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readAnnotation()Lcom/s1243808733/android/dex/Annotation;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjust(Lcom/s1243808733/android/dex/Annotation;)Lcom/s1243808733/android/dex/Annotation;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .registers 4

    .line 577
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$9;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/Annotation;

    move-result-object p1

    return-object p1
.end method

.method updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V
    .registers 5

    .line 587
    iget-object p3, p0, Lcom/s1243808733/android/dx/merge/DexMerger$9;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {p3}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetannotationOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/s1243808733/android/dx/merge/IndexMap;->putAnnotationOffset(II)V

    return-void
.end method

.method write(Lcom/s1243808733/android/dex/Annotation;)V
    .registers 3

    .line 591
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$9;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetannotationOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Annotation;->writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method

.method bridge synthetic write(Ljava/lang/Comparable;)V
    .registers 2

    .line 577
    check-cast p1, Lcom/s1243808733/android/dex/Annotation;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$9;->write(Lcom/s1243808733/android/dex/Annotation;)V

    return-void
.end method
