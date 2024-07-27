.class final Lcom/termux/terminal/JNI;
.super Ljava/lang/Object;
.source "JNI.java"


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    .line 9
    const-string v0, "termux"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native close(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation
.end method

.method public static native createSubprocess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[III)I
.end method

.method public static native setPtyWindowSize(III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation
.end method

.method public static native waitFor(I)I
.end method
