.class public Ljavax/lang/model/util/TypeKindVisitor6;
.super Ljavax/lang/model/util/SimpleTypeVisitor6;
.source "TypeKindVisitor6.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/lang/model/util/SimpleTypeVisitor6",
        "<TR;TP;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/lang/model/util/SimpleTypeVisitor6;-><init>(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Ljavax/lang/model/util/SimpleTypeVisitor6;-><init>(Ljava/lang/Object;)V

    .line 100
    return-void
.end method


# virtual methods
.method public visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/NoType;",
            "TP;)TR;"
        }
    .end annotation

    .line 251
    invoke-interface {p1}, Ljavax/lang/model/type/NoType;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    .line 252
    sget-object v1, Ljavax/lang/model/util/TypeKindVisitor6$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3e

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for NoType"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 260
    :pswitch_2e  #0xb
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->visitNoTypeAsNone(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_32
    return-object v0

    .line 257
    :pswitch_33  #0xa
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->visitNoTypeAsPackage(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 254
    :pswitch_38  #0x9
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->visitNoTypeAsVoid(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 252
    nop

    :pswitch_data_3e
    .packed-switch 0x9
        :pswitch_38  #00000009
        :pswitch_33  #0000000a
        :pswitch_2e  #0000000b
    .end packed-switch
.end method

.method public visitNoTypeAsNone(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/NoType;",
            "TP;)TR;"
        }
    .end annotation

    .line 300
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNoTypeAsPackage(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/NoType;",
            "TP;)TR;"
        }
    .end annotation

    .line 288
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNoTypeAsVoid(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/NoType;",
            "TP;)TR;"
        }
    .end annotation

    .line 276
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 113
    invoke-interface {p1}, Ljavax/lang/model/type/PrimitiveType;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    .line 114
    sget-object v1, Ljavax/lang/model/util/TypeKindVisitor6$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for PrimitiveType"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 137
    :pswitch_2e  #0x8
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsDouble(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_32
    return-object v0

    .line 134
    :pswitch_33  #0x7
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsFloat(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 131
    :pswitch_38  #0x6
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsChar(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 128
    :pswitch_3d  #0x5
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsLong(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 125
    :pswitch_42  #0x4
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsInt(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 122
    :pswitch_47  #0x3
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsShort(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 119
    :pswitch_4c  #0x2
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsByte(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 116
    :pswitch_51  #0x1
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->visitPrimitiveAsBoolean(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_32

    .line 114
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_51  #00000001
        :pswitch_4c  #00000002
        :pswitch_47  #00000003
        :pswitch_42  #00000004
        :pswitch_3d  #00000005
        :pswitch_38  #00000006
        :pswitch_33  #00000007
        :pswitch_2e  #00000008
    .end packed-switch
.end method

.method public visitPrimitiveAsBoolean(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitiveAsByte(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitiveAsChar(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitiveAsDouble(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 237
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitiveAsFloat(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 225
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitiveAsInt(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitiveAsLong(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 201
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitiveAsShort(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/TypeKindVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
