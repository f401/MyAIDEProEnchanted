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
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    .line 43
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->data:Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getCallSite()Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getCallSiteIds()Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->getCallSiteItem(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;)Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 65
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getByteData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 66
    new-instance v2, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;)V

    .line 67
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    .line 68
    invoke-virtual {v1, v0, v2}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->addCallSiteItem(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;Lcom/s1243808733/android/dx/dex/file/CallSiteItem;)V

    .line 70
    :cond_1f
    iput-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->data:Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 87
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;

    .line 88
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 49
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CALL_SITE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 5

    .line 76
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->data:Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->getAbsoluteOffset()I

    move-result p1

    .line 77
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->indexString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call_site_off: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 81
    :cond_44
    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method
