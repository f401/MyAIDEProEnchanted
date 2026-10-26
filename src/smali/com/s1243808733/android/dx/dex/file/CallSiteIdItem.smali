.class public final Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;
.super Lcom/s1243808733/android/dx/dex/file/IndexedItem;
.source "CallSiteIdItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final ITEM_SIZE:I = 0x4


# instance fields
.field data:Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

.field final invokeDynamicRef:Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->data:Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getCallSite()Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getCallSiteIds()Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->getCallSiteItem(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;)Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getByteData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v3

    .line 66
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;)V

    .line 67
    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    .line 68
    invoke-virtual {v2, v1, v0}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->addCallSiteItem(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;Lcom/s1243808733/android/dx/dex/file/CallSiteItem;)V

    .line 70
    :cond_0
    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->data:Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 87
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;

    .line 88
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .locals 1

    .line 49
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CALL_SITE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->data:Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->getAbsoluteOffset()I

    move-result v0

    .line 77
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->indexString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call_site_off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 81
    :cond_0
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method
