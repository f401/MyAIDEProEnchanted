.class public Lcom/s1243808733/android/dx/command/annotool/Main;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;,
        Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;-><init>()V

    .line 138
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->parse([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    new-instance v1, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;-><init>(Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;)V

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->process()V

    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 140
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "usage"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
