.class public Lsun/reflect/annotation/TypeNotPresentExceptionProxy;
.super Lsun/reflect/annotation/ExceptionProxy;
.source "TypeNotPresentExceptionProxy.java"


# instance fields
.field cause:Ljava/lang/Throwable;

.field typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Lsun/reflect/annotation/ExceptionProxy;-><init>()V

    .line 40
    iput-object p1, p0, Lsun/reflect/annotation/TypeNotPresentExceptionProxy;->typeName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lsun/reflect/annotation/TypeNotPresentExceptionProxy;->cause:Ljava/lang/Throwable;

    .line 42
    return-void
.end method


# virtual methods
.method protected generateException()Ljava/lang/RuntimeException;
    .registers 4

    .line 45
    new-instance v0, Ljava/lang/TypeNotPresentException;

    iget-object v1, p0, Lsun/reflect/annotation/TypeNotPresentExceptionProxy;->typeName:Ljava/lang/String;

    iget-object v2, p0, Lsun/reflect/annotation/TypeNotPresentExceptionProxy;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
