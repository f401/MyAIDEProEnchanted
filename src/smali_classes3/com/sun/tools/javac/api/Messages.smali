.class public interface abstract Lcom/sun/tools/javac/api/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# virtual methods
.method public abstract add(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation
.end method

.method public varargs abstract getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.end method
