.class public interface abstract Ljavax/lang/model/util/Elements;
.super Ljava/lang/Object;
.source "Elements.java"


# virtual methods
.method public abstract getAllAnnotationMirrors(Ljavax/lang/model/element/Element;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/List",
            "<+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/List",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBinaryName(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/Name;
.end method

.method public abstract getConstantExpression(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getDocComment(Ljavax/lang/model/element/Element;)Ljava/lang/String;
.end method

.method public abstract getElementValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/Map",
            "<+",
            "Ljavax/lang/model/element/ExecutableElement;",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName(Ljava/lang/CharSequence;)Ljavax/lang/model/element/Name;
.end method

.method public abstract getPackageElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/PackageElement;
.end method

.method public abstract getPackageOf(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;
.end method

.method public abstract getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;
.end method

.method public abstract hides(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;)Z
.end method

.method public abstract isDeprecated(Ljavax/lang/model/element/Element;)Z
.end method

.method public abstract overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z
.end method

.method public varargs abstract printElements(Ljava/io/Writer;[Ljavax/lang/model/element/Element;)V
.end method
