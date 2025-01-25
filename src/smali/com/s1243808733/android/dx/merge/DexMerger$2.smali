.class Lcom/s1243808733/android/dx/merge/DexMerger$2;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/merge/DexMerger;->mergeTypeIds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 3

    .line 414
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$2;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 2

    .line 416
    iget-object p1, p1, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object p1
.end method

.method bridge synthetic read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .registers 4

    .line 414
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$2;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Integer;
    .registers 4

    .line 420
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result p1

    .line 421
    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V
    .registers 5

    if-ltz p4, :cond_d

    const p1, 0xffff

    if-gt p4, p1, :cond_d

    .line 428
    iget-object p1, p2, Lcom/s1243808733/android/dx/merge/IndexMap;->typeIds:[S

    int-to-short p2, p4

    aput-short p2, p1, p3

    return-void

    .line 426
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "type ID not in [0, 0xffff]: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method bridge synthetic write(Ljava/lang/Comparable;)V
    .registers 2

    .line 414
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$2;->write(Ljava/lang/Integer;)V

    return-void
.end method

.method write(Ljava/lang/Integer;)V
    .registers 3

    .line 432
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$2;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetidsDefsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    return-void
.end method
