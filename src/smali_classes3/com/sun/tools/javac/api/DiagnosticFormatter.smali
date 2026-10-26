.class public interface abstract Lcom/sun/tools/javac/api/DiagnosticFormatter;
.super Ljava/lang/Object;
.source "DiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;,
        Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;,
        Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;,
        Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljavax/tools/Diagnostic",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract displaySource(Ljavax/tools/Diagnostic;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation
.end method

.method public abstract format(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract formatKind(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract formatMessage(Ljavax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract formatPosition(Ljavax/tools/Diagnostic;Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/sun/tools/javac/api/DiagnosticFormatter$PositionKind;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract formatSource(Ljavax/tools/Diagnostic;ZLjava/util/Locale;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getConfiguration()Lcom/sun/tools/javac/api/DiagnosticFormatter$Configuration;
.end method
