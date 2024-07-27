.class Lcom/s1243808733/android/dx/ssa/SsaMethod$100000001;
.super Ljava/lang/Object;
.source "SsaMethod.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/SsaMethod$100000001;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-object v0
.end method

.method private addToUses(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ")V"
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 455
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    .line 456
    :cond_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-static {v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->access$L1000010(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 435
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000001;->addToUses(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 445
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000001;->addToUses(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 440
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000001;->addToUses(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method
