.class Lcom/s1243808733/android/dx/merge/DexMerger$5;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/merge/DexMerger;->mergeCallSiteIds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger<",
        "Lcom/s1243808733/android/dex/CallSiteId;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 3

    .line 482
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$5;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 2

    .line 485
    iget-object p1, p1, Lcom/s1243808733/android/dex/TableOfContents;->callSiteIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object p1
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/CallSiteId;
    .registers 4

    .line 490
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readCallSiteId()Lcom/s1243808733/android/dex/CallSiteId;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjust(Lcom/s1243808733/android/dex/CallSiteId;)Lcom/s1243808733/android/dex/CallSiteId;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .registers 4

    .line 482
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$5;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/CallSiteId;

    move-result-object p1

    return-object p1
.end method

.method updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V
    .registers 5

    .line 495
    iget-object p1, p2, Lcom/s1243808733/android/dx/merge/IndexMap;->callSiteIds:[I

    aput p4, p1, p3

    return-void
.end method

.method write(Lcom/s1243808733/android/dex/CallSiteId;)V
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$5;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetidsDefsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/CallSiteId;->writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method

.method bridge synthetic write(Ljava/lang/Comparable;)V
    .registers 2

    .line 482
    check-cast p1, Lcom/s1243808733/android/dex/CallSiteId;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$5;->write(Lcom/s1243808733/android/dex/CallSiteId;)V

    return-void
.end method
