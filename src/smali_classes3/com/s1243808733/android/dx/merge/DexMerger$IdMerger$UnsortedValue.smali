.class Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;
.super Ljava/lang/Object;
.source "DexMerger.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnsortedValue"
.end annotation


# instance fields
.field final index:I

.field final indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

.field final offset:I

.field final source:Lcom/s1243808733/android/dex/Dex;

.field private final this$0:Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;

.field final value:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;Ljava/lang/Comparable;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;",
            "Lcom/s1243808733/android/dex/Dex;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "TT;II)V"
        }
    .end annotation

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;

    .line 366
    iput-object p2, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->source:Lcom/s1243808733/android/dex/Dex;

    .line 367
    iput-object p3, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 368
    iput-object p4, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->value:Ljava/lang/Comparable;

    .line 369
    iput p5, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->index:I

    .line 370
    iput p6, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->offset:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;)Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->this$0:Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->value:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->value:Ljava/lang/Comparable;

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->compareTo(Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;)I

    move-result v0

    return v0
.end method
