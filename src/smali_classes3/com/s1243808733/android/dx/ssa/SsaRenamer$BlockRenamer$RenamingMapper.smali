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
.field private final this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)V
    .registers 2

    .line 328
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;)Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    return-object v0
.end method


# virtual methods
.method public getNewRegisterCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->access$0(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$L1000002(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)I

    move-result v0

    return v0
.end method

.method public map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 341
    if-nez p1, :cond_0

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 359
    :goto_0
    return-object v0

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->access$L1000016(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_0
.end method
