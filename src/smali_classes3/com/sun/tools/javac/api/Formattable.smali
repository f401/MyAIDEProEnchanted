.class public interface abstract Lcom/sun/tools/javac/api/Formattable;
.super Ljava/lang/Object;
.source "Formattable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/api/Formattable$LocalizedString;
    }
.end annotation


# virtual methods
.method public abstract getKind()Ljava/lang/String;
.end method

.method public abstract toString(Ljava/util/Locale;Lcom/sun/tools/javac/api/Messages;)Ljava/lang/String;
.end method
