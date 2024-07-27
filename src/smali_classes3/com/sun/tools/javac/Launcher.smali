.class Lcom/sun/tools/javac/Launcher;
.super Ljava/lang/Object;
.source "Launcher.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .registers 1

    .line 53
    invoke-static {}, Ljavax/tools/ToolProvider;->getSystemJavaCompiler()Ljavax/tools/JavaCompiler;

    .line 71
    return-void
.end method
