.class Lsun/reflect/annotation/AnnotationInvocationHandler$1;
.super Ljava/lang/Object;
.source "AnnotationInvocationHandler.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/reflect/annotation/AnnotationInvocationHandler;->getMemberMethods()[Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<[",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lsun/reflect/annotation/AnnotationInvocationHandler;


# direct methods
.method constructor <init>(Lsun/reflect/annotation/AnnotationInvocationHandler;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lsun/reflect/annotation/AnnotationInvocationHandler$1;->this$0:Lsun/reflect/annotation/AnnotationInvocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .line 276
    invoke-virtual {p0}, Lsun/reflect/annotation/AnnotationInvocationHandler$1;->run()[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public run()[Ljava/lang/reflect/Method;
    .registers 3

    .line 278
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationInvocationHandler$1;->this$0:Lsun/reflect/annotation/AnnotationInvocationHandler;

    invoke-static {v0}, Lsun/reflect/annotation/AnnotationInvocationHandler;->access$000(Lsun/reflect/annotation/AnnotationInvocationHandler;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 279
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 280
    return-object v0
.end method
