.class Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;
.super Ljava/lang/Object;
.source "PhiInsn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/PhiInsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Operand"
.end annotation


# instance fields
.field public final blockIndex:I

.field public regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

.field public final ropLabel:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)V
    .registers 4

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 392
    iput p2, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->blockIndex:I

    .line 393
    iput p3, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->ropLabel:I

    return-void
.end method
