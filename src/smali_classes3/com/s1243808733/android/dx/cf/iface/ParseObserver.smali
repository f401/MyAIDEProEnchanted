.class public interface Lcom/s1243808733/android/dx/cf/iface/ParseObserver;
.super Ljava/lang/Object;
.source "ParseObserver.java"


# virtual methods
.method public abstract changeIndent(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation
.end method

.method public abstract endParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/s1243808733/android/dx/cf/iface/Member;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/ByteArray;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/s1243808733/android/dx/cf/iface/Member;",
            ")V"
        }
    .end annotation
.end method

.method public abstract parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/ByteArray;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/ByteArray;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
