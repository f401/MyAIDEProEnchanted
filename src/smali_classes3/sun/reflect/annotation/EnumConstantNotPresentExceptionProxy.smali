.class public Lsun/reflect/annotation/EnumConstantNotPresentExceptionProxy;
.super Lsun/reflect/annotation/ExceptionProxy;
.source "EnumConstantNotPresentExceptionProxy.java"


# instance fields
.field constName:Ljava/lang/String;

.field enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lsun/reflect/annotation/ExceptionProxy;-><init>()V

    .line 41
    iput-object p1, p0, Lsun/reflect/annotation/EnumConstantNotPresentExceptionProxy;->enumType:Ljava/lang/Class;

    .line 42
    iput-object p2, p0, Lsun/reflect/annotation/EnumConstantNotPresentExceptionProxy;->constName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method protected generateException()Ljava/lang/RuntimeException;
    .registers 4

    .line 46
    new-instance v0, Ljava/lang/EnumConstantNotPresentException;

    iget-object v1, p0, Lsun/reflect/annotation/EnumConstantNotPresentExceptionProxy;->enumType:Ljava/lang/Class;

    iget-object v2, p0, Lsun/reflect/annotation/EnumConstantNotPresentExceptionProxy;->constName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/EnumConstantNotPresentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method
