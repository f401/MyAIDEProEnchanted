.class public Lorg/antlr/v4/runtime/ConsoleErrorListener;
.super Lorg/antlr/v4/runtime/BaseErrorListener;
.source "ConsoleErrorListener.java"


# static fields
.field public static final INSTANCE:Lorg/antlr/v4/runtime/ConsoleErrorListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lorg/antlr/v4/runtime/ConsoleErrorListener;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/ConsoleErrorListener;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/ConsoleErrorListener;->INSTANCE:Lorg/antlr/v4/runtime/ConsoleErrorListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lorg/antlr/v4/runtime/BaseErrorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public syntaxError(Lorg/antlr/v4/runtime/Recognizer;Ljava/lang/Object;IILjava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/RecognitionException;",
            ")V"
        }
    .end annotation

    .line 38
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p6, "line "

    invoke-direct {p2, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
