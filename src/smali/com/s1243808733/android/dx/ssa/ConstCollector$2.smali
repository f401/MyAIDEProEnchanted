.class Lcom/s1243808733/android/dx/ssa/ConstCollector$2;
.super Lcom/s1243808733/android/dx/ssa/RegisterMapper;
.source "ConstCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/ConstCollector;->updateConstUses(Ljava/util/HashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

.field final val$newReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

.field final val$origReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/ConstCollector;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 4

    .line 374
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$2;->this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$2;->val$origReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object p3, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$2;->val$newReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewRegisterCount()I
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$2;->this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/ConstCollector;->-$$Nest$fgetssaMeth(Lcom/s1243808733/android/dx/ssa/ConstCollector;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    return v0
.end method

.method public map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 382
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$2;->val$origReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 383
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$2;->val$newReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 384
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object p1

    .line 383
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withLocalItem(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    :cond_16
    return-object p1
.end method
