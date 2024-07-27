.class public final Lcom/s1243808733/android/dx/dex/code/CodeAddress;
.super Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;
.source "CodeAddress.java"


# instance fields
.field private final bindsClosely:Z


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V
    .registers 3

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Z)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    .line 53
    iput-boolean p2, p0, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->bindsClosely:Z

    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 65
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBindsClosely()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->bindsClosely:Z

    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 71
    const-string v0, "code-address"

    return-object v0
.end method

.method public final withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 59
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    return-object v0
.end method
