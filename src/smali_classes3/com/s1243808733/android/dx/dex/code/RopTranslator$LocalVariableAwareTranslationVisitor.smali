.class Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;
.super Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;
.source "RopTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/code/RopTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalVariableAwareTranslationVisitor"
.end annotation


# instance fields
.field private final locals:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

.field private final this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/RopTranslator;Lcom/s1243808733/android/dx/dex/code/OutputCollector;Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;)V
    .registers 4

    .line 890
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;-><init>(Lcom/s1243808733/android/dx/dex/code/RopTranslator;Lcom/s1243808733/android/dx/dex/code/OutputCollector;)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    .line 891
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->locals:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;)Lcom/s1243808733/android/dx/dex/code/RopTranslator;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    return-object v0
.end method


# virtual methods
.method public addIntroductionIfNecessary(Lcom/s1243808733/android/dx/rop/code/Insn;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/Insn;",
            ")V"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->locals:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->getAssignment(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_0

    .line 939
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/s1243808733/android/dx/dex/code/LocalStart;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    :cond_0
    return-void
.end method

.method public visitPlainCstInsn(Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 904
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitPlainCstInsn(Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;)V

    .line 905
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitPlainInsn(Lcom/s1243808733/android/dx/rop/code/PlainInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/PlainInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 897
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitPlainInsn(Lcom/s1243808733/android/dx/rop/code/PlainInsn;)V

    .line 898
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitSwitchInsn(Lcom/s1243808733/android/dx/rop/code/SwitchInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/SwitchInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 911
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitSwitchInsn(Lcom/s1243808733/android/dx/rop/code/SwitchInsn;)V

    .line 912
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitThrowingCstInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 918
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitThrowingCstInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;)V

    .line 919
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method

.method public visitThrowingInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 925
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitThrowingInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;)V

    .line 926
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    return-void
.end method
