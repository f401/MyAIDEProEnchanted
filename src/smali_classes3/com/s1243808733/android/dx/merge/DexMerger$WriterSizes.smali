.class Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;
.super Ljava/lang/Object;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/merge/DexMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriterSizes"
.end annotation


# instance fields
.field private annotation:I

.field private annotationsDirectory:I

.field private annotationsSet:I

.field private annotationsSetRefList:I

.field private classData:I

.field private code:I

.field private debugInfo:I

.field private encodedArray:I

.field private header:I

.field private idsDefs:I

.field private mapList:I

.field private stringData:I

.field private typeList:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger;)V
    .registers 3

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x70

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->header:I

    .line 1096
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000006(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->header:I

    .line 1097
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000007(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    .line 1098
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000008(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    .line 1099
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000009(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    .line 1100
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000010(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 1101
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000011(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 1102
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000012(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    .line 1103
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000013(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    .line 1104
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000014(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 1105
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000015(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    .line 1106
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000016(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    .line 1107
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000017(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    .line 1108
    invoke-static {p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->access$L1000018(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->used()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    .line 1109
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign()V

    return-void
.end method

.method public constructor <init>([Lcom/s1243808733/android/dex/Dex;)V
    .registers 5

    const/4 v1, 0x0

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x70

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->header:I

    move v0, v1

    .line 1089
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 1092
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign()V

    return-void

    .line 1090
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->plus(Lcom/s1243808733/android/dex/TableOfContents;Z)V

    .line 1089
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$L1000104(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->header:I

    return v0
.end method

.method static synthetic access$L1000105(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    return v0
.end method

.method static synthetic access$L1000106(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    return v0
.end method

.method static synthetic access$L1000107(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    return v0
.end method

.method static synthetic access$L1000108(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->classData:I

    return v0
.end method

.method static synthetic access$L1000109(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->code:I

    return v0
.end method

.method static synthetic access$L1000110(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    return v0
.end method

.method static synthetic access$L1000111(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    return v0
.end method

.method static synthetic access$L1000112(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    return v0
.end method

.method static synthetic access$L1000113(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    return v0
.end method

.method static synthetic access$L1000114(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    return v0
.end method

.method static synthetic access$L1000115(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    return v0
.end method

.method static synthetic access$L1000116(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    return v0
.end method

.method static synthetic access$S1000104(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->header:I

    return-void
.end method

.method static synthetic access$S1000105(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    return-void
.end method

.method static synthetic access$S1000106(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    return-void
.end method

.method static synthetic access$S1000107(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    return-void
.end method

.method static synthetic access$S1000108(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->classData:I

    return-void
.end method

.method static synthetic access$S1000109(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->code:I

    return-void
.end method

.method static synthetic access$S1000110(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    return-void
.end method

.method static synthetic access$S1000111(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    return-void
.end method

.method static synthetic access$S1000112(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    return-void
.end method

.method static synthetic access$S1000113(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    return-void
.end method

.method static synthetic access$S1000114(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    return-void
.end method

.method static synthetic access$S1000115(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    return-void
.end method

.method static synthetic access$S1000116(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    return-void
.end method

.method private static fourByteAlign(I)I
    .registers 2

    .line 1171
    add-int/lit8 v0, p0, 0x3

    and-int/lit8 v0, v0, -0x4

    return v0
.end method

.method private fourByteAlign()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1155
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->header:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->header:I

    .line 1156
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    .line 1157
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    .line 1158
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    .line 1159
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->classData:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 1160
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->code:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 1161
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    .line 1162
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    .line 1163
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 1164
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    .line 1165
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    .line 1166
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    .line 1167
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    return-void
.end method

.method private plus(Lcom/s1243808733/android/dex/TableOfContents;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/TableOfContents;",
            "Z)V"
        }
    .end annotation

    .line 1113
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p1, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    mul-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    .line 1119
    iget-object v0, p1, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    .line 1120
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->typeLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->fourByteAlign(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    .line 1126
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->stringDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    .line 1127
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->annotationsDirectories:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    .line 1128
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->annotationSets:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    .line 1129
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->annotationSetRefLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    .line 1131
    if-eqz p2, :cond_0

    .line 1132
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->code:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->codes:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 1133
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->classData:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->classDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 1134
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->encodedArrays:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 1135
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->annotations:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    .line 1136
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->debugInfos:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    .line 1150
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->code:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->codes:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->code:I

    .line 1142
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->classData:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->classDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    int-to-double v2, v1

    const-wide v4, 0x3ffab851eb851eb8L    # 1.67

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->classData:I

    .line 1144
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->encodedArrays:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    .line 1146
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->annotations:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    mul-int/lit8 v1, v1, 0x2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    .line 1150
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    iget-object v1, p1, Lcom/s1243808733/android/dex/TableOfContents;->debugInfos:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    goto :goto_0
.end method


# virtual methods
.method public size()I
    .registers 3

    .line 1175
    iget v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->header:I

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->idsDefs:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->mapList:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->typeList:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->classData:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->code:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->stringData:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->debugInfo:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->encodedArray:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsDirectory:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSet:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotationsSetRefList:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->annotation:I

    add-int/2addr v0, v1

    return v0
.end method
