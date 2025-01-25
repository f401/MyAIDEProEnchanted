.class Lcom/s1243808733/android/dx/ssa/back/SsaToRop$PhiVisitor;
.super Ljava/lang/Object;
.source "SsaToRop.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/back/SsaToRop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhiVisitor"
.end annotation


# instance fields
.field private final blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$PhiVisitor;->blocks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 9

    .line 199
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 201
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_25

    .line 204
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 205
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$PhiVisitor;->blocks:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->predBlockIndexForSourcesIndex(I)I

    move-result v6

    .line 205
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 208
    invoke-virtual {v5, v1, v4}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addMoveToEnd(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_25
    return-void
.end method
