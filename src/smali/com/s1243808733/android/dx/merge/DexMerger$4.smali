.class Lcom/s1243808733/android/dx/merge/DexMerger$4;
.super Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/merge/DexMerger;->mergeProtoIds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger<",
        "Lcom/s1243808733/android/dex/ProtoId;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 3

    .line 458
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$4;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method


# virtual methods
.method getSection(Lcom/s1243808733/android/dex/TableOfContents;)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 2

    .line 460
    iget-object p1, p1, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    return-object p1
.end method

.method read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/ProtoId;
    .registers 4

    .line 464
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readProtoId()Lcom/s1243808733/android/dex/ProtoId;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjust(Lcom/s1243808733/android/dex/ProtoId;)Lcom/s1243808733/android/dex/ProtoId;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .registers 4

    .line 458
    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger$4;->read(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;I)Lcom/s1243808733/android/dex/ProtoId;

    move-result-object p1

    return-object p1
.end method

.method updateIndex(ILcom/s1243808733/android/dx/merge/IndexMap;II)V
    .registers 5

    if-ltz p4, :cond_d

    const p1, 0xffff

    if-gt p4, p1, :cond_d

    .line 471
    iget-object p1, p2, Lcom/s1243808733/android/dx/merge/IndexMap;->protoIds:[S

    int-to-short p2, p4

    aput-short p2, p1, p3

    return-void

    .line 469
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "proto ID not in [0, 0xffff]: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method write(Lcom/s1243808733/android/dex/ProtoId;)V
    .registers 3

    .line 476
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$4;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->-$$Nest$fgetidsDefsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/ProtoId;->writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method

.method bridge synthetic write(Ljava/lang/Comparable;)V
    .registers 2

    .line 458
    check-cast p1, Lcom/s1243808733/android/dex/ProtoId;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$4;->write(Lcom/s1243808733/android/dex/ProtoId;)V

    return-void
.end method
