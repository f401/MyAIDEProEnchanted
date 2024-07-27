.class abstract Lsun/reflect/UnsafeQualifiedStaticFieldAccessorImpl;
.super Lsun/reflect/UnsafeStaticFieldAccessorImpl;
.source "UnsafeQualifiedStaticFieldAccessorImpl.java"


# instance fields
.field protected final isReadOnly:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Z)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lsun/reflect/UnsafeStaticFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    .line 43
    iput-boolean p2, p0, Lsun/reflect/UnsafeQualifiedStaticFieldAccessorImpl;->isReadOnly:Z

    .line 44
    return-void
.end method
