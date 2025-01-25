.class Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;
.super Lcom/s1243808733/android/dx/ssa/RegisterMapper;
.source "SsaRenamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenamingMapper"
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;->this$1:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewRegisterCount()I
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;->this$1:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->-$$Nest$fgetnextSsaReg(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)I

    move-result v0

    return v0
.end method

.method public map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 343
    :cond_4
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;->this$1:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->-$$Nest$fgetcurrentMapping(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    return-object p1
.end method
