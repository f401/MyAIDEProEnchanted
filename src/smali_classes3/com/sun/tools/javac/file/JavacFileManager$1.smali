.class Lcom/sun/tools/javac/file/JavacFileManager$1;
.super Ljava/lang/Object;
.source "JavacFileManager.java"

# interfaces
.implements Lcom/sun/tools/javac/util/Context$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/file/JavacFileManager;->preRegister(Lcom/sun/tools/javac/util/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/tools/javac/util/Context$Factory",
        "<",
        "Ljavax/tools/JavaFileManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic make(Lcom/sun/tools/javac/util/Context;)Ljava/lang/Object;
    .registers 3

    .line 143
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/JavacFileManager$1;->make(Lcom/sun/tools/javac/util/Context;)Ljavax/tools/JavaFileManager;

    move-result-object v0

    return-object v0
.end method

.method public make(Lcom/sun/tools/javac/util/Context;)Ljavax/tools/JavaFileManager;
    .registers 5

    .line 145
    new-instance v0, Lcom/sun/tools/javac/file/JavacFileManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/sun/tools/javac/file/JavacFileManager;-><init>(Lcom/sun/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V

    return-object v0
.end method
