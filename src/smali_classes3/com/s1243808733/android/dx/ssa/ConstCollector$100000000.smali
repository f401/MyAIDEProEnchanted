.class Lcom/s1243808733/android/dx/ssa/ConstCollector$100000000;
.super Ljava/lang/Object;
.source "ConstCollector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/s1243808733/android/dx/rop/cst/Constant;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

.field private final val$countUses:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/ConstCollector;Ljava/util/HashMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000000;->val$countUses:Ljava/util/HashMap;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/ConstCollector$100000000;)Lcom/s1243808733/android/dx/ssa/ConstCollector;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/s1243808733/android/dx/rop/cst/Constant;Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000000;->val$countUses:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000000;->val$countUses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    .line 248
    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/rop/cst/Constant;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 256
    :cond_0
    return v0
.end method

.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000000;->compare(Lcom/s1243808733/android/dx/rop/cst/Constant;Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 261
    if-eq p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
