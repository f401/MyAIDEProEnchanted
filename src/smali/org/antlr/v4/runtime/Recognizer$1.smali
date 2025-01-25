.class Lorg/antlr/v4/runtime/Recognizer$1;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Lorg/antlr/v4/runtime/ANTLRErrorListener;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lorg/antlr/v4/runtime/Recognizer;


# direct methods
.method constructor <init>(Lorg/antlr/v4/runtime/Recognizer;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lorg/antlr/v4/runtime/Recognizer$1;->this$0:Lorg/antlr/v4/runtime/Recognizer;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 32
    sget-object p1, Lorg/antlr/v4/runtime/ConsoleErrorListener;->INSTANCE:Lorg/antlr/v4/runtime/ConsoleErrorListener;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/Recognizer$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
