.class Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;
.super Ljava/lang/Object;
.source "Dominators.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/Dominators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DfsWalker"
.end annotation


# instance fields
.field private dfsNum:I

.field private final this$0:Lcom/s1243808733/android/dx/ssa/Dominators;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/Dominators;)V
    .registers 3

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;->this$0:Lcom/s1243808733/android/dx/ssa/Dominators;

    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;->dfsNum:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;)Lcom/s1243808733/android/dx/ssa/Dominators;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;->this$0:Lcom/s1243808733/android/dx/ssa/Dominators;

    return-object v0
.end method


# virtual methods
.method public visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 260
    new-instance v0, Lcom/s1243808733/android/dx/ssa/Dominators$DFSInfo;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/Dominators$DFSInfo;-><init>()V

    .line 261
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;->dfsNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;->dfsNum:I

    iput v1, v0, Lcom/s1243808733/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    .line 262
    iput-object p1, v0, Lcom/s1243808733/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 263
    iput-object p2, v0, Lcom/s1243808733/android/dx/ssa/Dominators$DFSInfo;->parent:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 264
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;->this$0:Lcom/s1243808733/android/dx/ssa/Dominators;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/Dominators;->access$L1000004(Lcom/s1243808733/android/dx/ssa/Dominators;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;->this$0:Lcom/s1243808733/android/dx/ssa/Dominators;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/Dominators;->access$L1000003(Lcom/s1243808733/android/dx/ssa/Dominators;)[Lcom/s1243808733/android/dx/ssa/Dominators$DFSInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    aput-object v0, v1, v2

    return-void
.end method
