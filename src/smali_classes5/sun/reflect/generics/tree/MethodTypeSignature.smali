.class public Lsun/reflect/generics/tree/MethodTypeSignature;
.super Ljava/lang/Object;
.source "MethodTypeSignature.java"

# interfaces
.implements Lsun/reflect/generics/tree/Signature;


# instance fields
.field private exceptionTypes:[Lsun/reflect/generics/tree/FieldTypeSignature;

.field private formalTypeParams:[Lsun/reflect/generics/tree/FormalTypeParameter;

.field private parameterTypes:[Lsun/reflect/generics/tree/TypeSignature;

.field private returnType:Lsun/reflect/generics/tree/ReturnType;


# direct methods
.method private constructor <init>([Lsun/reflect/generics/tree/FormalTypeParameter;[Lsun/reflect/generics/tree/TypeSignature;Lsun/reflect/generics/tree/ReturnType;[Lsun/reflect/generics/tree/FieldTypeSignature;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lsun/reflect/generics/tree/MethodTypeSignature;->formalTypeParams:[Lsun/reflect/generics/tree/FormalTypeParameter;

    .line 41
    iput-object p2, p0, Lsun/reflect/generics/tree/MethodTypeSignature;->parameterTypes:[Lsun/reflect/generics/tree/TypeSignature;

    .line 42
    iput-object p3, p0, Lsun/reflect/generics/tree/MethodTypeSignature;->returnType:Lsun/reflect/generics/tree/ReturnType;

    .line 43
    iput-object p4, p0, Lsun/reflect/generics/tree/MethodTypeSignature;->exceptionTypes:[Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 44
    return-void
.end method

.method public static make([Lsun/reflect/generics/tree/FormalTypeParameter;[Lsun/reflect/generics/tree/TypeSignature;Lsun/reflect/generics/tree/ReturnType;[Lsun/reflect/generics/tree/FieldTypeSignature;)Lsun/reflect/generics/tree/MethodTypeSignature;
    .registers 5

    .line 50
    new-instance v0, Lsun/reflect/generics/tree/MethodTypeSignature;

    invoke-direct {v0, p0, p1, p2, p3}, Lsun/reflect/generics/tree/MethodTypeSignature;-><init>([Lsun/reflect/generics/tree/FormalTypeParameter;[Lsun/reflect/generics/tree/TypeSignature;Lsun/reflect/generics/tree/ReturnType;[Lsun/reflect/generics/tree/FieldTypeSignature;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lsun/reflect/generics/visitor/Visitor;)V
    .registers 2

    .line 60
    invoke-interface {p1, p0}, Lsun/reflect/generics/visitor/Visitor;->visitMethodTypeSignature(Lsun/reflect/generics/tree/MethodTypeSignature;)V

    return-void
.end method

.method public getExceptionTypes()[Lsun/reflect/generics/tree/FieldTypeSignature;
    .registers 2

    .line 58
    iget-object v0, p0, Lsun/reflect/generics/tree/MethodTypeSignature;->exceptionTypes:[Lsun/reflect/generics/tree/FieldTypeSignature;

    return-object v0
.end method

.method public getFormalTypeParameters()[Lsun/reflect/generics/tree/FormalTypeParameter;
    .registers 2

    .line 54
    iget-object v0, p0, Lsun/reflect/generics/tree/MethodTypeSignature;->formalTypeParams:[Lsun/reflect/generics/tree/FormalTypeParameter;

    return-object v0
.end method

.method public getParameterTypes()[Lsun/reflect/generics/tree/TypeSignature;
    .registers 2

    .line 56
    iget-object v0, p0, Lsun/reflect/generics/tree/MethodTypeSignature;->parameterTypes:[Lsun/reflect/generics/tree/TypeSignature;

    return-object v0
.end method

.method public getReturnType()Lsun/reflect/generics/tree/ReturnType;
    .registers 2

    .line 57
    iget-object v0, p0, Lsun/reflect/generics/tree/MethodTypeSignature;->returnType:Lsun/reflect/generics/tree/ReturnType;

    return-object v0
.end method
