.class public final Lcom/s1243808733/android/dx/dex/file/AnnotationSetRefItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "AnnotationSetRefItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final WRITE_SIZE:I = 0x4


# instance fields
.field private annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;)V
    .registers 3

    .line 41
    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_9

    .line 47
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    return-void

    .line 44
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "annotations == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 3

    .line 59
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getWordData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->intern(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)Lcom/s1243808733/android/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    return-void
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 53
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 5

    .line 73
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationSetItem;->getAbsoluteOffset()I

    move-result p1

    .line 75
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  annotations_off: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 79
    :cond_22
    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    return-void
.end method
