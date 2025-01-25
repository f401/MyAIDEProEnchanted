.class Lcom/sun/tools/javac/file/CacheFSInfo$1;
.super Ljava/lang/Object;
.source "CacheFSInfo.java"

# interfaces
.implements Lcom/sun/tools/javac/util/Context$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/file/CacheFSInfo;->preRegister(Lcom/sun/tools/javac/util/Context;)V
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
        "Lcom/sun/tools/javac/file/FSInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public make(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/file/FSInfo;
    .registers 4

    .line 52
    new-instance v0, Lcom/sun/tools/javac/file/CacheFSInfo;

    invoke-direct {v0}, Lcom/sun/tools/javac/file/CacheFSInfo;-><init>()V

    .line 53
    const-class v1, Lcom/sun/tools/javac/file/FSInfo;

    invoke-virtual {p1, v1, v0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 54
    return-object v0
.end method

.method public bridge synthetic make(Lcom/sun/tools/javac/util/Context;)Ljava/lang/Object;
    .registers 3

    .line 50
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/CacheFSInfo$1;->make(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/file/FSInfo;

    move-result-object v0

    return-object v0
.end method
