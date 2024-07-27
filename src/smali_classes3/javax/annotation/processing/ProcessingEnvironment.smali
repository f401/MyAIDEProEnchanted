.class public interface abstract Ljavax/annotation/processing/ProcessingEnvironment;
.super Ljava/lang/Object;
.source "ProcessingEnvironment.java"


# virtual methods
.method public abstract getElementUtils()Ljavax/lang/model/util/Elements;
.end method

.method public abstract getFiler()Ljavax/annotation/processing/Filer;
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getMessager()Ljavax/annotation/processing/Messager;
.end method

.method public abstract getOptions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSourceVersion()Ljavax/lang/model/SourceVersion;
.end method

.method public abstract getTypeUtils()Ljavax/lang/model/util/Types;
.end method
