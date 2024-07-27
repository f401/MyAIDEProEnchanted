.class Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;
.super Lsun/reflect/annotation/ExceptionProxy;
.source "AnnotationTypeMismatchExceptionProxy.java"


# instance fields
.field private foundType:Ljava/lang/String;

.field private member:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Lsun/reflect/annotation/ExceptionProxy;-><init>()V

    .line 47
    iput-object p1, p0, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;->foundType:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected generateException()Ljava/lang/RuntimeException;
    .registers 4

    .line 56
    new-instance v0, Ljava/lang/annotation/AnnotationTypeMismatchException;

    iget-object v1, p0, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;->member:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;->foundType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/AnnotationTypeMismatchException;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method setMember(Ljava/lang/reflect/Method;)Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;
    .registers 2

    .line 51
    iput-object p1, p0, Lsun/reflect/annotation/AnnotationTypeMismatchExceptionProxy;->member:Ljava/lang/reflect/Method;

    .line 52
    return-object p0
.end method
