.class Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;
.super Ljava/lang/ref/WeakReference;
.source "UnsharedNameTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/UnsharedNameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;",
        ">;"
    }
.end annotation


# instance fields
.field next:Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
