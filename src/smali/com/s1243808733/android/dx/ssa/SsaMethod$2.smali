.class Lcom/s1243808733/android/dx/ssa/SsaMethod$2;
.super Ljava/lang/Object;
.source "SsaMethod.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/SsaMethod;->buildUseList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$2;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addToUses(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 7

    .line 452
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    .line 456
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$2;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-static {v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->-$$Nest$fgetuseList(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 2

    .line 435
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod$2;->addToUses(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 2

    .line 445
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod$2;->addToUses(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 2

    .line 440
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod$2;->addToUses(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method
