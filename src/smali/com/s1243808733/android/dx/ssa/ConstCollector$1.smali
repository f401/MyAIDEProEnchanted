.class Lcom/s1243808733/android/dx/ssa/ConstCollector$1;
.super Ljava/lang/Object;
.source "ConstCollector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/ConstCollector;->getConstsSortedByCountUse()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/s1243808733/android/dx/rop/cst/Constant;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

.field final val$countUses:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/ConstCollector;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$1;->this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$1;->val$countUses:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/s1243808733/android/dx/rop/cst/Constant;Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 5

    .line 246
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$1;->val$countUses:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$1;->val$countUses:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_1f

    .line 253
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/rop/cst/Constant;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    :cond_1f
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 242
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/ConstCollector$1;->compare(Lcom/s1243808733/android/dx/rop/cst/Constant;Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
