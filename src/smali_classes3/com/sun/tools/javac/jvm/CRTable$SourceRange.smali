.class Lcom/sun/tools/javac/jvm/CRTable$SourceRange;
.super Ljava/lang/Object;
.source "CRTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/CRTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SourceRange"
.end annotation


# instance fields
.field endPos:I

.field startPos:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    .line 622
    iput v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    .line 623
    return-void
.end method

.method constructor <init>(II)V
    .registers 3

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput p1, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    .line 630
    iput p2, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    .line 631
    return-void
.end method


# virtual methods
.method mergeWith(Lcom/sun/tools/javac/jvm/CRTable$SourceRange;)Lcom/sun/tools/javac/jvm/CRTable$SourceRange;
    .registers 5

    const/4 v2, -0x1

    .line 639
    if-nez p1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-object p0

    .line 640
    :cond_1
    iget v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    if-ne v0, v2, :cond_3

    .line 641
    iget v0, p1, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    iput v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    .line 644
    :cond_2
    :goto_1
    iget v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    if-ne v0, v2, :cond_4

    .line 645
    iget v0, p1, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    iput v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    goto :goto_0

    .line 642
    :cond_3
    iget v1, p1, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    if-eq v1, v2, :cond_2

    .line 643
    if-ge v0, v1, :cond_6

    :goto_2
    iput v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    goto :goto_1

    .line 646
    :cond_4
    iget v1, p1, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    if-eq v1, v2, :cond_0

    .line 647
    if-le v0, v1, :cond_5

    :goto_3
    iput v0, p0, Lcom/sun/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method
