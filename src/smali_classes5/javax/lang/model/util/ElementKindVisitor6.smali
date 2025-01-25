.class public Ljavax/lang/model/util/ElementKindVisitor6;
.super Ljavax/lang/model/util/SimpleElementVisitor6;
.source "ElementKindVisitor6.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/lang/model/util/SimpleElementVisitor6",
        "<TR;TP;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 83
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/lang/model/util/SimpleElementVisitor6;-><init>(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Ljavax/lang/model/util/SimpleElementVisitor6;-><init>(Ljava/lang/Object;)V

    .line 102
    return-void
.end method


# virtual methods
.method public visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 321
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    .line 322
    sget-object v1, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_42

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for ExecutableElement"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 333
    :pswitch_2e  #0xe
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitExecutableAsStaticInit(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_32
    return-object v0

    .line 330
    :pswitch_33  #0xd
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitExecutableAsMethod(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 327
    :pswitch_38  #0xc
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitExecutableAsInstanceInit(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 324
    :pswitch_3d  #0xb
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitExecutableAsConstructor(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 322
    :pswitch_data_42
    .packed-switch 0xb
        :pswitch_3d  #0000000b
        :pswitch_38  #0000000c
        :pswitch_33  #0000000d
        :pswitch_2e  #0000000e
    .end packed-switch
.end method

.method public visitExecutableAsConstructor(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 349
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutableAsInstanceInit(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 361
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutableAsMethod(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 373
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutableAsStaticInit(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 385
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/PackageElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    .line 132
    sget-object v1, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_46

    const/4 v2, 0x2

    if-eq v1, v2, :cond_41

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3c

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d

    .line 143
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitTypeAsInterface(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 146
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for TypeElement"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 140
    :cond_3c
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitTypeAsEnum(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c

    .line 137
    :cond_41
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitTypeAsClass(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c

    .line 134
    :cond_46
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitTypeAsAnnotationType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c
.end method

.method public visitTypeAsAnnotationType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeAsClass(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeAsEnum(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeAsInterface(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 195
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    .line 211
    sget-object v1, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for VariableElement"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 228
    :pswitch_2e  #0xa
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitVariableAsResourceVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_32
    return-object v0

    .line 225
    :pswitch_33  #0x9
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitVariableAsParameter(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 222
    :pswitch_38  #0x8
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitVariableAsLocalVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 219
    :pswitch_3d  #0x7
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitVariableAsField(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 216
    :pswitch_42  #0x6
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitVariableAsExceptionParameter(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 213
    :pswitch_47  #0x5
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitVariableAsEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 211
    :pswitch_data_4c
    .packed-switch 0x5
        :pswitch_47  #00000005
        :pswitch_42  #00000006
        :pswitch_3d  #00000007
        :pswitch_38  #00000008
        :pswitch_33  #00000009
        :pswitch_2e  #0000000a
    .end packed-switch
.end method

.method public visitVariableAsEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 244
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVariableAsExceptionParameter(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 256
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVariableAsField(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 268
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVariableAsLocalVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVariableAsParameter(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVariableAsResourceVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementKindVisitor6;->visitUnknown(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
