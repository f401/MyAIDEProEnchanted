.class public final Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$LabelComparator;
.super Ljava/lang/Object;
.source "SsaBasicBlock.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LabelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 999
    invoke-static {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->access$L1000005(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)I

    move-result v0

    .line 1000
    invoke-static {p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->access$L1000005(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)I

    move-result v1

    .line 1002
    if-ge v0, v1, :cond_0

    .line 1003
    const/4 v0, -0x1

    .line 1007
    :goto_0
    return v0

    .line 1004
    :cond_0
    if-le v0, v1, :cond_1

    .line 1005
    const/4 v0, 0x1

    goto :goto_0

    .line 1007
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    check-cast p2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$LabelComparator;->compare(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)I

    move-result v0

    return v0
.end method
