.class public final Lcom/s1243808733/android/dx/dex/file/CallSiteItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "CallSiteItem.java"


# instance fields
.field private encodedForm:[B

.field private final value:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;)V
    .registers 4

    .line 39
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->writeSize(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 41
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    return-void
.end method

.method private static writeSize(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;)I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 97
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .registers 5

    .line 59
    new-instance p2, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 60
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Section;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 62
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/s1243808733/android/dx/rop/cst/CstArray;Z)V

    .line 63
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->encodedForm:[B

    .line 64
    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 5

    .line 82
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->offsetString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " call site"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 84
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;

    invoke-direct {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 85
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->value:Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/s1243808733/android/dx/rop/cst/CstArray;Z)V

    goto :goto_30

    .line 87
    :cond_2b
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;->encodedForm:[B

    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write([B)V

    :goto_30
    return-void
.end method
