.class Lsun/reflect/ByteVectorFactory;
.super Ljava/lang/Object;
.source "ByteVectorFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create()Lsun/reflect/ByteVector;
    .registers 1

    .line 30
    new-instance v0, Lsun/reflect/ByteVectorImpl;

    invoke-direct {v0}, Lsun/reflect/ByteVectorImpl;-><init>()V

    return-object v0
.end method

.method static create(I)Lsun/reflect/ByteVector;
    .registers 2

    .line 34
    new-instance v0, Lsun/reflect/ByteVectorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/ByteVectorImpl;-><init>(I)V

    return-object v0
.end method
