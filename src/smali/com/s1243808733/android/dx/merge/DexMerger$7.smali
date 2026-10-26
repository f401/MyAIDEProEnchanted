.class Lcom/s1243808733/android/dx/merge/DexMerger$7;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/merge/DexMerger;->mergeFieldIds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger",
        "<",
        "Lcom/s1243808733/android/dex/FieldId;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$7;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .locals 1

    .line 532
    iget-object v0, p1, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object v0
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/FieldId;
    .locals 1

    .line 536
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readFieldId()Lcom/s1243808733/android/dex/FieldId;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjust(Lcom/s1243808733/android/dex/FieldId;)Lcom/s1243808733/android/dex/FieldId;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .locals 1

    .line 530
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$7;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/FieldId;

    move-result-object v0

    return-object v0
.end method

.method updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V
    .locals 2

    if-ltz p4, :cond_0

    const v0, 0xffff

    if-gt p4, v0, :cond_0

    .line 543
    iget-object v0, p2, Lcom/s1243808733/android/dx/merge/IndexMap;->fieldIds:[S

    int-to-short v1, p4

    aput-short v1, v0, p3

    return-void

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "field ID not in [0, 0xffff]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method write(Lcom/s1243808733/android/dex/FieldId;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$7;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetidsDefsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/FieldId;->writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method

.method bridge synthetic write(Ljava/lang/Comparable;)V
    .locals 0

    .line 530
    check-cast p1, Lcom/s1243808733/android/dex/FieldId;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$7;->write(Lcom/s1243808733/android/dex/FieldId;)V

    return-void
.end method
