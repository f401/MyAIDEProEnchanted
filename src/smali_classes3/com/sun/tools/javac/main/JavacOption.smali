.class public interface abstract Lcom/sun/tools/javac/main/JavacOption;
.super Ljava/lang/Object;
.source "JavacOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;,
        Lcom/sun/tools/javac/main/JavacOption$HiddenOption;,
        Lcom/sun/tools/javac/main/JavacOption$Option;,
        Lcom/sun/tools/javac/main/JavacOption$OptionKind;,
        Lcom/sun/tools/javac/main/JavacOption$XOption;
    }
.end annotation


# virtual methods
.method public abstract getKind()Lcom/sun/tools/javac/main/JavacOption$OptionKind;
.end method

.method public abstract getName()Lcom/sun/tools/javac/main/OptionName;
.end method

.method public abstract hasArg()Z
.end method

.method public abstract matches(Ljava/lang/String;)Z
.end method

.method public abstract process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z
.end method

.method public abstract process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z
.end method
