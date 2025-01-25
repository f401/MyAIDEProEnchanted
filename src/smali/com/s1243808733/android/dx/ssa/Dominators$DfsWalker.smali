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

.field final this$0:Lcom/s1243808733/android/dx/ssa/Dominators;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/Dominators;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;->this$0:Lcom/s1243808733/android/dx/ssa/Dominators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 p1, 0x0

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;->dfsNum:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/ssa/Dominators;Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;-><init>(Lcom/s1243808733/android/dx/ssa/Dominators;)V

    return-void
.end method


# virtual methods
.method public visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 5

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
    iget-object p2, p0, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;->this$0:Lcom/s1243808733/android/dx/ssa/Dominators;

    invoke-static {p2}, Lcom/s1243808733/android/dx/ssa/Dominators;->-$$Nest$fgetvertex(Lcom/s1243808733/android/dx/ssa/Dominators;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object p2, p0, Lcom/s1243808733/android/dx/ssa/Dominators$DfsWalker;->this$0:Lcom/s1243808733/android/dx/ssa/Dominators;

    invoke-static {p2}, Lcom/s1243808733/android/dx/ssa/Dominators;->-$$Nest$fgetinfo(Lcom/s1243808733/android/dx/ssa/Dominators;)[Lcom/s1243808733/android/dx/ssa/Dominators$DFSInfo;

    move-result-object p2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result p1

    aput-object v0, p2, p1

    return-void
.end method
