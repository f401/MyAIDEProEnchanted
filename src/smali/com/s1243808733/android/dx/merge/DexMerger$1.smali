.class Lcom/s1243808733/android/dx/merge/DexMerger$1;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/merge/DexMerger;->mergeStringIds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 3

    .line 392
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$1;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 2

    .line 394
    iget-object p1, p1, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object p1
.end method

.method bridge synthetic read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .registers 4

    .line 392
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$1;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/String;
    .registers 4

    .line 398
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V
    .registers 5

    .line 402
    iget-object p1, p2, Lcom/s1243808733/android/dx/merge/IndexMap;->stringIds:[I

    aput p4, p1, p3

    return-void
.end method

.method bridge synthetic write(Ljava/lang/Comparable;)V
    .registers 2

    .line 392
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$1;->write(Ljava/lang/String;)V

    return-void
.end method

.method write(Ljava/lang/String;)V
    .registers 4

    .line 406
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$1;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetcontentsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->stringDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 407
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$1;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetidsDefsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$1;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v1}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetstringDataOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 408
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$1;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetstringDataOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dex/Dex$Section;->writeStringData(Ljava/lang/String;)V

    return-void
.end method
