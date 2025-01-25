.class public interface abstract Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;
.super Ljava/lang/Object;
.source "SsaInsn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/SsaInsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
.end method

.method public abstract visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
.end method

.method public abstract visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
.end method
