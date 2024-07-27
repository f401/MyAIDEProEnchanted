.class public Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;
.super Ljavax/lang/model/util/AbstractAnnotationValueVisitor6;
.source "SimpleAnnotationValueVisitor6.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/lang/model/util/AbstractAnnotationValueVisitor6",
        "<TR;TP;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;
.end annotation


# instance fields
.field protected final DEFAULT_VALUE:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 92
    invoke-direct {p0}, Ljavax/lang/model/util/AbstractAnnotationValueVisitor6;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 94
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljavax/lang/model/util/AbstractAnnotationValueVisitor6;-><init>()V

    .line 104
    iput-object p1, p0, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method protected defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TP;)TR;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->DEFAULT_VALUE:Ljava/lang/Object;

    return-object v0
.end method

.method public visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "TP;)TR;"
        }
    .end annotation

    .line 249
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;TP;)TR;"
        }
    .end annotation

    .line 260
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitBoolean(ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTP;)TR;"
        }
    .end annotation

    .line 128
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitByte(BLjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BTP;)TR;"
        }
    .end annotation

    .line 139
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitChar(CLjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CTP;)TR;"
        }
    .end annotation

    .line 150
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDouble(DLjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTP;)TR;"
        }
    .end annotation

    .line 161
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 238
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitFloat(FLjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTP;)TR;"
        }
    .end annotation

    .line 172
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitInt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;)TR;"
        }
    .end annotation

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitLong(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTP;)TR;"
        }
    .end annotation

    .line 194
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitShort(SLjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(STP;)TR;"
        }
    .end annotation

    .line 205
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TP;)TR;"
        }
    .end annotation

    .line 216
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "TP;)TR;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;->defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
