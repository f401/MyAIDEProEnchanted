.class abstract Lsun/reflect/UnsafeQualifiedFieldAccessorImpl;
.super Lsun/reflect/UnsafeFieldAccessorImpl;
.source "UnsafeQualifiedFieldAccessorImpl.java"


# instance fields
.field protected final isReadOnly:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Z)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Lsun/reflect/UnsafeFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    .line 50
    iput-boolean p2, p0, Lsun/reflect/UnsafeQualifiedFieldAccessorImpl;->isReadOnly:Z

    .line 51
    return-void
.end method
