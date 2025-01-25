.class Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;
.super Ljava/lang/Object;
.source "CRTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/CRTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CRTEntry"
.end annotation


# instance fields
.field endPc:I

.field flags:I

.field startPc:I

.field tree:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;III)V
    .registers 5

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;->tree:Ljava/lang/Object;

    .line 594
    iput p2, p0, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;->flags:I

    .line 595
    iput p3, p0, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;->startPc:I

    .line 596
    iput p4, p0, Lcom/sun/tools/javac/jvm/CRTable$CRTEntry;->endPc:I

    .line 597
    return-void
.end method
